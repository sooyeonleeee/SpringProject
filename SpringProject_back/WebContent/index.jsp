<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/header.jsp" />
<div class="container">
		<div id="row" style="margin-top: 250px">
			<div class="well">
				<form class="form-inline" action="http://localhost:8087/SpringProject/search?id=${sessionScope.id }" method="post">
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
										<input type="text" id="search1"  class="form-control"> <input type="hidden" class="search1_code" name="departure" >
									</div>
								</td>
								<td><div class="ui-widget">
										<input type="text" id="search2" class="form-control"> <input type="hidden" name="arrival" class="search2_code">
									</div></td>
								<td><input type="text" name="depDate" class="form-control" id="datepicker1"></td>
								<td><input type="text" name="arrDate" class="form-control" id="datepicker2"></td>
							</tr>
							<tr>
								<td><b>성인석</b></td>
								<td><b>소아미만</b></td>
								<td colspan="2"><b>경로</b></td>
							</tr>
							<tr>
								<td>
									<div class="input-group number-spinner">
										<span class="input-group-btn">
											<button type="button" class="btn btn-default" data-dir="dwn" >
												<span class="glyphicon glyphicon-minus"></span>
											</button>
										</span> <input type="text" class="form-control text-center" value="2" name="adultCount" > <span class="input-group-btn">
											<button type="button" class="btn btn-default" data-dir="up">
												<span class="glyphicon glyphicon-plus"></span>
											</button>
										</span>
									</div>
								</td>
								<td>
									<div class="input-group number-spinner">
										<span class="input-group-btn">
											<button type="button" class="btn btn-default" data-dir="dwn">
												<span class="glyphicon glyphicon-minus"></span>
											</button>
										</span> <input type="text" class="form-control text-center" value="0" name="childCount"> <span class="input-group-btn">
											<button type="button" class="btn btn-default" data-dir="up">
												<span class="glyphicon glyphicon-plus"></span>
											</button>
										</span>
									</div>
								</td>
								<td colspan="2">
									<span class="col-sm-3">
										<label for="path1"><input type="radio" class="form-control text-center" name="isOneWay"  value="1" id="path1" checked="TRUE">왕복</label>
									</span>
									<span class="col-sm-3">
										<label for="path2"><input type="radio" class="form-control text-center" name="isOneWay"value="0" id="path2">편도</label>
									</span>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="4" class="text-center"><input type="submit" value="항공권검색" class="btn btn-info"></td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</div>
	</div>

<jsp:include page="/main/login.jsp" />
<jsp:include page="/main/join.jsp" />
</body>
</html>
<script>
	$(function() {
		
		$("html").addClass("full1");
		
		var availableTags = [
			{
				value : "인천국제공항",
				data : "ICN"
			}, {
				value : "김포국제공항",
				data : "GMP"
			}, {
				value : "김해국제공항",
				data : "PUS"
			}, {
				value : "제주국제공항",
				data : "CJU"
			}, {
				value : "양양국제공항",
				data : "YNY"
			}, {
				value : "청주국제공항",
				data : "CJJ"
			}, {
				value : "대구국제공항",
				data : "TAE"
			}, {
				value : "포항공항",
				data : "KPO"
			}, {
				value : "원주공항",
				data : "WJU"
			}, {
				value : "울산공항",
				data : "USN"
			}, {
				value : "사천공항",
				data : "HIN"
			}, {
				value : "군산공항",
				data : "KUV"
			}, {
				value : "여수공항",
				data : "RSU"
			}, {
				value : "울릉공항",
				data : "VDH"
			} ];

		$("#search1").autocomplete({
			source : availableTags,
			select : function(event, ui) {
				$(".search1_code").val(ui.item.data);
			}
		});

		$("#search2").autocomplete({
			source : availableTags,
			select : function(event, ui) {
				$(".search2_code").val(ui.item.data);
			}
		});

		$("#datepicker1,#datepicker2").datepicker({
			dateFormat : "yy-mm-dd"
		});

		$(document).on('click', '.number-spinner button',
			function() {
				var btn = $(this),
					oldValue = btn
						.closest('.number-spinner').find('input').val()
						.trim(),
					newVal = 0;

				if (btn.attr('data-dir') == 'up') {
					newVal = parseInt(oldValue) + 1;
				} else {
					if (oldValue >= 1) {
						newVal = parseInt(oldValue) - 1;
					} else {
						newVal = 1;
					}
				}
				btn.closest('.number-spinner').find('input').val(newVal);
			});
		
		 $(document).ready(function () {
			 $('#path2').click(function(){
				 $('#datepicker2').val($('#datepicker1').val());
			 });
			 
			 $('#datepicker1').on("change paste keyup", function(){
				 if($('#path2').is(':checked')){
					$('#datepicker2').val($('#datepicker1').val());
				 }
			 });
			 
	     });
		
	});
</script>
