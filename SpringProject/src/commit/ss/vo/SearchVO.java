package commit.ss.vo;

public class SearchVO {
	// 출발지, 도착지, 출발일, 왕복/편도, 매수
	private String departure;
	private String arrival;
	private String depDate;
	private String isOneWay;
	private int number;

	public SearchVO() {

	}

	public SearchVO(String departure, String arrival, String depDate, String isOneWay, int number) {
		super();
		this.departure = departure;
		this.arrival = arrival;
		this.depDate = depDate;
		this.isOneWay = isOneWay;
		this.number = number;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public String getIsOneWay() {
		return isOneWay;
	}

	public void setIsOneWay(String isOneWay) {
		this.isOneWay = isOneWay;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "SearchVO [departure=" + departure + ", arrival=" + arrival + ", depDate=" + depDate + ", isOneWay="
				+ isOneWay + ", number=" + number + "]";
	}

}
