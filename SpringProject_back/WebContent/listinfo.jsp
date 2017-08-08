<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/header.jsp" />
<!-- �޴� -->
<div class="container">
	<div class="row">
		<div class="panel panel-default" style="margin-left: 20px">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-11">
						<b><h2>���� ����Ȯ��</h2></b>
					</div>
					<div class="col-sm-1">
						<br> &nbsp;<img alt="" src="http://localhost:8087/SpringProject/resources/img/staon.png">
					</div>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>���³� ��߽ð�<���� �պ� ����></b>
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
								<b>Ƽ���� �װ� TW719</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">�ѽð�</div>
								<div class="col-sm-4">
									<p>���� 6:10</p>
									<p>���� 7:15</p>
								</div>
								<div class="col-sm-4">
									<p>GMP ���� ����</p>
									<p>CJU ���ְ���</p>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-sm-6 text-center">�ð�</div>
								<div class="col-sm-6 text-center">dd</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>���³� ��߽ð�<���� �պ� ����></b>
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
								<b>Ƽ���� �װ� TW719</b>
							</div>
							<div class="panel-body">
								<div class="col-sm-4">�ѽð�</div>
								<div class="col-sm-4">
									<p>���� 6:10</p>
									<p>���� 7:15</p>
								</div>
								<div class="col-sm-4">
									<p>GMP ���� ����</p>
									<p>CJU ���ְ���</p>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-sm-6 text-center">�ð�</div>
								<div class="col-sm-6 text-center">dd</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<div class="panel-body" style="margin-left: 20px">
				<section>
					<h4>
						<b>Ƽ���� �����Ͻʽÿ�</b>
					</h4>
				</section>
				<div class="row">
					<div class="col-sm-7">
						<ul class="list-group">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#y_btn">
										<b>�������� �о����</b>
									</button>
									<div id="y_btn" class="collapse well">
										<p>
											ǥ�õ� ��ݿ��� ��� ���� �� �����ᰡ ���ԵǾ� ������, ���� ���� ������Ʈ���� <em>Ƽ���� ��������, ���� ����, ���</em>�� �ݵ�� Ȯ���Ͻñ� �ٶ��ϴ�.
										</p>
										<ul>
											<li><p class="fss-bold">�߰� ��� Ȯ��</p>
												<p>
													�Ϻ� �װ���/������� ��� <em>���Ϲ�</em>, <em>����</em> �Ǵ� <em>�ſ� ī��</em> ��뿡 ���� �߰� ����� �ΰ��մϴ�.<a href="/airlinefees" title="�� â���� ����" target="_blank" class="airline-fees-link">�װ��� ������</a> ����.
												</p></li>
											<li><p class="fss-bold">12~16�� �°��� ���� �̿� ����� Ȯ���Ͻʽÿ�.</p>
												<p>��ȣ�ڸ� �������� �ʰ� ȥ�� �����ϴ� � �°����Դ� ���� ������ ����� �� �ֽ��ϴ�.</p></li>
										</ul>
									</div>
								</div>
								<div class="panel-body">
									<div class="col-sm-6 text-left">�װ��̸�</div>
									<div class="col-sm-3 bt">
										<h4>
											<b>����</b>
										</h4>
									</div>
									<div class="col-sm-3 text-center">
										<button type="button" class="btn btn-info btn-lg">����</button>
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
