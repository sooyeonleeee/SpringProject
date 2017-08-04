package commit.ss.dao;

import java.util.List;

import commit.ss.vo.FlightVO;
import commit.ss.vo.SearchVO;

public interface SearchDAO {
	
	public List<FlightVO> search(SearchVO search);
	public List<FlightVO> searchFromRedis(SearchVO search);
	public List<FlightVO> searchFromPage(SearchVO search);
	
	
}
