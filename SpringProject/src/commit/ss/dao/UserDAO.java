package commit.ss.dao;

import commit.ss.vo.UserVO;

public interface UserDAO {
	
	//�α���
	public boolean signIn(UserVO user);
	
	//ȸ������
	public boolean signUp(UserVO user);
	
	//��й�ȣ ����
	public boolean changePwd(UserVO user);
	
}
