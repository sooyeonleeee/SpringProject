<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- line modal -->
<div class="modal fade" id="login" tabindex="-1" role="dialog"
	aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1>�α���</h1>
			</div>
			<div class="modal-body">
				<form id="logintest">
					<table class="table table-bordered" class="col-md-8">
						<thead>
							<tr>
								<th class="col-md-4">���̵�</th>
								<td class="col-md-8"><input type="text"
									class="form-control " name="id" id="login_id">
							</tr>
							<tr>
								<th>�н�����</th>
								<td class="col-md-8"><input type="password"
									class="form-control" name="pwd" id="login_pwd"></td>
							</tr>
						</thead>
					</table>
					<!-- content goes here -->
				</form>
			</div>
			<div class="modal-footer">
				<div class="btn-group btn-group-justified" role="group"
					aria-label="group button">
					<div class="btn-group" role="group">
						<button type="button" id="skylogin"
							class="btn btn-primary btn-hover-green" data-action="save"
							role="button">�α���</button>
					</div>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							role="button">���</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- line modal -->
<script type="text/javascript">
	var test_id = $("#login_id");
	var test_pw = $("#login_pwd");
	$(document).ready(function(){
		$("#skylogin").click(function() {
			console.log(test_id.val());
			console.log(test_pw.val());
			$.ajax({
				url : 'http://localhost:8087/SpringProject/login.do',
				dataType : "json",
				type : "post",
				data : {
					"id" : test_id.val(),
					"pwd" : test_pw.val()
				},
				success : function(data) {
					if (data.result == false) {
						alert("�α����� �����߽��ϴ�\n �ٽ� �Է����ּ���");
						test_id.val("");
						test_pw.val("");
					} else {
						location.href = "http://localhost:8087/SpringProject/";

					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}

			});

		});

		$("input[name^=id]").keyup(function(event) {

			if (!(event.keyCode >= 37 && event.keyCode <= 40)) {

				var inputVal = $(this).val();

				$(this).val(inputVal.replace(/[^a-z0-9!@.]/gi, ''));

			}

		});

	});
	
</script>

