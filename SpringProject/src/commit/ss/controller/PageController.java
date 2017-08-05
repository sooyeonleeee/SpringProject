package commit.ss.controller;

import java.util.HashMap;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import commit.ss.dao.RedisDAO;
import commit.ss.dao.UserDAO;

@Controller
public class PageController {

	// @Autowired
	// RedisDAO redisDAO;
	@Autowired
	UserDAO dao;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> home1(@RequestParam("id") String id) {
		HashMap<String, String> test = new HashMap<String, String>();
		test.put("id", id);
		return test;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)

	public String home(Locale locale, Model model) {

		return "index";
	}

}
