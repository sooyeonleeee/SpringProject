<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/full.css" rel="stylesheet">

<!-- jQuery -->
<script src="resources/js/jquery.js"></script>

<link href="resources/css/logo-nav.css" rel="stylesheet">

<!-- Bootstrap Core JavaScript -->
<script src="resources/js/bootstrap.min.js"></script>

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
						<li><a href="http://localhost:8087/SpringProject/logout.do"><button type="button" class="btn btn-info">LOGOUT</button></a></li>
					</c:if>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<jsp:include page="/main/login.jsp" />
<jsp:include page="/main/join.jsp" />
	