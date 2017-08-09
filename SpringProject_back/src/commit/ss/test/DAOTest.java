package commit.ss.test;


import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.junit.Ignore;
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
	public void changePwd() {
		String id="test";
		String Nowpwd="1234";
		String Newpwd="12345";
		UserVO vo = session.selectOne("userMapper.selectUser", id);
		System.out.println(vo.getPwd());
		UserVO newvo = new UserVO(id,Newpwd);
		if(vo.getPwd().equals(Nowpwd)){
			int cnt = session.update("userMapper.updateUser", newvo);
			if(cnt==1){
			System.out.println("결과값:"+true);
			}else{
				System.out.println("결과값:"+false);
			}
		}else{
			System.out.println("틀림");
		}
		
	
	
	}
	
	
	
}
