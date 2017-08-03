package commit.ss.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RedisDAOImpl implements RedisDAO {

	@Autowired
	private RedisTemplate<String, Object> redisSession;

	//�˻� ���� ��������
	@SuppressWarnings("unchecked")
	@Override
	public <T> T getObject(String key, Class<T> valueType) {
		return (T)redisSession.opsForValue().get(key);
	}
	
	//���ã��, �˻������� ������ ���� ����.
	@Override
	public <T> void setObject(String key, T value) {
		redisSession.opsForValue().set(key, value, 7, java.util.concurrent.TimeUnit.DAYS);
	}

}
