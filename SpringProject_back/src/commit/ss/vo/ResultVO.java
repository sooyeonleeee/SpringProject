package commit.ss.vo;

public class ResultVO {
	
	// SearchVO, 출국 FlightVO, 귀국 FlightVO
	private String origin;
	private String destination;
	private String depDate;
	private String arrDate;
	private String goFlightCarrier;
	private int goDuration;
	private String goDepTime;
	private String goArrTime;
	private int goPrice;
	private String backFlightCarrier;
	private int backDuration;
	private String backDepTime;
	private String backArrTime;
	private int backPrice;
	
	public ResultVO(){}

	public ResultVO(String origin, String destination, String depDate, String arrDate, String goFlightCarrier,
			int goDuration, String goDepTime, String goArrTime, int goPrice) {
		this.origin = origin;
		this.destination = destination;
		this.depDate = depDate;
		this.arrDate = arrDate;
		this.goFlightCarrier = goFlightCarrier;
		this.goDuration = goDuration;
		this.goDepTime = goDepTime;
		this.goArrTime = goArrTime;
		this.goPrice = goPrice;
	}

	public ResultVO(String origin, String destination, String depDate, String arrDate, String goFlightCarrier,
			int goDuration, String goDepTime, String goArrTime, int goPrice, String backFlightCarrier, int backDuration,
			String backDepTime, String backArrTime, int backPrice) {
		this.origin = origin;
		this.destination = destination;
		this.depDate = depDate;
		this.arrDate = arrDate;
		this.goFlightCarrier = goFlightCarrier;
		this.goDuration = goDuration;
		this.goDepTime = goDepTime;
		this.goArrTime = goArrTime;
		this.goPrice = goPrice;
		this.backFlightCarrier = backFlightCarrier;
		this.backDuration = backDuration;
		this.backDepTime = backDepTime;
		this.backArrTime = backArrTime;
		this.backPrice = backPrice;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
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

	public String getGoFlightCarrier() {
		return goFlightCarrier;
	}

	public void setGoFlightCarrier(String goFlightCarrier) {
		this.goFlightCarrier = goFlightCarrier;
	}

	public int getGoDuration() {
		return goDuration;
	}

	public void setGoDuration(int goDuration) {
		this.goDuration = goDuration;
	}

	public String getGoDepTime() {
		return goDepTime;
	}

	public void setGoDepTime(String goDepTime) {
		this.goDepTime = goDepTime;
	}

	public String getGoArrTime() {
		return goArrTime;
	}

	public void setGoArrTime(String goArrTime) {
		this.goArrTime = goArrTime;
	}

	public int getGoPrice() {
		return goPrice;
	}

	public void setGoPrice(int goPrice) {
		this.goPrice = goPrice;
	}

	public String getBackFlightCarrier() {
		return backFlightCarrier;
	}

	public void setBackFlightCarrier(String backFlightCarrier) {
		this.backFlightCarrier = backFlightCarrier;
	}

	public int getBackDuration() {
		return backDuration;
	}

	public void setBackDuration(int backDuration) {
		this.backDuration = backDuration;
	}

	public String getBackDepTime() {
		return backDepTime;
	}

	public void setBackDepTime(String backDepTime) {
		this.backDepTime = backDepTime;
	}

	public String getBackArrTime() {
		return backArrTime;
	}

	public void setBackArrTime(String backArrTime) {
		this.backArrTime = backArrTime;
	}

	public int getBackPrice() {
		return backPrice;
	}

	public void setBackPrice(int backPrice) {
		this.backPrice = backPrice;
	}

	@Override
	public String toString() {
		return "ResultVO [origin=" + origin + ", destination=" + destination + ", depDate=" + depDate + ", arrDate="
				+ arrDate + ", goFlightCarrier=" + goFlightCarrier + ", goDuration=" + goDuration + ", goDepTime="
				+ goDepTime + ", goArrTime=" + goArrTime + ", goPrice=" + goPrice + ", backFlightCarrier="
				+ backFlightCarrier + ", backDuration=" + backDuration + ", backDepTime=" + backDepTime
				+ ", backArrTime=" + backArrTime + ", backPrice=" + backPrice + "]";
	}
	
	
}
