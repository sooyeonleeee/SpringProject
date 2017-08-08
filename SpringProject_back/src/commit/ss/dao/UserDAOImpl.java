package commit.ss.dao;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;

import commit.ss.vo.FlightVO;
import commit.ss.vo.SearchVO;
import commit.ss.vo.UserVO;

@Repository
@SuppressWarnings("unchecked")
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession session;

	@Autowired
	RedisDAO redisDAO;

	private final String bookmarkKey = "bookmark:";
	private final String historyKey = "history:";

	@Override
	public boolean signDuplicate_id(String id) {
		// TODO Auto-generated method stub
		int cnt = session.selectOne("userMapper.selectCnt", id);
		if (cnt == 1)
			return true;
		else
			return false;
	}

	// �α���
	@Override
	public boolean signIn(UserVO user) {

		UserVO vo = session.selectOne("userMapper.selectUser", user.getId());
		int cnt = session.selectOne("userMapper.selectCnt", user.getId());
		System.out.println(cnt);
		if (cnt == 1) {
			if (user.getPwd().equals(vo.getPwd())) {
				return true;
			}
		} else {
			return false;
		}

		return false;
	}

	// ȸ������
	public boolean signUp(UserVO user) {
		int cnt = session.insert("userMapper.insertUser", user);
		if (cnt == 1) {
			return true;
		}
		return false;
	}

	// ��й�ȣ ����
	public boolean changePwd(UserVO user) {
		int cnt = session.update("userMapper.updateUser", user);
		if (cnt == 1) {
			return true;
		}
		return false;
	}

	// ���ã�� ���
	public List<FlightVO> getBookMark(String id) {
		List<FlightVO> list = redisDAO.getObject(bookmarkKey + id, List.class);
		return list;
	}

	// ���ã�� �߰�
	public boolean addBookMark(String id, FlightVO flight) {
		JSONObject obj = new JSONObject();
		obj.put("date", getDate());
		redisDAO.setObject(bookmarkKey + id, obj.toJSONString());
		String bookmark = new Gson().toJson(flight);
		redisDAO.setObject("bookmark", bookmark);
		return true;
	}

	// ���ã�� ����
	public boolean deleteBookMark(String id, FlightVO flight) {
		return true;
	}

	// ���ã�� ��� ����
	public boolean deleteAllBookMark(String id) {
		redisDAO.removeAllObject(bookmarkKey + id);
		return true;
	}

	// �ֱٰ˻� ���
	public List<SearchVO> getHistory(String id) {
		List<SearchVO> list = redisDAO.getObject(historyKey + id, List.class);
		return list;
	}

	// �ֱٰ˻� ����
	public boolean deleteHistory(String id, SearchVO search) {
		return true;
	}

	// �ֱٰ˻� ��� ����
	public boolean deleteAllHistory(String id) {
		redisDAO.removeAllObject(historyKey + id);
		return true;
	}

	public static String getDate() {
		return Calendar.getInstance().getTime().toString();
	}

	public boolean addHistory(String id, SearchVO search) {
		JSONObject obj = new JSONObject();
		obj.put("date", getDate());
		redisDAO.setObject(historyKey + id, obj.toJSONString());
		String history = new Gson().toJson(search);
		redisDAO.setObject("history", history);
		return true;
	}
}
