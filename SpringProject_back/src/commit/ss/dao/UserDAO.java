package commit.ss.dao;

import java.util.List;

import commit.ss.vo.FlightVO;
import commit.ss.vo.ResultVO;
import commit.ss.vo.SearchVO;
import commit.ss.vo.UserVO;

public interface UserDAO {

	// �α���
	public boolean signIn(UserVO user);

	// ȸ������
	public boolean signUp(UserVO user);

	// ȸ������-�ߺ�Ȯ��
	public boolean signDuplicate_id(String id);

	// ��й�ȣ ����
	public boolean changePwd(String id,String Nowpwd,String Newpwd);

	// ���ã�� ���
	public List<ResultVO> getBookMark(String id);

	// ���ã�� �߰�
	public boolean addBookMark(String id, String bookmark);

	// ���ã�� ����
	public boolean deleteBookMark(String id, ResultVO flight);

	// ���ã�� ��� ����
	public boolean deleteAllBookMark(String id);

	// �ֱٰ˻� ���
	public List<SearchVO> getHistory(String id);
	
	public boolean addHistory(String id, SearchVO search);

	// �ֱٰ˻� ����
	public boolean deleteHistory(String id, SearchVO search);

	// �ֱٰ˻� ��� ����
	public boolean deleteAllHistory(String id);

}
