<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>검색 내역</title>

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}


tr:nth-child(even) {
	background-color: #dddddd;
}
</style>


</head>

<body>

	<jsp:include page = "include/header.jsp"></jsp:include>

	<!-- 기본 정보 -->
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<div class="list-group">
					
					<a href="<%=request.getContextPath() %>/mypage?id=${sessionScope.id}" class="list-group-item"> 
						<span class="glyphicon glyphicon-user"></span>      회원정보</a> 
					<a href="<%=request.getContextPath() %>/bookmark?id=${sessionScope.id}" class="list-group-item">
						<span class="glyphicon glyphicon-list-alt"></span>     즐겨찾기</a>
					<a href="<%=request.getContextPath() %>/history?id=${sessionScope.id}" class="list-group-item">
						<span class="glyphicon glyphicon-list-alt"></span>     검색 내역</a>
				</div>
			</div>


			<div class="col-md-9">
		
				<div class="cont">
					<div class="well" style="background-color: white">
						검색내용
						<hr>
						<div class="row" style="background-color: white">

							<table class="table table-bordered">
								<tr>
									<th>번호</th>
									<th>출발지</th>
									<th>도착지</th>
									<th>출발일</th>
									<th>도착일</th>
									<th>편도/왕복</th>
									<th>성인 수</th>
									<th>소아미만 수</th>
									<th>삭제</th>
								</tr>
									<c:forEach var="history" items="${history}" varStatus="status">
								<tr style="background-color: white">
									<td>${status.count }</td>
       								<td>${history.departure }</td>
       								<td>${history.arrival }</td>
       								<td>${history.depDate }</td>
       								<td>${history.arrDate }</td>
       								<td>${history.isOneWay }</td>
       								<td>${history.adultCount }</td>
       								<td>${history.childCount }</td>
									<td><a href="<%=request.getContextPath()%>/deleteHistory?num=${status.count }"><button type="button" class="btn btn-default btn-sm">
    							      <span class="glyphicon glyphicon-trash"></span>삭제
       								  </button></a></td>
								</tr>
								</c:forEach>
							</table>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



	<!-- /.container -->

	<div class="container">

		<hr>

	</div>

	<!-- jQuery -->
	<script src="resource/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resource/js/bootstrap.min.js"></script>

</body>

</html>
