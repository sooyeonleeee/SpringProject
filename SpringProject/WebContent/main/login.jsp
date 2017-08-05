<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- line modal -->
<div class="modal fade" id="login" tabindex="-1" role="dialog"
	aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1>로그인</h1>
			</div>
			<div class="modal-body">

				<table class="table table-bordered" class="col-md-8">
					<thead>
						<tr>
							<th class="col-md-4">아이디</th>
							<td class="col-md-8"><input type="text"
								class="form-control " size="10px" name="sky_id" id="sky_id">
						</tr>
						<tr>
							<th>패스워드</th>
							<td class="col-md-8"><input type="text" class="form-control"
								name="sky_pw" id="sky_pw"></td>
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
							role="button">로그인</button>
					</div>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							role="button">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- line modal -->
<script type="text/javascript">
	var sky_id = $("#sky_id");
	var sky_pw = $("#sky_pw");
	$("#skylogin").click(function() {

		$.ajax({
			url : 'http://localhost:9090/SpringProject/login.do',
			dataType : "json",
			type : "post",
			data : {
				"id" : sky_id.val()
			},
			success : function(data) {
				alert("성공:" + data.id);
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "error:" + error);
			}

		});
	});
</script>

