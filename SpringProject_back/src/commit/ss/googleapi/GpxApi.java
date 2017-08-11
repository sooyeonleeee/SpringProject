package commit.ss.googleapi;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.qpxExpress.QPXExpress;
import com.google.api.services.qpxExpress.QPXExpressRequestInitializer;
import com.google.api.services.qpxExpress.model.FlightInfo;
import com.google.api.services.qpxExpress.model.LegInfo;
import com.google.api.services.qpxExpress.model.PassengerCounts;
import com.google.api.services.qpxExpress.model.PricingInfo;
import com.google.api.services.qpxExpress.model.SegmentInfo;
import com.google.api.services.qpxExpress.model.SliceInfo;
import com.google.api.services.qpxExpress.model.SliceInput;
import com.google.api.services.qpxExpress.model.TripOption;
import com.google.api.services.qpxExpress.model.TripOptionsRequest;
import com.google.api.services.qpxExpress.model.TripsSearchRequest;
import com.google.api.services.qpxExpress.model.TripsSearchResponse;

import commit.ss.vo.FlightVO;

public class GpxApi {

	private static final String APPLICATION_NAME = "GetTiketsApplication";
	private static final String API_KEY = "AIzaSyCvZBgc3KtAN6RUJotFbttOVkpgvCXMzSk";
	private static HttpTransport httpTransport;
	private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

	public List<FlightVO> getTickets(String origin, String Destination, String date, int adultCount, int childCount) {

		// 항공사, 걸리는 시간, 출발 시간, 도착 시간, 가격. VO LIST.
		List<FlightVO> fList = new ArrayList<FlightVO>();

		try {
			httpTransport = GoogleNetHttpTransport.newTrustedTransport();

			PassengerCounts passengers = new PassengerCounts();

			if (adultCount > 0)
				passengers.setAdultCount(adultCount);
			if (childCount > 0)
				passengers.setAdultCount(childCount);

			List<SliceInput> slices = new ArrayList<SliceInput>();

			SliceInput slice = new SliceInput();
			slice.setOrigin(origin);
			slice.setDestination(Destination);
			slice.setDate(date);
			slice.setMaxStops(0);
			slices.add(slice);

			TripOptionsRequest request = new TripOptionsRequest();
			request.setSolutions(8);
			request.setPassengers(passengers);
			request.setSlice(slices);

			TripsSearchRequest parameters = new TripsSearchRequest();
			parameters.setRequest(request);
			QPXExpress qpXExpress = new QPXExpress.Builder(httpTransport, JSON_FACTORY, null)
					.setApplicationName(APPLICATION_NAME)
					.setGoogleClientRequestInitializer(new QPXExpressRequestInitializer(API_KEY)).build();

			TripsSearchResponse list = qpXExpress.trips().search(parameters).execute();
			List<TripOption> tripResults = list.getTrips().getTripOption();
			//if 시작
			if (tripResults.isEmpty()==true) {
				fList = null;
			} else {
				FlightVO fvo = new FlightVO();
				for (int i = 0; i < tripResults.size(); i++) {
					// Slice
					List<SliceInfo> sliceInfo = tripResults.get(i).getSlice();

					for (int j = 0; j < sliceInfo.size(); j++) {
						List<SegmentInfo> segInfo = sliceInfo.get(j).getSegment();
						for (int k = 0; k < segInfo.size(); k++) {
							FlightInfo flightInfo = segInfo.get(k).getFlight();
							String flightCarrier = flightInfo.getCarrier();
							fvo.setFlightCarrier(flightCarrier);

							List<LegInfo> leg = segInfo.get(k).getLeg();

							for (int l = 0; l < leg.size(); l++) {
								String arrivalTime = leg.get(l).getArrivalTime();
								fvo.setArrTime(splitTime(arrivalTime));
								String departTime = leg.get(l).getDepartureTime();
								fvo.setDepTime(splitTime(departTime));
								int durationLeg = leg.get(l).getDuration();
								fvo.setDuration(durationLeg);
							}
						}
					}

					// Pricing
					List<PricingInfo> priceInfo = tripResults.get(i).getPricing();
					for (int p = 0; p < priceInfo.size(); p++) {
						String price = priceInfo.get(p).getSaleTotal();
						int intPrice = Integer.parseInt(price.substring(3));
						fvo.setPrice(intPrice);
					}

					fList.add(fvo);
					fvo = new FlightVO();
				}
			}//if 끝
			return fList;
		} catch (IOException e) {
			System.err.println(e.getMessage());
		} catch (Throwable t) {
			t.printStackTrace();
		}

		return null;
	}

	public String splitTime(String time) {
		return time.substring(11, 16);
	}
}
