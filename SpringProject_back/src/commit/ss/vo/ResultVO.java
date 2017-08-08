package commit.ss.vo;

public class ResultVO {
	
	// SearchVO, 출국 FlightVO, 귀국 FlightVO
	private String origin;
	private String destination;
	private String depDate;
	private String arrDate;
	private FlightVO goFlightVO;
	private FlightVO backFlightVO;
	
	public ResultVO(){}
	
	public ResultVO(String origin, String destination, String depDate, String arrDate, FlightVO goFlightVO) {
		this.origin = origin;
		this.destination = destination;
		this.depDate = depDate;
		this.arrDate = arrDate;
		this.goFlightVO = goFlightVO;
	}

	public ResultVO(String origin, String destination, String depDate, String arrDate, FlightVO goFlightVO,
			FlightVO backFlightVO) {
		this.origin = origin;
		this.destination = destination;
		this.depDate = depDate;
		this.arrDate = arrDate;
		this.goFlightVO = goFlightVO;
		this.backFlightVO = backFlightVO;
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

	public String getArrDate() {
		return arrDate;
	}

	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public FlightVO getGoFlightVO() {
		return goFlightVO;
	}

	public void setGoFlightVO(FlightVO goFlightVO) {
		this.goFlightVO = goFlightVO;
	}

	public FlightVO getBackFlightVO() {
		return backFlightVO;
	}

	public void setBackFlightVO(FlightVO backFlightVO) {
		this.backFlightVO = backFlightVO;
	}

	public void print() {
		System.out.println("===================================================================");
		System.out.println("출발지 : " + origin +
									" 도착지 : " + destination +
									" 출국일 : " + depDate +
									" 귀국일 : " + arrDate +"\n"+
									"가는 편 : [ 출발시간 : " + goFlightVO.getDepTime() +", "+
									"도착 시간 : "+goFlightVO.getArrTime()+", "+
									"걸리는 시간 : "+goFlightVO.getDuration()+"분, "+
									"항공사 : "+goFlightVO.getFlightCarrier()+", "+
									"가격 : "+goFlightVO.getPrice()+"원 ]" + " \n" +
									"오는 편 : [ 출발시간 : " + backFlightVO.getDepTime() +", "+
									"도착 시간 : "+backFlightVO.getArrTime()+", "+
									"걸리는 시간 : "+backFlightVO.getDuration()+"분, "+
									"항공사 : "+backFlightVO.getFlightCarrier()+", "+
									"가격 : "+backFlightVO.getPrice()+"원 ]");
		System.out.println("===================================================================");
	}
	
	
}





























