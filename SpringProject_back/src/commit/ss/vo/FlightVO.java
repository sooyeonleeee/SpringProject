package commit.ss.vo;

public class FlightVO {
	
	// 항공사, 걸리는 시간, 출발 시간, 도착 시간, 가격
	private String flightCarrier;
	private int duration;
	private String depTime;
	private String arrTime;
	private int price;

	public FlightVO() {}

	public FlightVO(String flightCarrier, int duration, String depTime, String arrTime, int price) {
		this.flightCarrier = flightCarrier;
		this.duration = duration;
		this.depTime = depTime;
		this.arrTime = arrTime;
		this.price = price;
	}

	public String getFlightCarrier() {
		return flightCarrier;
	}

	public void setFlightCarrier(String flightCarrier) {
		this.flightCarrier = flightCarrier;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getDepTime() {
		return depTime;
	}

	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}

	public String getArrTime() {
		return arrTime;
	}

	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "FlightVO [flightCarrier=" + flightCarrier + ", duration=" + duration + ", depTime=" + depTime
				+ ", arrTime=" + arrTime + ", price=" + price + "]";
	}
	
	
	
}
