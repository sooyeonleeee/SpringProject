package commit.ss.dao;

import commit.ss.vo.UserVO;

public interface UserDAO {

	// �α���
	public boolean signIn(UserVO user);

	// ȸ������
	public boolean signUp(UserVO user);

	// ȸ������-�ߺ�Ȯ��
	public boolean signDuplicate_id(String id);

	// ��й�ȣ ����
	public boolean changePwd(UserVO user);

}
