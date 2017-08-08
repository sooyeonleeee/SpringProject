package commit.ss.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import commit.ss.googleapi.GpxApi;
import commit.ss.googleapi.MakeResult;
import commit.ss.vo.FlightVO;
import commit.ss.vo.ResultVO;
import commit.ss.vo.SearchVO;

@Controller
public class SearchController {


	@RequestMapping(value="/search", method=RequestMethod.POST)
	public ModelAndView getFlightList(@ModelAttribute SearchVO svo) {
		
		GpxApi ga = new GpxApi();
		MakeResult gr = new MakeResult();
		List<ResultVO> reList = new ArrayList<ResultVO>();
		
		// ga.getTickets(출발지, 도착지, 출발일, 성인 수, 아동 수)
		// 편도일 때.
		if(svo.getIsOneWay().equals("편도")) {
			// 편도 가는거 : 출발, 도착, 출발일, 성인 수, 아동 수. 
			List<FlightVO> oneWay = ga.getTickets(svo.getDeparture(),
																			svo.getArrival(),
																			svo.getDepDate(),
																			svo.getAdultCount(),
																			svo.getChildCount());
			reList = gr.getResult(svo, oneWay);
		}
		//편도가 아닐 때.
		else {
			// 가는거 : 출발, 도착, 출발일, 성인 수, 아동 수. 
			List<FlightVO> go = ga.getTickets(svo.getDeparture(),
															svo.getArrival(),
															svo.getDepDate(),
															svo.getAdultCount(),
															svo.getChildCount());
			// 오는거 : 도착, 출발, 귀국일, 성인 수, 아동 수.
			List<FlightVO> back = ga.getTickets(svo.getArrival(),
																svo.getDeparture(),
																svo.getArrDate(),
																svo.getAdultCount(),
																svo.getChildCount());
			
			reList = gr.getResult(svo, go, back);
		}
		return new ModelAndView("search", "reList", reList);
	}

}
