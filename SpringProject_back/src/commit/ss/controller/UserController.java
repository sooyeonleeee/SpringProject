package commit.ss.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import commit.ss.dao.UserDAO;
import commit.ss.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;

	// 로그인
	@RequestMapping(value="/signIn", method=RequestMethod.POST)
	public ModelAndView signIn(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// 로그인 성공
		if (userDAO.signIn(user)) {
			result = "success";
		}
		// 로그인 실패
		else {
			result = "fail";
		}
		return new ModelAndView("main", "result", result);
	}

	// 회원가입
	@RequestMapping(value="/signUp", method=RequestMethod.POST) 
	public ModelAndView signUp(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// 회원가입 성공
		if (userDAO.signUp(user)) {
			result = "success";
		}
		// 회원가입 실패
		else {
			result = "fail";
		}
		return new ModelAndView("main", "result", result);
	}
	
	// 비밀번호 변경
	@RequestMapping(value="/changePwd", method=RequestMethod.POST) 
	public ModelAndView changePwd(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// 변경 성공
		if (userDAO.signUp(user)) {
			result = "success";
		}
		// 변경 실패
		else {
			result = "fail";
		}
		return new ModelAndView("mypage", "result", result);
	}

	// 즐겨찾기
	@RequestMapping("/bookmark")
	public ModelAndView getBookMark(@RequestParam String id) {
		return null;
	}
	
	// 최근 검색
	
}
