<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Custom CSS -->
<link href="resources/css/shop-item.css" rel="stylesheet">
<link href="resources/css/table-item.css" rel="stylesheet">
<link href="resources/css/nav-bar.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="resources/css/reset.css" rel="stylesheet">
<link href="resources/css/test.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
   rel="stylesheet" type="text/css">

<script type="text/javascript" src="resources/js/searchJS.js" charset="utf-8"></script>

</head>
<body>

	<!-- Header -->
	<jsp:include page = "include/header.jsp"></jsp:include>
	
<!-- 	<ul class="nav nav-tabs-primary">	
	
		    <li role="presentation" class="active"><a href="#"><span class="glyphicon glyphicon-plane"></span> 항공권</a></li>
		
	</ul> -->
	
	
		<ol class="breadcrumb-primary">
	 <li> 
		<div class="searchTop">
			<div class="icon">
				<i class="fa fa-search" style="font-size:15px;color:white;"></i>
			</div>
			
			<div class="searchStart">
				<span class="start"> 서울</span>
			</div>
			
			<div class="line">
			<ul class="top_Line">
		         			<li class="top_line"></li>
		        </ul>
			</div>
			
			<div class="searchArr">
				<span class="arr"> 김포</span>
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
					    <a class="list-group-item list-group-item strong text-center" style="background: #008ca8; color: white;" data-toggle="collapse"> 정렬 </a>
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
					      <a class="list-group-item list-group-item strong text-center" style="background: #008ca8; color: white;" data-toggle="collapse"><button type="button" class="btn btn-success btn-sm">SEARCH</button> </a>
					  </div>
				</div>
			<div class="col-sm-10">		
				
				<article data-cid="model_79942" data-deeplink="details" class="card result clearfix no-details   " ontouchstart="">
				
					<c:forEach var="item" items="${reList }" varStatus="stat">
						<c:set var="obj" value="${item}" scope="request"/>
						<li class="day-list-item clearfix " style="list-style:none">
					    
					         <div class="card-body clearfix">
					            <div class="clearfix carrier">
						               <div class="airline">
						                  <img class="korean_air" src="resources/img/korean_air.png"
			                     alt="대한항공" data-name="대한항공" onerror="__imgErrRemove__(this)"><span>${item.goFlightCarrier}</span>
						               </div>
					            </div>
					            
			            <section data-id="0" class="card-main leg clearfix dept">
			            
			            <c:choose>
			            	<c:when test="${item.goFlightCarrier eq 'KE'}">
			            		<div class="big-airline">
				                  <img class="korean_air"
				                     src="resources/img/korean_air.png"
				                     alt="대한항공" data-name="대한항공" onerror="__logoReplace__(this)">
			                     <%-- <span>${item.goFlightCarrier}</span> --%>
			             	  	</div>
			             	  </c:when>
			             	  
			             	  <c:when test="${item.goFlightCarrier eq 'OZ'}">
			            		<div class="big-airline">
				                  <img class="korean_air"
				                     src="resources/img/asiana_air.png"
				                     alt="아시아나항공" data-name="아시아나항공" onerror="__logoReplace__(this)">
			                     <%-- <span>${item.goFlightCarrier}</span> --%>
			             	  	</div>
			             	  </c:when>
			            	
			            </c:choose>
			            
			               <div class="leg-details long-date-format">
			                  <div class="depart">
			                     <span class="station-tooltip" data-id="11876"> <span
			                        class="times">${item.goDepTime}</span><br> <span class="stop-station"
			                        data-id="11876">${item.origin}</span></span>
			                  </div>
			                  
			                  <div class="stops">
			                     <span class="duration">${item.goDuration}분 소요</span>
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
			                        class="times">${item.goArrTime}</span><br> <span class="stop-station"
			                        data-id="10562">${item.destination}</span></span>
			                  </div>
			                  
			                  <div class="clearfix"></div>
			               </div>
			            </section>
			            
			            <c:if test="${not empty item.backFlightCarrier}" >
			            <section data-id="1" class="card-main leg clearfix retn">
			               <div class="big-airline">
			                  <img class="korean_air"
			                     src="resources/img/korean_air.png"
			                     alt="대한항공" data-name="대한항공" onerror="__logoReplace__(this)">
			                     <%-- <span>${item.backFlightCarrier}</span> --%>
			               </div>
			               
			               <div class="leg-details long-date-format">
			                  <div class="depart">
			                     <span class="station-tooltip" data-id="10562"> <span
			                        class="times">${item.backDepTime}</span> <br><span class="stop-station"
			                        data-id="10562">${item.destination}</span></span>
			                  </div>
			                  <div class="stops">
			                     <span class="duration">${item.backDuration}분 소요</span>
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
			                        class="times">${item.backArrTime}</span> <br><span class="stop-station"
			                        data-id="11876">${item.origin}</span></span>
			                  </div>
			                  
			                  <div class="clearfix"></div>
			               </div>
			            </section>
			            
			            </c:if>
			         </div>
			         
			         <aside class="notch-holder"></aside>
			         <div class="mainquote-cba clearfix">
				            <div class="mainquote-wrapper-cba">
					               <div class="mq-container-wrapper">
						                  <div class="mq-container">
							                     <div class="cba-price">
							                        <div class="mainquote-group-price">
							                           <a href="#" target="_blank"
							                              class="mainquote-price expand-cba select-action"> <span
							                              class="" aria-hidden="true"></span>${item.goPrice + item.backPrice}
							                           </a>
							                        </div>
							                     </div>
							                     <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal${stat.index }">
							                     	선택
							                     </button>
							                    <c:set var="id" value="${sessionScope.id }" />

												<c:if test="${not empty id}">
    												<c:set var="login" value="t" scope="request"/>
    												<c:set var="bookmarklist" value="${sessionScope.bmlist }" scope="request" />
												</c:if>

												<div id="bmtest">
												
											
												
												
												
												</div>

												<div class="modal fade" id="myModal${stat.index }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												  <div class="modal-dialog modal-lg">
												    <div class="modal-content">
												      <div class="modal-header">
												        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												      </div>
												      <div class="modal-body">
		   											      
													      <c:set var="stat" value="${stat}" scope="request"/>
													      <c:import url="listinfo.jsp"/>
  														  <c:remove var="obj" scope="request"/>
													      
												      </div>
												      <div class="modal-footer">
												        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												      </div>
												    </div>
												  </div>
												</div>
						                  </div>
					               </div>
				            </div>
				          </div>
				   </li>
					</c:forEach>
					
			   
	    </article>
			   
	   </div>
	</div></div>
	
</body>
</html>