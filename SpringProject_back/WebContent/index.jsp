<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<style>
	
.jeju_btn {
		background-image:
			url(http://localhost:8087/SpringProject/resources/img/jeju_img.jpg);
		width:410px; /* or whatever */
		height:280px; /* or whatever */
	}
	
.busan_btn {
		background-image:
			url(http://localhost:8087/SpringProject/resources/img/busan_img.jpg);
		width:320px; /* or whatever */
		height:280px; /* or whatever */
	}
	
.yeosu_btn {
		background-image:
			url(http://localhost:8087/SpringProject/resources/img/yeosu_img.jpg);
		width:320px; /* or whatever */
		height:280px; /* or whatever */
	}		
	
.form-inline{
	float:left;
}

.li{
line-style:none;
}	

</style>
     
</head>

<body>
<jsp:include page="include/header.jsp" />


<div class="container">
<<<<<<< HEAD
      <div id="row" style="margin-top: 75px">
         <div class="well">
            <form class="form-inline" action="http://localhost:8087/SpringProject/search?id=${sessionScope.id}" method="post">
               <table class="table no-border" border="0">
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
                              <input type="text" id="search1"  class="form-control" required="required" size="28"> <input type="hidden" class="search1_code" name="departure"  >
                           </div>
                        </td>
                        <td><div class="ui-widget">
                              <input type="text" id="search2" class="form-control" required="required" size="28"> <input type="hidden" name="arrival" class="search2_code">
                           </div></td>
                        <td><input type="text" name="depDate" class="form-control" id="datepicker1" required="required"></td>
                        <td><input type="text" name="arrDate" class="form-control" id="datepicker2" required="required"></td>
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
                              </span> <input type="text" class="form-control text-center" value="1" name="adultCount" > <span class="input-group-btn">
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
                              </span> <input type="text" class="form-control text-center" value="1" name="childCount"> <span class="input-group-btn">
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
                        <td colspan="4" class="text-center"><input type="submit" value="항공권검색" class="btn search_info"></td>
                     </tr>
                  </tfoot>
               </table>
            </form>
         </div>
      </div>
   </div>

	<section id = "second" style="height:80vh;">
		
	
			<div class="mid_container">	
			<h1>추천상품</h1>  (11월1일 ~ 11월 3일)<br><br>
			<br>
				<form class="form-inline" action="http://localhost:8087/SpringProject/search?id=${sessionScope.id}" method="post">	
					<input type="hidden" name="departure" value="GMP">
					<input type="hidden" name="arrival" value="CJU">
					<input type="hidden" name="depDate" value="2017-11-01">
					<input type="hidden" name="arrDate" value="2017-11-03">
					<input type="hidden" name="isOneWay" value="1">
					<input type="hidden" name="adultCount" value=1>
					<input type="hidden" name="childCount" value=0>				
					<button type="submit" class="jeju_btn"></button>
				</form>
				
				<form class="form-inline" action="http://localhost:8087/SpringProject/search?id=${sessionScope.id}" method="post">	
					<input type="hidden" name="departure" value="GMP">
					<input type="hidden" name="arrival" value="PUS">
					<input type="hidden" name="depDate" value="2017-11-01">
					<input type="hidden" name="arrDate" value="2017-11-03">
					<input type="hidden" name="isOneWay" value="1">
					<input type="hidden" name="adultCount" value=1>
					<input type="hidden" name="childCount" value=0>				
					<button type="submit" class="busan_btn"></button>
				</form>
				
				<form class="form-inline" action="http://localhost:8087/SpringProject/search?id=${sessionScope.id}" method="post">	
					<input type="hidden" name="departure" value="GMP">
					<input type="hidden" name="arrival" value="RSU">
					<input type="hidden" name="depDate" value="2017-11-01">
					<input type="hidden" name="arrDate" value="2017-11-03">
					<input type="hidden" name="isOneWay" value="1">
					<input type="hidden" name="adultCount" value=1>
					<input type="hidden" name="childCount" value=0>				
					<button type="submit" class="yeosu_btn"></button>
=======
		<div id="row" style="margin-top: 75px">
			<div class="well">
				<form class="form-inline" action="http://localhost:8087/SpringProject/search" method="post">
					<table class="table no-border" border="0">
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
										<input type="text" id="search1"  class="form-control" required="required" size="28"> <input type="hidden" class="search1_code" name="departure"  >
									</div>
								</td>
								<td><div class="ui-widget">
										<input type="text" id="search2" class="form-control" required="required" size="28"> <input type="hidden" name="arrival" class="search2_code">
									</div></td>
								<td><input type="text" name="depDate" class="form-control" id="datepicker1" required="required"></td>
								<td><input type="text" name="arrDate" class="form-control" id="datepicker2" required="required"></td>
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
										</span> <input type="text" class="form-control text-center" value="1" name="adultCount" > <span class="input-group-btn">
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
										</span> <input type="text" class="form-control text-center" value="1" name="childCount"> <span class="input-group-btn">
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
>>>>>>> branch 'master' of https://github.com/sooyeonleeee/SpringProject.git
				</form>
			</div>

	</section>
	
	<section id = "third">

	   <div class="footer-bottom"  style="height:10vh">
        <div class="container">
            <p class="pull-left"> Copyright © Footer 2017. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
		</section>
</body>

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
      $.datepicker.regional['ko'] = {
         closeText : '닫기',
         prevText : '이전달',
         nextText : '다음달',
         currentText : '오늘',
         monthNames : [ '1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)', '5월(MAY)', '6월(JUN)',
            '7월(JUL)', '8월(AUG)', '9월(SEP)', '10월(OCT)', '11월(NOV)', '12월(DEC)' ],
         monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
            '7월', '8월', '9월', '10월', '11월', '12월' ],
         dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
         dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
         dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
         weekHeader : 'Wk',
         dateFormat : 'yy-mm-dd',
         firstDay : 0,
         isRTL : false,
         showMonthAfterYear : true,
         yearSuffix : '',
         changeMonth : true,
         changeYear : true,
         minDate:'0d',
         yearRange : 'c-99:c+99',
      };


      $("#search1").autocomplete({
         source : availableTags,
         minLength : 0,
         select : function(event, ui) {
            $(".search1_code").val(ui.item.data);
         }
      }).focus(function() {
         $(this).autocomplete('search', $(this).val());

      });
      $("#search2").autocomplete({
         source : availableTags,
         minLength : 0,
         select : function(event, ui) {
            $(".search2_code").val(ui.item.data);

         }
      }).focus(function() {
         $(this).autocomplete('search', $(this).val());

      });




      $.datepicker.setDefaults($.datepicker.regional['ko']);

      $('#datepicker1').datepicker();
      $('#datepicker1').datepicker("option", "maxDate", $("#datepicker2").val());
      $('#datepicker1').datepicker("option", "onClose", function(selectedDate) {
         $("#datepicker2").datepicker("option", "minDate", selectedDate);
      });

      $('#datepicker2').datepicker();
      $('#datepicker2').datepicker("option", "minDate", $("#datepicker1").val());
      $('#datepicker2').datepicker("option", "onClose", function(selectedDate) {
         $("#datepicker1").datepicker("option", "maxDate", selectedDate);
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


      $('#path2').click(function() {
         $('#datepicker2').val($('#datepicker1').val());
      });

      $('#datepicker1').on("change paste keyup", function() {
         if ($('#path2').is(':checked')) {
            $('#datepicker2').val($('#datepicker1').val());
         }
      });
      var result = '';
      $("#search").click(function(index) {
         if ($(".search1_code").val() == $(".search2_code").val()) {
            alert("같은장소");
            $("#search1,#search2").val('');
            $(".search1_code,.search2_code").val('');
         }else{
            $("#formsearch").submit();
         }
      });

      

   });
</script>