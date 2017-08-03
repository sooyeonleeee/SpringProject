package commit.ss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import commit.ss.dao.RedisDAO;

@Controller
public class PageController {
	
	@Autowired
	RedisDAO redisDAO;
	
	
	
	
}
