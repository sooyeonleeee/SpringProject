<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/header.jsp" />
<!-- 메뉴 -->
<div class="container">
	<div class="row">
		<div class="panel panel-default" style="margin-left: 20px">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-11">
						<b><h2>여행 일정확인</h2></b>
					</div>
					<div class="col-sm-1">
						<br> &nbsp;<img alt="" src="http://localhost:8087/SpringProject/resources/img/staon.png">
					</div>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>오는날 출발시간<직항 왕복 유뮤></b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 10px 200px" class="btn btn-default" data-toggle="collapse" data-target="#demo1">
						<div class="col-sm-12 listbox">
							<span>INC</span> <img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"> <img alt="" src="http://localhost:8087/SpringProject/resources/img/airplane.png"> <span>INC</span>
						</div>
						<div>
							<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png">
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="demo1" class="collapse well row col-sm-7">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>티웨이 항공 TW719</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">총시간</div>
								<div class="col-sm-4">
									<p>오후 6:10</p>
									<p>오후 7:15</p>
								</div>
								<div class="col-sm-4">
									<p>GMP 서울 김포</p>
									<p>CJU 제주공항</p>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-sm-6 text-center">시간</div>
								<div class="col-sm-6 text-center">dd</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>가는날 출발시간<직항 왕복 유뮤></b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 10px 200px" class="btn btn-default" data-toggle="collapse" data-target="#demo2">
						<div class="col-sm-12 listbox">
							<span>INC</span> <img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"> <img alt="" src="http://localhost:8087/SpringProject/resources/img/airplane.png"> <span>INC</span>
						</div>
						<div>
							<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png">
						</div>
						<!-- 						<img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow-down.png"> -->
					</div>
				</div>
				<div id="demo2" class="collapse well row col-sm-7">
					<ul class="list-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>티웨이 항공 TW719</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">총시간</div>
								<div class="col-sm-4">
									<p>오후 6:10</p>
									<p>오후 7:15</p>
								</div>
								<div class="col-sm-4">
									<p>GMP 서울 김포</p>
									<p>CJU 제주공항</p>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-sm-6 text-center">시간</div>
								<div class="col-sm-6 text-center">dd</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>티켓을 예약하십시오</b>
					</h4>
				</section>
				<div class="row">
					<div class="col-sm-7">
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
									<div class="col-sm-6 text-left">항공이름</div>
									<div class="col-sm-3 bt">
										<h4>
											<b>가격</b>
										</h4>
									</div>
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
</div>
<!-- 	<footer class="container-fluid text-center"> -->
<!-- 	<p>Footer Text</p> -->
<!-- 	</footer> -->
<jsp:include page="/main/login.jsp" />
<jsp:include page="/main/join.jsp" />
</body>
</html>
<script>
	
</script>
