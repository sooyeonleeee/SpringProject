<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full" lang="en">
<!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Commit</title>
<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="./resources/css/full.css" rel="stylesheet">
<!-- jQuery -->
<script src="./resources/js/jquery.js"></script>
<link href="./resources/css/logo-nav.css" rel="stylesheet">
<!-- Bootstrap Core JavaScript -->
<script src="./resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>

	<div>
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header" style="padding: 15px">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand  navbar-brand-centered" href="#">BRANDING</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<c:if test="${ empty sessionScope.id}">
						<li><a data-toggle="modal" href="#login"><button
									class="btn btn-info">Login</button></a></li>
						<li><a data-toggle="modal" href="#join"><button
									class="btn btn-info">회원가입</button></a></li>
					</c:if>
					
					<c:if test="${not empty sessionScope.id}">
						<li><a href=""><button type="button" class="btn btn-info">${sessionScope.id}님
									&nbsp;환영합니다</button></a></li>
						<li><a href="http://localhost:9090/SpringProject/logout.do"><button type="button" class="btn btn-info">LOGOUT</button></a></li>
					</c:if>
				</ul>
			</div>
		</div>
		</nav>
	</div>

	<div id="content">
		<div id="container">
			<div id="block">
				<div class="well">
					<form class="form-inline">
						<table class="table table-bordered">
							<thead>
								<th>출발지</th>
								<th>도착지</th>
								<th>가는시간</th>
								<th>오는시간</th>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="ui-widget">
											<input type="text" id="search1" class="form-control">
										</div>
									</td>
									<td><div class="ui-widget">
											<input type="text" id="search2" class="form-control">
										</div></td>
									<td><input type="text" class="form-control"
										id="datepicker1"></td>
									<td><input type="text" class="form-control"
										id="datepicker2"></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4"><input type="submit" value="항공권검색"
										class="btn btn-info"></td>
								</tr>
							</tfoot>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<footer class="container-fluid text-center">
	<p>Footer Text</p>
	</footer>

	<jsp:include page="/main/login.jsp" />
	<jsp:include page="/main/join.jsp" />


</body>
</html>
<script>
	$(function() {
		var availableTags = [ "ActionScript", "AppleScript", "Asp", "BASIC",
				"C", "C++", "Clojure", "COBOL", "ColdFusion", "Erlang",
				"Fortran", "Groovy", "Haskell", "Java", "JavaScript", "Lisp",
				"Perl", "PHP", "Python", "Ruby", "Scala", "Scheme" ];
		$("#search1 ,#search2").autocomplete({
			source : availableTags
		});

		$("#datepicker1,#datepicker2").datepicker({
			dateFormat : "yy-mm-dd"
		});

	});
</script>
