package commit.ss.controller;

import java.util.HashMap;
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
import commit.ss.vo.SearchVO;
import commit.ss.vo.UserVO;

@Controller
public class PageController {

	@Autowired
	UserDAO dao;

	HashMap<String, Boolean> result = new HashMap<String, Boolean>();

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> home1(UserVO user, HttpSession session) {
		System.out.println(user.toString());
		boolean login = dao.signIn(user);
		System.out.println(login);
		if (login == true) {
			result.put("result", login);
			session.setAttribute("id", user.getId());
		} else
			result.put("result", login);

		return result;
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		return "index";
	}

	@RequestMapping(value = "/duplicate.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Boolean> duplicate(@RequestParam("id") String id) {
		System.out.println(id + "----------------------------------------------");
		boolean id_result = dao.signDuplicate_id(id);

		result.put("result", id_result);
		return result;
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(UserVO user) {
		boolean id_result = dao.signUp(user);

		if (id_result == true) {
			return "index";
		} else {
			return "index";
		}

	}

	// ��й�ȣ ����
	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	public ModelAndView changePwd(@RequestParam String id, @RequestParam String pwd) {
		UserVO user = new UserVO(id, pwd);
		String result = "";
		// ���� ����
		if (dao.signUp(user)) {
			result = "success";
		}
		// ���� ����
		else {
			result = "fail";
		}
		return new ModelAndView("book", "result", result);
	}

	// �˻��� ���� ���� ����� �� ������(������� �ϳ�)
	@RequestMapping("/listinfo")
	public String listinfo(HttpSession session) {
		session.removeAttribute("id");

		return "listinfo";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	// ����������(ù�κ� - ȸ�������� �����ְ� ��й�ȣ�� ������ �� �ִ� ������)
	@RequestMapping("/mypage")
	public String gotoMyPage() {
		return "customer";
	}

	// ���ã�� Ŭ��
	@RequestMapping("/bookmark")
	public String gotoBookMark() {
		return "book";
	}

	// ���ã�� �߰�
	@RequestMapping("/addBookMark")
	public String addBookMark(@RequestParam String id, FlightVO flight) {
		dao.addBookMark(id, flight);
		return "redirect:/listinfo";
	}

	// ���ã�� ����
	@RequestMapping("/deleteBookMark")
	public String deleteBookMark(@RequestParam String id, FlightVO flight) {
		dao.deleteBookMark(id, flight);
		return "redirect:/bookmark";
	}

	// ���ã�� ��� ����
	@RequestMapping("/deleteAllBookMark")
	public String deleteAllBookMark(@RequestParam String id) {
		dao.deleteAllBookMark(id);
		return "redirect:/bookmark";
	}

	// �ֱٰ˻� ����
	@RequestMapping("/deleteHistory")
	public String deleteHistory(@RequestParam String id, SearchVO search) {
		dao.deleteHistory(id, search);
		return "redirect:/bookmark";
	}

	// �ֱٰ˻� ��� ����
	@RequestMapping("/deleteAllHistory")
	public String deleteAllHistory(@RequestParam String id) {
		dao.deleteAllHistory(id);
		return "redirect:/bookmark";
	}

}
