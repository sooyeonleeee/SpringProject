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


<title>즐겨찾기</title>


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

.bookmark_btn{
	float:right;
}

</style>
</head>

<body>


	<jsp:include page="include/header.jsp"></jsp:include>

	<!-- 기본 정보 -->
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<div class="list-group">

					<a
						href="<%=request.getContextPath() %>/mypage?id=${sessionScope.id}"
						class="list-group-item"> <span
						class="glyphicon glyphicon-user"></span> 회원정보
					</a> <a
						href="<%=request.getContextPath() %>/bookmark?id=${sessionScope.id}"
						class="list-group-item"> <span
						class="glyphicon glyphicon-list-alt"></span> 즐겨찾기
					</a> <a
						href="<%=request.getContextPath() %>/history?id=${sessionScope.id}"
						class="list-group-item"> <span
						class="glyphicon glyphicon-list-alt"></span> 검색 내역
					</a>
				</div>
			</div>


			<div class="col-md-9">

				<div class="cont">
					<div class="well" style="background-color: white">
						즐겨찾기 
						
						<div class="bookmark_btn">
						<a href="<%=request.getContextPath()%>/deleteAllBookMark?id=${sessionScope.id}">
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-trash"></span>즐겨찾기 전체삭제
							</button>
						</a></div>
						<hr>
						<div class="row" style="background-color: white">
								<table class="table">
									<tr>
										<th>번호</th>
										<th>출발지</th>
										<th>출발일시</th>
										<th>도착지</th>
										<th>도착일시</th>
										<th>소요시간</th>
										<th>가격</th>
										<th>삭제</th>
										<c:forEach var="bm" items="${bookmark}" varStatus="status">
											<tr style="background-color: white">
												<td>${status.count }</td>
												<td>${bm.origin }</td>
												<td>${bm.depDate }&nbsp;${bm.goDepTime}</td>
												<td>${bm.destination }</td>
												<td>${bm.arrDate}&nbsp;${bm.goArrTime }</td>
												<td>${bm.goDuration }</td>
												<td>${bm.goPrice }</td>
												<!--  삭제버튼 -->
												<td>
												<form method="POST" action="<%=request.getContextPath() %>/deleteBookMark">
													<input type="hidden" name="id" value="${sessionScope.id }">
													<input type="hidden" name="index" value="${status.count}">
													<button type="submit" class="btn btn-default btn-sm">
														<span class="glyphicon glyphicon-trash"></span>삭제
													</button></form>
												</td>
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
	<!-- /.container -->

	<jsp:include page="/main/login.jsp" />
	<jsp:include page="/main/join.jsp" />
</body>

</html>
