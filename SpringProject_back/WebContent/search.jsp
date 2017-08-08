<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Custom CSS -->
<link href="resource/css/shop-item.css" rel="stylesheet">
<link href="resource/css/table-item.css" rel="stylesheet">
<link href="resource/css/nav-bar.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="resource/css/reset.css" rel="stylesheet">
<link href="resource/css/test.css" rel="stylesheet">
<link href="resource/css/style.css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
   rel="stylesheet" type="text/css">
   

</head>
<body>

	<!-- Header -->
	<jsp:include page = "header.jsp"></jsp:include>
	
	<!-- Nav bar -->
	<ul class="nav nav-tabs-primary">	
	
    <li role="presentation" class="active"><a href="#"><span class="glyphicon glyphicon-plane"></span> 항공권</a></li>
    <li role="presentation"><a href="#"><span class="glyphicon glyphicon-bed"></span>  호텔</a></li>
    <li role="presentation"><a href="#"> <i class="fa fa-automobile"></i> 렌터카</a></li>
	</ul>
	
	<ol class="breadcrumb-primary">
		<li> <i class="fa fa-search" style="font-size:20px;color:white;"></i>
		                  
		         <div class="searchTop">
		         	<span class="start"> 서울 </span>
		         	<ul class="top_Line">
		         		<li class="top_line"></li>
		         	</ul>
		         	
		         	<div class ="info">
		         		<span class="info_dep">
		         			성인석
		         		</span>
		         	</div>
		         	
		         </div>         
		
		 </li>
	</ol>
	
<!-- 	
	  <div class="depart">
		     <span class="station-tooltip" data-id="11876">
		     <span class="times">오후 1:50</span><br> 
		     <span class="stop-station" data-id="11876">GMP</span></span>
		                  </div> -->
		                  
		<div class ="container" >	
			<div class = "row" id="detCon">
				<div class="col-sm-2">
					  <div class="list-group panel">
					    <a class="list-group-item list-group-item strong text-center" style="background: #009ce0; color: white;" data-toggle="collapse"> 정렬 </a>
					    <a href="#demo1" class="list-group-item list-group-item-success strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-clock-o" aria-hidden="true"></i> 시간 설정 <i class="fa fa-caret-down"></i></a>
					    <div class="collapse list-group-submenu" id="demo1">
					      <a href="#" class="list-group-item"><input type="checkbox">  Audio Content</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  Interactive Media</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  Learning Game</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  Video</a>
					    </div> 
					    <a href="#demo2" class="list-group-item list-group-item strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-plane" aria-hidden="true"></i> 항공사 <i class="fa fa-caret-down"></i></a>
					    <div class="collapse list-group-submenu" id="demo2">
					      <a href="#" class="list-group-item"><input type="checkbox">  대한항공(KE)</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  아시아나항공(OZ)</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  진에어(JIN)</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  제주항공(7C)</a>
					    </div>
					    <a href="#demo3" class="list-group-item list-group-item strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-credit-card" aria-hidden="true"></i> 가격 <i class="fa fa-caret-down"></i></a>
					    <div class="collapse list-group-submenu" id="demo3">
					      <a href="#" class="list-group-item"><input type="checkbox">  최고가</a>
					      <a href="#" class="list-group-item"><input type="checkbox">  최저가</a>
					    </div>
					      <a class="list-group-item list-group-item strong text-center" style="background: #009ce0; color: white;" data-toggle="collapse"><button type="button" class="btn btn-success btn-sm">SEARCH</button> </a>
					  </div>
				</div>
			<div class="col-sm-10">		
				
				<article data-cid="model_79942" data-deeplink="details" class="card result clearfix no-details   " ontouchstart="">
				
					<li class="day-list-item clearfix " style="list-style:none">
				    
				         <div class="card-body clearfix">
				            <div class="clearfix carrier">
					               <div class="airline">
					                  <img src="//logos.skyscnr.com/images/airlines/favicon/E1.png"
					                     alt="이스타항공" onerror="__imgErrRemove__(this)"> <span>이스타항공</span>
					               </div>
				            </div>
				            
		            <section data-id="0" class="card-main leg clearfix dept">
		               <div class="big-airline">
		                  <img class="big"
		                     src="//logos.skyscnr.com/images/airlines/small/E1.png"
		                     alt="이스타항공" data-name="이스타항공" onerror="__logoReplace__(this)">
		               </div>
		               
		               <div class="leg-details long-date-format">
		                  <div class="depart">
		                     <span class="station-tooltip" data-id="11876"> <span
		                        class="times">오후 1:50</span><br> <span class="stop-station"
		                        data-id="11876">GMP</span></span>
		                  </div>
		                  
		                  <div class="stops">
		                     <span class="duration">1시간 10분</span>
		                     <ul class="stop-line">
		                        <li class="stop-line"></li>
		                     </ul>
		                     <div class="leg-stops no-stops">
		                        <span class="leg-stops-green leg-stops-label">직항 </span><span
		                           class="leg-stops-station"></span>
		                     </div>
		                  </div>
		                  
		                  <div class="arrive">
		                     <span class="station-tooltip" data-id="10562"> <span
		                        class="times">오후 3:00</span><br> <span class="stop-station"
		                        data-id="10562">CJU</span></span>
		                  </div>
		                  
		                  <div class="clearfix"></div>
		               </div>
		            </section>
		            
		            <section data-id="1" class="card-main leg clearfix retn">
		               <div class="big-airline">
		                  <img class="big"
		                     src="//logos.skyscnr.com/images/airlines/small/E1.png"
		                     alt="이스타항공" data-name="이스타항공" onerror="__logoReplace__(this)">
		               </div>
		               
		               <div class="leg-details long-date-format">
		                  <div class="depart">
		                     <span class="station-tooltip" data-id="10562"> <span
		                        class="times">오후 9:25</span> <span class="stop-station"
		                        data-id="10562">CJU</span></span>
		                  </div>
		                  <div class="stops">
		                     <span class="duration">1시간 10분</span>
		                     <ul class="stop-line">
		                        <li class="stop-line"></li>
		                     </ul>
		                     <div class="leg-stops no-stops">
		                        <span class="leg-stops-green leg-stops-label">직항 </span> <span
		                           class="leg-stops-station"></span>
		                     </div>
		                  </div>
		                  
		                  <div class="arrive">
		                     <span class="station-tooltip" data-id="11876"> <span
		                        class="times">오후 10:35</span> <span class="stop-station"
		                        data-id="11876">GMP</span></span>
		                  </div>
		                  
		                  <div class="clearfix"></div>
		               </div>
		            </section>
		         </div>
		         
		         <aside class="notch-holder"></aside>
		         <div class="mainquote-cba clearfix">
			            <div class="mainquote-wrapper-cba">
				               <div class="mq-container-wrapper">
					                  <div class="mq-container">
						                     <div class="cba-price">
						                        <div class="mainquote-group-price">
						                           <a href="#" data-deeplink="details" target="_blank"
						                              class="mainquote-price expand-cba select-action"> <span
						                              class="" aria-hidden="true"></span>50,000
						                           </a>
						                        </div>
						                     </div>
						                     <a class="fss-bpk-button expand-cba select-action" href="#"
						                        title="선택" data-deeplink="details" target="_blank"> <span
						                        class="bpk-text">선택 >&nbsp;</span> <span
						                        class="bpk-icon-sm bpk-icon-pointer bpk-icon-sm--align-to-button"></span></a>
					                  </div>
				               </div>
			            </div>
			          </div>		    
			      
			   </li>
	    </article>
			    
	   </div>
	</div></div>
	
</body>
</html>