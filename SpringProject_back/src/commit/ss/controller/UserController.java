
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

	// �α���
	@RequestMapping(value="/signIn", method=RequestMethod.POST)
	public ModelAndView signIn(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// �α��� ����
		if (userDAO.signIn(user)) {
			result = "success";
		}
		// �α��� ����
		else {
			result = "fail";
		}
		return new ModelAndView("main", "result", result);
	}

	// ȸ������
	@RequestMapping(value="/signUp", method=RequestMethod.POST) 
	public ModelAndView signUp(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// ȸ������ ����
		if (userDAO.signUp(user)) {
			result = "success";
		}
		// ȸ������ ����
		else {
			result = "fail";
		}
		return new ModelAndView("main", "result", result);
	}
	
	// ��й��? ����
	@RequestMapping(value="/changePwd", method=RequestMethod.POST) 
	public ModelAndView changePwd(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// ���� ����
		if (userDAO.signUp(user)) {
			result = "success";
		}
		// ���� ����
		else {
			result = "fail";
		}
		return new ModelAndView("mypage", "result", result);
	}

	// ���ã��?
	@RequestMapping("/bookmark")
	public ModelAndView getBookMark(@RequestParam String id) {
		return null;
	}
	
	// �ֱ� �˻�
	
}
