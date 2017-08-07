package commit.ss.dao;

import java.util.List;

import commit.ss.vo.FlightVO;
import commit.ss.vo.SearchVO;
import commit.ss.vo.UserVO;

public interface UserDAO {

	// 로그인
	public boolean signIn(UserVO user);

	// 회원가입
	public boolean signUp(UserVO user);

	// 회원가입-중복확인
	public boolean signDuplicate_id(String id);

	// 비밀번호 변경
	public boolean changePwd(UserVO user);

	// 즐겨찾기 목록
	public List<FlightVO> getBookMark(String id);

	// 즐겨찾기 추가
	public boolean addBookMark(String id, FlightVO flight);

	// 즐겨찾기 삭제
	public boolean deleteBookMark(String id, FlightVO flight);

	// 즐겨찾기 모두 삭제
	public boolean deleteAllBookMark(String id);

	// 최근검색 목록
	public List<SearchVO> getHistory(String id);

	// 최근검색 삭제
	public boolean deleteHistory(SearchVO search);

	// 최근검색 모두 삭제
	public boolean deleteAllHistory(String id);

}
