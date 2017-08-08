<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/header.jsp" />
<!-- 메뉴 -->
<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<b>여행 일정확인</b>
			</div>
			<div class="panel-body">
				<section>
					<h4>
						<b>가는날 출발시간</b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 40px 100px" class="btn btn-default" data-toggle="collapse" data-target="#demo"><div class="col-sm-4 well" >INC</div><div class="col-sm-4">  <img alt="" src="http://localhost:8087/SpringProject/resources/img/arrow.png" width="50"></div><img alt=""  src="http://localhost:8087/SpringProject/resources/img/airplane.png"><div class="col-sm-4">INC</div></div>
					<div id="demo" class="collapse" style="padding: 40px 250px"></div>
				</div>
			</div>
			<div class="panel-body">
				<section>
					<h4>
						<b>가는날 출발시간</b>
					</h4>
				</section>
				<div class="row">
					<div type="button" style="padding: 40px 250px" class="btn btn-default" data-toggle="collapse" data-target="#demo">Simple collapsible</div>
					<div id="demo" class="collapse" style="padding: 40px 250px">ea commodo consequat.</div>
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
