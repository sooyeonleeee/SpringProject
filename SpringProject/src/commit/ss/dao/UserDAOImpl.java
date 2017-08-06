package commit.ss.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import commit.ss.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession session;

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
		if (cnt == 1) {
			if (user.getPwd().equals(vo.getPwd())) {
				return true;
			}
		} else {
			return false;
		}

		return false;
	}

	@Override
	public boolean signUp(UserVO user) {
		int cnt = session.insert("userMapper.insertUser", user);
		if (cnt == 1) {
			return true;
		}
		return false;
	}

	@Override
	public boolean changePwd(UserVO user) {
		int cnt = session.update("userMapper.updateUser", user);
		if (cnt == 1) {
			return true;
		}
		return false;
	}

}
