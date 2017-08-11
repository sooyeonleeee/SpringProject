package commit.ss.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import commit.ss.dao.UserDAO;
import commit.ss.googleapi.GpxApi;
import commit.ss.googleapi.MakeResult;
import commit.ss.vo.FlightVO;
import commit.ss.vo.ResultVO;
import commit.ss.vo.SearchVO;

@Controller
public class SearchController {

	@Autowired
	UserDAO dao;

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView getFlightList(@ModelAttribute SearchVO svo, ModelAndView mv, HttpSession session) {
		String id = (String) session.getAttribute("id");
		// 검색 기록에 추가

		// if (id!=null) {
		// dao.addHistory(id, svo);
		// }

		GpxApi ga = new GpxApi();
		MakeResult gr = new MakeResult();
		List<ResultVO> reList = new ArrayList<ResultVO>();

		boolean result = false;

		// ga.getTickets(출발지, 도착지, 출발일, 성인 수, 아동 수)
		// 편도일 때.
		if (svo.getIsOneWay().equals("0")) {
			// 편도 가는거 : 출발, 도착, 출발일, 성인 수, 아동 수.
			if (ga.getTickets(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getAdultCount(),
					svo.getChildCount()).isEmpty() == false) {
				List<FlightVO> oneWay = ga.getTickets(svo.getDeparture(), svo.getArrival(), svo.getDepDate(),
						svo.getAdultCount(), svo.getChildCount());

				reList = gr.getResult(svo, oneWay);
				System.out.println("값있어요");
				mv.addObject("reList", reList);
				result = false;
			} else {
				System.out.println("값없어요");
				result = true;
			}
		}
		// 편도가 아닐 때.
		else {
			// 가는거 : 출발, 도착, 출발일, 성인 수, 아동 수.
			System.out.println(ga.getTickets(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getAdultCount(),
					svo.getChildCount()).toString());
			if (ga.getTickets(svo.getDeparture(), svo.getArrival(), svo.getDepDate(), svo.getAdultCount(),
					svo.getChildCount()).isEmpty() == false) {

				System.out.println("갑있어요");
				List<FlightVO> go = ga.getTickets(svo.getDeparture(), svo.getArrival(), svo.getDepDate(),
						svo.getAdultCount(), svo.getChildCount());
				// 오는거 : 도착, 출발, 귀국일, 성인 수, 아동 수.
				List<FlightVO> back = ga.getTickets(svo.getArrival(), svo.getDeparture(), svo.getArrDate(),
						svo.getAdultCount(), svo.getChildCount());
				reList = gr.getResult(svo, go, back);
				result = false;
				mv.addObject("reList", reList);
			} else {
				System.out.println("값 없어요 ");
				result = true;
			}
		}

		session.setAttribute("dep", svo.getDeparture());
		session.setAttribute("arr", svo.getArrival());
		mv.setViewName("search");
		mv.addObject("tf", result);
		return mv;
	}

	@RequestMapping(value = "/getRvoLi", method = RequestMethod.POST)
	@ResponseBody
	public void getRvoList(@RequestBody String myArray) {
		System.out.println("getRvoLi Controller!!!!!!!");
		System.out.println(myArray);
	}
}
