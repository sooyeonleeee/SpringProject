<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="modal fade" id="join" tabindex="-1" role="dialog"
	aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1>가입하기</h1>
			</div>
			<div class="modal-body">
				<form action="http://localhost:9090/SpringProject/join.do" id="joinform" method="post">
					<table class="table table-bordered class="col-md-8">
						<tr>
							<th class="col-md-4">아이디</th>
							<td class="col-md-8"><p class="form-inline">
									<input type="text" class="form-control " id="join_id" name="id"
										size="10px">
									<button type="button" class="btn btn-default" id="id_dup">중복확인</button>
								</p></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td class="col-md-8"><input name="pwd" type="password" id="sky_pw1"
								class="form-control " name="sky_pw"></td>
						</tr>
						<tr>
							<th>패스워드 확인</th>
							<td class="col-md-8"><input type="password" id="sky_pw2"
								class="form-control "></td>
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
						<button type="submit" id="joinbtn"
							class="btn btn-primary btn-hover-green" data-action="save"
							role="button">가입하기</button>
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

<script type="text/javascript">
	var sky_id = $("#join_id");
	var sky_pw1 = $("#sky_pw1");
	var sky_pw2 = $("#sky_pw2");
	var id_dup = false;
	$(function() {
		$("#id_dup").click(function() {
		if(sky_id.val() != ""){
			$.ajax({
				url : 'http://localhost:9090/SpringProject/duplicate.do',
				dataType : "json",
				type : "post",
				data : {
					"id" : sky_id.val()
				},
				success : function(data) {
					if (data.result == true) {
						alert("중복된 아이디 존재");
						sky_id.focus();
						sky_id.val("");
					} else {
						id_dup = true;
						$("#id_dup").attr("disabled",true);
						alert("사용가능");
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}

			});
		}else{
			alert("아이디를 입력해주세요");
		}
			
		});
		$("#joinbtn").click(function() {
			
			if(id_dup==false){
				alert("중복확인이 필요합니다");
			}else{
				if(sky_pw1.val()==sky_pw1.val()){
					
					alert("가입성공");
					$("#joinform").submit();
					
				}else{
					alert("비밀번호가 틀립니다");
				}	
			}
			
		});

	});
</script>
