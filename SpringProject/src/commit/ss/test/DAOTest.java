package commit.ss.test;


import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
		UserVO user = new UserVO("g", "g");
		boolean result = userDAO.signUp(user);
		System.out.println(result);
		
	}
	
}
