package commit.ss.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

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
		return "/";
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
	// @RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	// public ModelAndView changePwd(HttpSession session, @RequestParam String
	// pwd,
	// @RequestParam String nowPwd) {
	//
	// String id1 = "";
	// String result = "" ;
	//
	// id1 = (String) session.getAttribute("id");
	//
	// //session.selectOne("userMapper.selectUser", id1);
	//
	// System.out.println("====Test=====");
	// System.out.println("id : " + id1);
	// System.out.println("now pwd : " + nowPwd);
	// System.out.println("pwd : " + pwd);
	//
	// UserVO user = new UserVO(id1, nowPwd);
	//
	// if(dao.signIn(user)) {
	//
	//
	// UserVO new_user = new UserVO(id1,pwd);
	//
	// if (dao.changePwd(new_user)) {
	// result = "success";
	// } else {
	// result = "fail";
	// }
	// }else {
	// result = "fail";
	// }
	//
	// System.out.println("==Result== " + result);
	//
	// return new ModelAndView("customer", "up_result", result);
	// }

	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> changePwd(@RequestParam("newPwd") String newPwd, @RequestParam("nowPwd") String nowPwd, @RequestParam("id") String id) {
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
	public ModelAndView gotoMyPage(@RequestParam String id) {

		return new ModelAndView("customer", "result", result);
	}

	// 즐겨찾기 리스트
	@RequestMapping("/bookmark")
	public ModelAndView gotoBookMark(@RequestParam String id) {		
		List<ResultVO> list = dao.getBookMark(id);
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
	
	@RequestMapping(value="/checkBookmark")
	@ResponseBody
	public String checkBookmark(@RequestParam String id) {
		return "listinfo";
	}
	
	@RequestMapping(value="/getModalJson", method=RequestMethod.POST)
	@ResponseBody
	public void getModalJson(@RequestBody String modal, HttpSession session) {
		System.out.println("-----------선택한 비행기편");
		System.out.println(modal);
		String id = (String) session.getAttribute("id");
		dao.addBookMark(id, modal);
	}
}
