<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/include/header.jsp" />
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
										<input type="hidden" class="search1_code" value="">
									</div>
								</td>
								<td><div class="ui-widget">
										<input type="text" id="search2" class="form-control">
										<input type="hidden" class="search2_code">
									</div></td>
								<td><input type="text" class="form-control" id="datepicker1"></td>
								<td><input type="text" class="form-control" id="datepicker2"></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="4"><input type="submit" value="항공권검색" class="btn btn-info"></td>
							</tr>
						</tfoot>
					</table>
				</form>
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
	$(function() {
		var availableTags =[
			 {value:"인천국제공항",data:"ICN" },  
			 {value:"김포국제공항",data:"GMP" },
			 {value:"김해국제공항",data:"PUS" },
			 {value:"제주국제공항",data:"CJU" },
			 {value:"양양국제공항",data:"YNY" },
			 {value:"청주국제공항",data:"CJJ" },
			 {value:"대구국제공항",data:"TAE" },
			 {value:"포항공항",data:"KPO" },
			 {value:"원주공항",data:"WJU" },
			 {value:"울산공항",data:"USN" },
			 {value:"사천공항",data:"HIN" },
			 {value:"군산공항",data:"KUV" },
			 {value:"여수공항",data:"RSU" },
			 {value:"울릉공항",data:"VDH" } 
			 ];
		$("#search1 ,#search2").autocomplete({
			source : availableTags,
			select : function(event, ui) {
				var value = ui.item.value;
				var code = value.split(":");
			
			}
		
		});
		$(".search2_code").val(111);
		$("#datepicker1,#datepicker2").datepicker({
			dateFormat : "yy-mm-dd"
		});

	});
</script>
