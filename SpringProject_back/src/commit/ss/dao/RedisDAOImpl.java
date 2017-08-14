package commit.ss.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RedisDAOImpl implements RedisDAO {

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@SuppressWarnings("unchecked")
	@Override
	public <T> T getObject(String key, Class<T> valueType) {
		return (T) redisTemplate.opsForList().range(key, 0, -1);
	}

	@Override
	public <T> void setObject(String key, T value) {
		redisTemplate.opsForList().rightPush(key, value);
	}

	@Override
	public void removeAllObject(String key) {
		// TODO Auto-generated method stub
		Long size = redisTemplate.opsForList().size(key);
		redisTemplate.opsForList().trim(key, size + 1, size + 1);
	}

	@Override
	public void removeObject(String key, Object value) {
		// TODO Auto-generated method stub
		redisTemplate.opsForList().remove(key, 0, value);
	}
}
