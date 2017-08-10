<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>회원정보 페이지</title>
<!-- Bootstrap Core CSS -->
<!-- <link href="./resources/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- Custom CSS -->
<link href="resources/css/shop-item.css" rel="stylesheet">
<link href="resources/css/table-item.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 비밀번호 창 숨기기 보여주기 -->
<script>

	$(function() {
		var nowPwd = $("#nowPwd");
		var newPwd1 = $("#newPwd1");
		var newPwd2 = $("#newPwd2");
		var id = '${sessionScope.id}';

		$("#changePW").click(function() {
			$("#PasswordContainer").fadeIn();

			if ($("#PasswordContainer").fadeIn()) {
				$("#PasswordContainer").hide();
			}

		});




		$("#btn_submit").click(function() {

			if (newPwd1.val() == newPwd2.val()) {
	
				$.ajax({
					url : 'http://localhost:8087/SpringProject/changePwd.do',
					dataType : "json",
					type : "post",
					data : {
						"id" : id,
						"nowPwd" : nowPwd.val(),
						"newPwd" : newPwd1.val()
					},
					success : function(data) {
						if(data.result==false){
							alert("기존 비밀번호 틀림니다");
						}
						else{
							alert("변경성공");
							 location.reload();
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "error:" + error);
					}

				});
			} else {
				alert("새 비밀번호가 틀립니다");
			}



		});
	});
</script>
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<!-- 기본 정보 -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="list-group">
					<a href="<%=request.getContextPath() %>/mypage?id=${sessionScope.id}" class="list-group-item"> <span class="glyphicon glyphicon-user"></span> 회원정보
					</a> <a href="<%=request.getContextPath() %>/bookmark?id=${sessionScope.id}" class="list-group-item"> <span class="glyphicon glyphicon-list-alt"></span> 즐겨찾기
					</a> <a href="<%=request.getContextPath() %>/history?id=${sessionScope.id}" class="list-group-item"> <span class="glyphicon glyphicon-list-alt"></span> 검색 내역
					</a>
				</div>
			</div>
			<div class="col-md-9">
				<div id="con" class="well" style="background-color: white">
					<div class="conn">기본정보</div>
					<hr>
					<div class="row">
						<div class="col-md-3">이메일 주소</div>
						<div class="col-md-9">
							<table>
								<tr>
									<td>${sessionScope.id}</td>
								</tr>
							</table>
						</div>
						<hr>
						<div class="col-md-3">
							<button id="changePW" class="btn btn-info">비밀번호 변경</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div id="PasswordContainer" class="col-md-9" style="display: none">
				<div class="well" style="background-color: white">
					<div class="row">
						<%-- 					<form action="<%= request.getContextPath()%>/changePwd" method="post" name="myForm"> --%>
						<!--  현재 비밀번호 -->
						<label class="col-md-3 control-label" for="piCurrPass">현재 비밀번호</label>
						<div class="col-md-9">
							<input type="password" class="input-md form-control" name="nowPwd" id="nowPwd" placeholder="Now Password" autocomplete="off">
						</div>
						<br> <br> <br>
						<!-- 새 비밀번호 -->
						<div class="col-md-3">새 비밀번호</div>
						<div class="col-md-9">
							<input type="password" class="input-md form-control" name="pwd" id="newPwd1" placeholder="New Password" autocomplete="off">
						</div>
						<br> <br> <br>
						<!--  새 비밀번호 -->
						<div class="col-md-3">새 비밀번호</div>
						<div class="col-md-9">
							<input type="password" class="input-md form-control" name="new1Password" id="newPwd2" placeholder="Repeat Password" autocomplete="off">
						</div>
						<br> <br>
						<div class="container">
							<button id="btn_submit" type="button" class="btn btn-primary btn-sm center">Submit</button>
							<button type="reset" id="cancel" class="btn btn-danger btn-sm center">Cancel</button>
						</div>
						<!-- 					</form> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<div class="container">
		<hr>
		<!-- 
        Footer
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer> -->
	</div>
	<!-- /.container -->
	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
