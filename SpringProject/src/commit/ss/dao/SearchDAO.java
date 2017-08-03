package commit.ss.dao;

import java.util.List;

import commit.ss.vo.FlightVO;

public interface SearchDAO {
	
	public List<FlightVO> search(FlightVO flight);
	
}
