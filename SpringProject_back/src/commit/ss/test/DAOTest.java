package commit.ss.test;


import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.google.gson.Gson;

import commit.ss.dao.UserDAO;
import commit.ss.vo.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/beans.xml")
public class DAOTest {
	@Autowired
	SqlSession session;

	@Autowired
	UserDAO userDAO;
	
	
	@Test
	public void dao() {
		Gson gson = new Gson();
		UserVO user = new UserVO("testid", "testpwd");
		String str = gson.toJson(user);
		System.out.println(str);

	}
	
}
