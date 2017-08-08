package commit.ss.googleapi;

import java.util.ArrayList;
import java.util.List;

import commit.ss.vo.FlightVO;
import commit.ss.vo.ResultVO;
import commit.ss.vo.SearchVO;

public class MakeResult {

	// 편도일 때 ResultVO 구하깅.
	public List<ResultVO> getResult(SearchVO svo, List<FlightVO> oneWay){
		List<ResultVO> reList = new ArrayList<ResultVO>();
		
		ResultVO rvo;
		
		for(FlightVO fvo : oneWay) {
			
			rvo = new ResultVO(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getArrDate(),
										fvo.getFlightCarrier(), fvo.getDuration(), fvo.getDepTime(), fvo.getArrTime(), fvo.getPrice());
			reList.add(rvo);
		}
		
		return reList;
	}
	
	// 왕복일 때 ResultVO 구하깅.
	public List<ResultVO> getResult(SearchVO svo, List<FlightVO> go, List<FlightVO> back){
		List<ResultVO> reList = new ArrayList<ResultVO>();
		
		ResultVO r = new ResultVO();
		for(FlightVO g : go) {
			for(FlightVO b : back) {
				if(svo.getDepDate().equals(svo.getArrDate())) {
				
					if(dateCompare(g.getArrTime(), b.getDepTime())) {
						r = new ResultVO(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getArrDate(),
								g.getFlightCarrier(), g.getDuration(), g.getDepTime(), g.getArrTime(), g.getPrice(),
								b.getFlightCarrier(), b.getDuration(), b.getDepTime(), b.getArrTime(), b.getPrice());
					}else continue;

				}else {
					r = new ResultVO(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getArrDate(),
							g.getFlightCarrier(), g.getDuration(), g.getDepTime(), g.getArrTime(), g.getPrice(),
							b.getFlightCarrier(), b.getDuration(), b.getDepTime(), b.getArrTime(), b.getPrice());
				}
				reList.add(r);
				r = new ResultVO();
			}
		}
		return reList;
	}
	
	// 같은 날 일때는 출발 도착 시간 < 귀국 출발 시간
	public boolean dateCompare(String goT, String backT) {
		String[] g = goT.split(":");
		String[] b = backT.split(":");

		return (Integer.parseInt(g[0]) < Integer.parseInt(b[0]));
	}
}
