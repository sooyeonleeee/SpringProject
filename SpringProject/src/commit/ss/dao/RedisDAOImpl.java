package commit.ss.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RedisDAOImpl implements RedisDAO {

	@Autowired
	private RedisTemplate<String, Object> redisSession;

	//검색 내용 가져오기
	@SuppressWarnings("unchecked")
	@Override
	public <T> T getObject(String key, Class<T> valueType) {
		return (T)redisSession.opsForValue().get(key);
	}
	
	//즐겨찾기, 검색내역을 일주일 동안 저장.
	@Override
	public <T> void setObject(String key, T value) {
		redisSession.opsForValue().set(key, value, 7, java.util.concurrent.TimeUnit.DAYS);
	}

}
