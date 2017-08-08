package commit.ss.vo;

public class SearchVO {

	// 출발지, 도착지, 출국일, 귀국일, 편도냐?, 성인 수, 아이 수.
	private String departure;
	private String arrival;
	private String depDate;
	private String arrDate;
	private boolean isOneWay;
	private int adultCount;
	private int childCount;

	public SearchVO() {}

	public SearchVO(String departure, String arrival, String depDate, String arrDate, boolean isOneWay, int adultCount,
			int childCount) {
		this.departure = departure;
		this.arrival = arrival;
		this.depDate = depDate;
		this.arrDate = arrDate;
		this.isOneWay = isOneWay;
		this.adultCount = adultCount;
		this.childCount = childCount;
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

	public String getArrDate() {
		return arrDate;
	}

	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}

	public boolean getIsOneWay() {
		return isOneWay;
	}

	public void setIsOneWay(boolean isOneWay) {
		this.isOneWay = isOneWay;
	}

	public int getAdultCount() {
		return adultCount;
	}

	public void setAdultCount(int adultCount) {
		this.adultCount = adultCount;
	}

	public int getChildCount() {
		return childCount;
	}

	public void setChildCount(int childCount) {
		this.childCount = childCount;
	}

}
