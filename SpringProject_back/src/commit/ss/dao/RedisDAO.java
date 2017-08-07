package commit.ss.dao;

public interface RedisDAO {
	public <T> T getObject(String key, Class<T> valueType);
	public <T> void setObject(String key, T value);
	public void removeObject(String key, Object value);
	public void removeAllObject(String key);
}
