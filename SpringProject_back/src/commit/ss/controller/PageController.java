package commit.ss.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.json.Json;
import com.google.gson.JsonObject;

import commit.ss.dao.UserDAO;
import commit.ss.vo.ResultVO;
import commit.ss.vo.SearchVO;
import commit.ss.vo.UserVO;

@Controller
public class PageController {

	@Autowired
	UserDAO dao;

	HashMap<String, Boolean> result = new HashMap<String, Boolean>();

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> home1(UserVO user, HttpServletRequest request, HttpSession session) {

		boolean login = dao.signIn(user);
		if (login == true) {
			result.put("result", login);

			session.setAttribute("id", user.getId());

		} else
			result.put("result", login);
		return result;
	}

	// 로그아웃, 메인

	@RequestMapping(value = "/logout.do", method = RequestMethod.POST)
	@ResponseBody
	public String logout( HttpSession session) {
		session.removeAttribute("id");
		
		return "success";

	}

	// 중복체크
	@RequestMapping(value = "/duplicate.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> duplicate(@RequestParam("id") String id) {
		boolean id_result = dao.signDuplicate_id(id);

		result.put("result", id_result);
		return result;
	}

	// 회원가입
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(UserVO user) {
		boolean id_result = dao.signUp(user);

		if (id_result == true) {
			return "index";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> changePwd(@RequestParam("newPwd") String newPwd,
			@RequestParam("nowPwd") String nowPwd, @RequestParam("id") String id) {
		result = new HashMap<String, Boolean>();
		result.put("result", dao.changePwd(id, nowPwd, newPwd));
		return result;
	}

	// 상세 페이지
	@RequestMapping("/listinfo")
	public String listinfo(HttpSession session) {
		System.out.println(session.getAttribute("id"));
		session.removeAttribute("id");
		return "listinfo";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	// 마이페이지
	@RequestMapping("/mypage")
	public ModelAndView gotoMyPage(ModelAndView mv) {
		mv.setViewName("customer");
		return mv;
	}

	// 즐겨찾기 리스트
	@RequestMapping("/bookmark")
	public ModelAndView gotoBookMark(@RequestParam String id) {
		/*
		 * List<ResultVO> list = new ArrayList<>();
		 * 
		 * list.add(new ResultVO("origin1", "destination1", "depDate1",
		 * "arrDate1", "goFlightCarrier1", 10, "goDepTime1", "goArrTime1",
		 * 100000)); list.add(new ResultVO("origin2", "destination2",
		 * "depDate2", "arrDate2", "goFlightCarrier2", 20, "goDepTime2",
		 * "goArrTime2", 200000)); list.add(new ResultVO("origin3",
		 * "destination3", "depDate3", "arrDate3", "goFlightCarrier3", 30,
		 * "goDepTime3", "goArrTime3", 300000)); list.add(new
		 * ResultVO("origin4", "destination4", "depDate4", "arrDate4",
		 * "goFlightCarrier4", 40, "goDepTime4", "goArrTime4", 400000));
		 * list.add(new ResultVO("origin5", "destination5", "depDate5",
		 * "arrDate5", "goFlightCarrier5", 50, "goDepTime5", "goArrTime5",
		 * 500000)); list.add(new ResultVO("origin6", "destination6",
		 * "depDate6", "arrDate6", "goFlightCarrier6", 60, "goDepTime6",
		 * "goArrTime6", 600000)); list.add(new ResultVO("origin7",
		 * "destination7", "depDate7", "arrDate7", "goFlightCarrier7", 70,
		 * "goDepTime7", "goArrTime7", 700000)); list.add(new
		 * ResultVO("origin8", "destination8", "depDate8", "arrDate8",
		 * "goFlightCarrier8", 80, "goDepTime8", "goArrTime8", 800000));
		 * list.add(new ResultVO("origin9", "destination9", "depDate9",
		 * "arrDate9", "goFlightCarrier9", 90, "goDepTime9", "goArrTime9",
		 * 900000)); list.add(new ResultVO("origin10", "destination10",
		 * "depDate10", "arrDate10", "goFlightCarrier10", 100, "goDepTime10",
		 * "goArrTime10", 1000000));
		 */
		List<ResultVO> list = dao.getBookMark(id);
		System.out.println("모든 북마크");
		System.out.println(list);
		return new ModelAndView("book", "bookmark", list);
	}

	// 즐겨찾기 모두 삭제
	@RequestMapping("/deleteAllBookMark")
	public String deleteAllBookMark(@RequestParam String id) {
		dao.deleteAllBookMark(id);
		return "book";
	}

	// 검색 기록 리스트
	@RequestMapping("/history")
	public ModelAndView gotoHistory(@RequestParam String id) {
		List<SearchVO> list = dao.getHistory(id);
		return new ModelAndView("history", "history", list);
	}

	// 검색 기록 모두 삭제
	@RequestMapping("/deleteAllHistory")
	public String deleteAllHistory(@RequestParam String id) {
		dao.deleteAllHistory(id);
		return "history";
	}

	@RequestMapping(value = "/checkBookmark")
	@ResponseBody
	public String checkBookmark(@RequestParam String id) {

		System.out.println("bookmark체크하는 함수 호출");
		System.out.println("id--------------------" + id);
		return "listinfo";
	}

	@RequestMapping(value = "/getModalJson", method = RequestMethod.POST)
	@ResponseBody
	public void getModalJson(@RequestBody String modal, HttpSession session) {
		System.out.println("-----------선택한 비행기편");
		System.out.println(modal);
		String id = (String) session.getAttribute("id");
		dao.addBookMark(id, modal);
	}
}
