<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<link href="resources/css/full.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
</head>

<body>	
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-sm-10">
					<div class="travel_info">
						<b><h2>여행 일정확인</h2></b>
					</div>
				</div>
				<div class="col-sm-2">
					<button class="btn_sLike" id="btn_like${requestScope.stat.index}" type="button"
						style="border: none">
						즐겨찾기에 추가
					</button>

				<c:set var="logincheck" value="${sessionScope.id }"/>

				
				<!-- 로그인 되어 있지 않은 상태에서 버튼 눌렀을 때 -->
						<c:if test="${empty logincheck }">
							<script>
								document.getElementById("btn_like"+${requestScope.stat.index}).onclick=function() {
									alert("로그인이 필요한 서비스입니다.");
								};
							</script>
						</c:if>

					<c:if test="${not empty logincheck }">
							<script>
							document.getElementById("btn_like"+${requestScope.stat.index}).onclick=function() {
								alert("즐겨찾기에 등록되었습니다.");
							};
							</script>
					</c:if>

				</div>
			</div>
			<div class="panel-body" style="margin-left: 10px">
				<section>
					<h4>
						<b>가는날</b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 10px 175px" class="btn btn-default" data-toggle="collapse" data-target="#go${requestScope.stat.index}">
						<div class="col-sm-12 ">
							<div class="row listbox" >
								<input type="hidden" id="inputDepDate${requestScope.stat.index}" value="${requestScope.obj.depDate}">
								<input type="hidden" id="inputArrDate${requestScope.stat.index}" value="${requestScope.obj.arrDate}">
								<span id="spanOrigin${requestScope.stat.index}">${requestScope.obj.origin}</span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"> </span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/airplane.png"> </span>
								<span id="spanDestination${requestScope.stat.index}">${requestScope.obj.destination }</span> 
								<span id="down"><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"></span>
							</div>
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="go${requestScope.stat.index}" class="collapse well row col-sm-7 col-sm-offset-2">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b id="bGoFlightCarrier${requestScope.stat.index}">${requestScope.obj.goFlightCarrier}</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">
									<p>총시간</p>
									<p id="pGoDuration${requestScope.stat.index}">${requestScope.obj.goDuration}분</p>
								</div>
								<div class="col-sm-4">
									<p id="pGoDepTime${requestScope.stat.index}">${requestScope.obj.goDepTime }</p>
									<p id="pGoArrTime${requestScope.stat.index}">${requestScope.obj.goArrTime }</p>
								</div>
								<div class="col-sm-4">
									<p>${requestScope.obj.origin}</p>
									<p>${requestScope.obj.destination}</p>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
<!-- 			가는날시작 -->
			<c:if test="${not empty requestScope.obj.backFlightCarrier}" >
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>오는날</b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 10px 175px" class="btn btn-default" data-toggle="collapse" data-target="#back${requestScope.stat.index}">
						<div class="col-sm-12 ">
							<div class="row listbox" >
								<span >${requestScope.obj.destination }</span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"> </span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/airplane.png"> </span>
								<span>${requestScope.obj.origin }</span> 
								<span id="down"><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"></span>
							</div>
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="back${requestScope.stat.index}" class="collapse well row col-sm-7 col-sm-offset-2">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b id="bBackFlightCarrier${requestScope.stat.index}">${requestScope.obj.backFlightCarrier }</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">
									<p>총시간</p>
									<p id="pBackDuration${requestScope.stat.index}">${requestScope.obj.backDuration}분</p>
								</div>
								<div class="col-sm-4">
									<p id="pBackDepTime${requestScope.stat.index}">${requestScope.obj.backDepTime }</p>
									<p id="pBackArrTime${requestScope.stat.index}">${requestScope.obj.backArrTime }</p>
								</div>
								<div class="col-sm-4">
									<p>${requestScope.obj.destination}</p>
									<p>${requestScope.obj.origin}</p>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			</c:if>
<!-- 			 가는날끝 -->
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>티켓을 예약하십시오</b>
					</h4>
				</section>
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<ul class="list-group">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#y_btn${requestScope.stat.index}">
										<b>예약전에 읽어보세요</b>
									</button>
									<div id="y_btn${requestScope.stat.index}" class="collapse well">
										<p>
											표시된 요금에는 모든 세금 및 수수료가 포함되어 있으나, 예약 전에 웹사이트에서 <em>티켓의 세부정보, 최종 가격, 약관</em>을 반드시 확인하시기 바랍니다.
										</p>
										<ul>
											<li><p class="fss-bold">추가 요금 확인</p>
												<p>
													일부 항공사/여행사의 경우 <em>수하물</em>, <em>보험</em> 또는 <em>신용 카드</em> 사용에 대한 추가 요금을 부과합니다.<a href="/airlinefees" title="새 창에서 열기" target="_blank" class="airline-fees-link">항공사 수수료</a> 보기.
												</p></li>
											<li><p class="fss-bold">12~16세 승객에 대한 이용 약관을 확인하십시오.</p>
												<p>보호자를 동반하지 않고 혼자 여행하는 어린 승객에게는 제한 사항이 적용될 수 있습니다.</p></li>
										</ul>
									</div>
								</div>
										<div class="panel-body">
								<c:choose>
									<c:when test="${not empty requestScope.obj.backFlightCarrier}">
											<div class="col-sm-6 text-left">${requestScope.obj.goFlightCarrier} & ${requestScope.obj.backFlightCarrier}</div>
											<div class="col-sm-3 bt">
												<h4>
													<input type="hidden" id="inputGoPrice${requestScope.stat.index}" value="${requestScope.obj.goPrice}">
													<input type="hidden" id="inputBackPrice${requestScope.stat.index}" value="${requestScope.obj.backPrice}">
													<b>${requestScope.obj.goPrice + requestScope.obj.backPrice}</b>
												</h4>
											</div>
									</c:when>
									<c:when test="${empty requestScope.obj.backFlightCarrier}">
											<div class="col-sm-6 text-left">${requestScope.obj.goFlightCarrier}</div>
											<div class="col-sm-3 bt">
												<h4>
													<b>${requestScope.obj.goPrice}</b>
												</h4>
											</div>
									</c:when>
								</c:choose>
											<div class="col-sm-3 text-center">
												<button type="button" class="btn btn-info btn-lg">선택</button>
											</div>
										</div>
								
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
