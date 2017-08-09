<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-sm-11">
					<b><h2>여행 일정확인</h2></b>
				</div>
				<div class="col-sm-1">
					<form method="POST" action="<%=request.getContextPath() %>/checkBookmark">
						<input type="hidden" id="item" name="bookmark" value="${item }">
						<button class="btn" id="btn_like" type="button"
							style="border: none; background-color: white">
							
							<img alt=""
								src="http://localhost:8087/SpringProject/resources/img/staron.png">
						</button>
					</form>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 10px">
				<section>
					<h4>
						<b>가는날</b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 10px 175px" class="btn btn-default" data-toggle="collapse" data-target="#go1">
						<div class="col-sm-12 ">
							<div class="row listbox" >
								<span >${item.origin}</span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"> </span>
								<span><img alt="" src="http://localhost:8087/SpringProject/resources/img/airplane.png"> </span>
								<span>${item.destination }</span> 
								<span id="down"><img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"></span>
							</div>
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="go1" class="collapse well row col-sm-7 col-sm-offset-2">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>${item.goFlightCarrier}</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">
									<p>총시간</p>
									<p>${item.goDuration}분</p>
								</div>
								<div class="col-sm-4">
									<p>${item.goDepTime }</p>
									<p>${item.goArrTime }</p>
								</div>
								<div class="col-sm-4">
									<p>${item.origin}</p>
									<p>${item.destination}</p>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<div id="back2" class="collapse well row col-sm-7 col-sm-offset-2">
				<ul class="list-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>${item.backFlightCarrier }</b>
						</div>
						<div class="panel-body">
							<div class="col-sm-4">
								<p>총시간</p>
								<p>${item.backDuration}분</p>
							</div>
							<div class="col-sm-4">
								<p>${item.backDepTime }</p>
								<p>${item.backArrTime }</p>
							</div>
							<div class="col-sm-4">
								<p>${item.destination}</p>
								<p>${item.origin}</p>
							</div>
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="back2" class="collapse well row col-sm-7 col-sm-offset-2">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>${item.backFlightCarrier }</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">
									<p>총시간</p>
									<p>${item.backDuration}분</p>
								</div>
								<div class="col-sm-4">
									<p>${item.backDepTime }</p>
									<p>${item.backArrTime }</p>
								</div>
								<div class="col-sm-4">
									<p>${item.destination}</p>
									<p>${item.origin}</p>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			
<!-- 			 가는날끝 -->
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>티켓을 예약하십시오</b>
					</h4>
				</section>
				<div class="row">
					<div class="col-sm-7 col-sm-offset-2">
						<ul class="list-group">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#y_btn">
										<b>예약전에 읽어보세요</b>
									</button>
									<div id="y_btn" class="collapse well">
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
									<c:when test="${not empty item.backFlightCarrier}">
											<div class="col-sm-6 text-left">${item.goFlightCarrier} & ${item.backFlightCarrier}</div>
											<div class="col-sm-3 bt">
												<h4>
													<b>${item.goPrice + item.backPrice}</b>
												</h4>
											</div>
									</c:when>
									<c:when test="${empty item.backFlightCarrier}">
											<div class="col-sm-6 text-left">${item.goFlightCarrier}</div>
											<div class="col-sm-3 bt">
												<h4>
													<b>${item.goPrice}</b>
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
