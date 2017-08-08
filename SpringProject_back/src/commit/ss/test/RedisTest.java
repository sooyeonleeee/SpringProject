package commit.ss.test;

import java.util.Calendar;
import java.util.List;

import org.json.simple.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import commit.ss.dao.RedisDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/beans.xml")
public class RedisTest {

	@Autowired
	RedisDAO redisdao;

	@SuppressWarnings("unchecked")
	@Test
	public void zsettest() {
		JSONObject obj = new JSONObject();
		obj.put("date", new String(Calendar.getInstance().getTime().toString()));
		redisdao.setObject("history:55", obj.toJSONString());
		obj.put("date", new String(Calendar.getInstance().getTime().toString()));
		redisdao.setObject("history:55", obj.toJSONString());
		List<Object> result = redisdao.getObject("history:55", List.class);
		for (Object object : result) {
			System.out.println(object);
		}
	
	}
}