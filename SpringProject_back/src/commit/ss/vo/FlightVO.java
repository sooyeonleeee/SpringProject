package commit.ss.vo;

import java.util.List;

public class FlightVO {
	// �����, ������, �����, �պ�/��, �ż�->SearchVO
	// ���, �װ����, �����, ��߽ð�, ������, �����ð�, Ư�����Ӱ� �ܿ��¼�, ������Ӱ� �ܿ��¼�

	private SearchVO search; // searchVO
	private String flightName; // ���
	private String airplaneName; // �װ����
	private String depDate; // �����
	private String depTime; // ��߽ð�
	private String arrDate; // ������
	private String arrTime; // �����ð�
	private List<RatesAndSeats> specialRates; // Ư�����Ӱ� �ܿ��¼�
	private List<RatesAndSeats> normalRates; // ������Ӱ� �ܿ��¼�

	public FlightVO() {

	}

	public FlightVO(SearchVO search, String flightName, String airplaneName, String depDate, String depTime,
			String arrDate, String arrTime, List<RatesAndSeats> specialRates, List<RatesAndSeats> normalRates) {
		super();
		this.search = search;
		this.flightName = flightName;
		this.airplaneName = airplaneName;
		this.depDate = depDate;
		this.depTime = depTime;
		this.arrDate = arrDate;
		this.arrTime = arrTime;
		this.specialRates = specialRates;
		this.normalRates = normalRates;
	}

	public SearchVO getSearch() {
		return search;
	}

	public void setSearch(SearchVO search) {
		this.search = search;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getAirplaneName() {
		return airplaneName;
	}

	public void setAirplaneName(String airplaneName) {
		this.airplaneName = airplaneName;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public String getDepTime() {
		return depTime;
	}

	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}

	public String getArrDate() {
		return arrDate;
	}

	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}

	public String getArrTime() {
		return arrTime;
	}

	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}

	public List<RatesAndSeats> getSpecialRates() {
		return specialRates;
	}

	public void setSpecialRates(List<RatesAndSeats> specialRates) {
		this.specialRates = specialRates;
	}

	public List<RatesAndSeats> getNormalRates() {
		return normalRates;
	}

	public void setNormalRates(List<RatesAndSeats> normalRates) {
		this.normalRates = normalRates;
	}

	@Override
	public String toString() {
		return "FlightVO [search=" + search + ", flightName=" + flightName + ", airplaneName=" + airplaneName
				+ ", depDate=" + depDate + ", depTime=" + depTime + ", arrDate=" + arrDate + ", arrTime=" + arrTime
				+ ", specialRates=" + specialRates + ", normalRates=" + normalRates + "]";
	}

}

class RatesAndSeats {
	private int rates;
	private int seats;

	public RatesAndSeats() {

	}

	public RatesAndSeats(int rates, int seats) {
		super();
		this.rates = rates;
		this.seats = seats;
	}

	public int getRates() {
		return rates;
	}

	public void setRates(int rates) {
		this.rates = rates;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	@Override
	public String toString() {
		return "RatesAndSeats [rates=" + rates + ", seats=" + seats + "]";
	}

}
