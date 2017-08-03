package commit.ss.dao;

import commit.ss.vo.UserVO;

public interface UserDAO {
	
	//로그인
	public boolean signIn(UserVO user);
	
	//회원가입
	public boolean signUp(UserVO user);
	
	//비밀번호 변경
	public boolean changePwd(UserVO user);
	
}
