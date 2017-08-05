<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<div class="modal fade" id="join" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1>가입하기</h1>
				</div>
				<div class="modal-body">
					<form>
						<table class="table table-bordered class="col-md-8">
							<tr>
								<th class="col-md-4">아이디</th>
								<td class="col-md-8"><p class="form-inline">
										<input type="text" class="form-control " size="10px">
										<button class="btn btn-default">중복확인</button>
									</p></td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td class="col-md-8"><input type="password" id="sky_pw1" class="form-control " name="sky_pw"></td>
							</tr>
							<tr>
								<th>패스워드 확인</th>
								<td class="col-md-8"><input type="password" id="sky_pw2" class="form-control "></td>
							</tr>
							</thead>
						</table>
						<!-- content goes here -->
					</form>
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" id="joinbtn" class="btn btn-primary btn-hover-green" data-action="save" role="button">가입하기</button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal" role="button">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


