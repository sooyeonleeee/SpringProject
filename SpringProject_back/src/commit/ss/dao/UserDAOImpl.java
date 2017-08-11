package commit.ss.dao;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;

import commit.ss.vo.FlightVO;
import commit.ss.vo.ResultVO;
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

	public boolean signUp(UserVO user) {
		int cnt = session.insert("userMapper.insertUser", user);
		if (cnt == 1) {
			return true;
		}
		return false;
	}

	public boolean changePwd(String id,String Nowpwd,String Newpwd) {
		boolean result=false;
		UserVO vo = session.selectOne("userMapper.selectUser", id);
		System.out.println(vo.getPwd());
		UserVO newvo = new UserVO(id,Newpwd);
		if(vo.getPwd().equals(Nowpwd)){
			int cnt = session.update("userMapper.updateUser", newvo);
			if(cnt==1){
				return result=true;
			}else{
				return result=false;
			}
		}else{
			result=false;
		}
		return result;
	}

	public List<ResultVO> getBookMark(String id) {
		List<String> list = redisDAO.getObject(bookmarkKey + id, List.class);
		ArrayList<ResultVO> result = new ArrayList<>();
		for (String string : list) {
			Gson gson = new Gson();
			result.add(gson.fromJson(string, ResultVO.class));
		}
		return result;
	}

	public boolean addBookMark(String id, String bookmark) {
		redisDAO.setObject(bookmarkKey+id, bookmark);
		return true;
	}

	public boolean deleteBookMark(String id, FlightVO flight) {
		return true;
	}

	public boolean deleteAllBookMark(String id) {
		redisDAO.removeAllObject(bookmarkKey + id);
		return true;
	}

	public List<SearchVO> getHistory(String id) {
		List<String> list = redisDAO.getObject(historyKey + id, List.class);
		ArrayList<SearchVO> result = new ArrayList<>();
		for (String string : list) {
			Gson gson = new Gson();
			result.add(gson.fromJson(string, SearchVO.class));
		}
		return result;
	}

	public boolean deleteHistory(String id, SearchVO search) {
		return true;
	}

	public boolean deleteAllHistory(String id) {
		redisDAO.removeAllObject(historyKey + id);
		return true;
	}

	public static String getDate() {
		return Calendar.getInstance().getTime().toString();
	}

	public boolean addHistory(String id, SearchVO search) {
		String history = new Gson().toJson(search);
		redisDAO.setObject(historyKey + id, history);
		return true;
	}
}
