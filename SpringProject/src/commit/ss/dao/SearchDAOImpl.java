package commit.ss.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import commit.ss.dao.RedisDAO;

import commit.ss.vo.FlightVO;
import commit.ss.vo.SearchVO;

public class SearchDAOImpl implements SearchDAO {

	@Autowired
	private SqlSession session;

	@Autowired
	private RedisDAO redisDAO;
	
	
	@Override
	public List<FlightVO> search(SearchVO search) {
		
		return null;
	}


	@Override
	public List<FlightVO> searchFromRedis(SearchVO search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FlightVO> searchFromPage(SearchVO search) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	

}
