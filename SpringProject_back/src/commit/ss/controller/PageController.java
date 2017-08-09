package commit.ss.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import commit.ss.dao.UserDAO;
import commit.ss.vo.FlightVO;
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
	public HashMap<String, Boolean> home1(UserVO user, HttpSession session) {
		boolean login = dao.signIn(user);
		if (login == true) {
			result.put("result", login);
			session.setAttribute("id", user.getId());
		} else
			result.put("result", login);

		return result;
	}

	// 로그아웃, 메인
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		return "index";
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

	// 비밀번호 변경
//	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
//	public ModelAndView changePwd(HttpSession session, @RequestParam String pwd,
//						@RequestParam String nowPwd) {
//		
//		String id1 = ""; 
//		String result = "" ;
//		
//		id1 = (String) session.getAttribute("id");
//		
//		 //session.selectOne("userMapper.selectUser", id1);
//
//		System.out.println("====Test=====");
//		System.out.println("id : " + id1);
//		System.out.println("now pwd : " + nowPwd);
//		System.out.println("pwd : " + pwd);
//		
//		UserVO user = new UserVO(id1, nowPwd);
//		
//		if(dao.signIn(user)) {
//			
//			
//			UserVO new_user = new UserVO(id1,pwd);
//			
//				if (dao.changePwd(new_user)) {
//					result = "success";
//				} else {
//					result = "fail";
//				}
//		}else {
//			result = "fail";
//		}
//		
//		System.out.println("==Result== " + result);
//		
//		return new ModelAndView("customer", "up_result", result);
//	}
	
	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	@ResponseBody
	public String changePwd(@RequestParam String pwd,
						@RequestParam String nowPwd,HttpSession session) {
		System.out.println("++++++++++++++++++++++++++++++++++");
		String id1 = ""; 
		String result = "" ;
		
		id1 = (String) session.getAttribute("id");
		
		 //session.selectOne("userMapper.selectUser", id1);

		System.out.println("====Test=====");
		System.out.println("id : " + id1);
		System.out.println("now pwd : " + nowPwd);
		System.out.println("pwd : " + pwd);
		
		UserVO user = new UserVO(id1, nowPwd);
		
		if(dao.signIn(user)) {
			
			
			UserVO new_user = new UserVO(id1,pwd);
			
				if (dao.changePwd(new_user)) {
					result = "success";
				} else {
					result = "fail";
				}
		}else {
			result = "fail";
		}
		
		System.out.println("==Result== " + result);
		
		return result;
	}

	// 상세 페이지
	@RequestMapping("/listinfo")
	public String listinfo(HttpSession session) {
		session.removeAttribute("id");
		return "listinfo";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	// 마이페이지
	@RequestMapping("/mypage")
	public ModelAndView gotoMyPage(@RequestParam String id) {
		
		
		return new ModelAndView("customer", "result", result);
	}

	// 즐겨찾기 리스트
	@RequestMapping("/bookmark")
	public ModelAndView gotoBookMark(@RequestParam String id) {
		// List<FlightVO> list = dao.getBookMark(id);
		List<ResultVO> list = new ArrayList<>();

		list.add(new ResultVO("origin1", "destination1", "depDate1", "arrDate1", "goFlightCarrier1", 10, "goDepTime1",
				"goArrTime1", 100000));
		list.add(new ResultVO("origin2", "destination2", "depDate2", "arrDate2", "goFlightCarrier2", 20, "goDepTime2",
				"goArrTime2", 200000));
		list.add(new ResultVO("origin3", "destination3", "depDate3", "arrDate3", "goFlightCarrier3", 30, "goDepTime3",
				"goArrTime3", 300000));
		list.add(new ResultVO("origin4", "destination4", "depDate4", "arrDate4", "goFlightCarrier4", 40, "goDepTime4",
				"goArrTime4", 400000));
		list.add(new ResultVO("origin5", "destination5", "depDate5", "arrDate5", "goFlightCarrier5", 50, "goDepTime5",
				"goArrTime5", 500000));
		list.add(new ResultVO("origin6", "destination6", "depDate6", "arrDate6", "goFlightCarrier6", 60, "goDepTime6",
				"goArrTime6", 600000));
		list.add(new ResultVO("origin7", "destination7", "depDate7", "arrDate7", "goFlightCarrier7", 70, "goDepTime7",
				"goArrTime7", 700000));
		list.add(new ResultVO("origin8", "destination8", "depDate8", "arrDate8", "goFlightCarrier8", 80, "goDepTime8",
				"goArrTime8", 800000));
		list.add(new ResultVO("origin9", "destination9", "depDate9", "arrDate9", "goFlightCarrier9", 90, "goDepTime9",
				"goArrTime9", 900000));
		list.add(new ResultVO("origin10", "destination10", "depDate10", "arrDate10", "goFlightCarrier10", 100,
				"goDepTime10", "goArrTime10", 1000000));


		return new ModelAndView("book", "bookmark", list);
	}

	// 즐겨찾기에 추가(details)
	@RequestMapping("/addBookMark")
	public String addBookMark(@RequestParam String id, FlightVO flight) {
		dao.addBookMark(id, flight);
		return "book";
	}

	// 즐겨찾기 삭제
	@RequestMapping("/deleteBookMark")
	public String deleteBookMark(@RequestParam String id, @RequestParam int index) {
		/*dao.deleteBookMark(id, index);
		list.remove(index);
		return new ModelAndView("bookmark", "bookmark", list);*/
		System.out.println("index-----------------------------------------------"+index);
		return "redirect:/bookmark?id="+id;
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

}
