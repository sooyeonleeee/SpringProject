<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Item - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resource/css/bootstrap.min.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom CSS -->
<link href="resource/css/shop-item.css" rel="stylesheet">

<link href="resource/css/nav-bar.css" rel="stylesheet">

<link href="resource/css/table-item.css" rel="stylesheet">

</head>
<body>
	<!--  -->
	<jsp:include page = "header.jsp"></jsp:include>
	 
	<ul class="nav nav-tabs-primary">	
	
    <li role="presentation" class="active"><a href="#">Search</a></li>
    <li role="presentation"><a href="#">Reports</a></li>
    <li role="presentation"><a href="#">Admin</a></li>
	</ul>
	
	<ol class="breadcrumb-primary">
	</ol>
	
	<!--<div class ="container">	
	
			filter 영역
			<div class="col-md-2">
				  <div class="list-group panel">
				    <a class="list-group-item list-group-item strong text-center" style="background: #009ce0; color: white;" data-toggle="collapse"> Personalize Your Search</a>
				    <a href="#demo1" class="list-group-item list-group-item-success strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-photo"></i> 시간 설정 <i class="fa fa-caret-down"></i></a>
				    <div class="collapse list-group-submenu" id="demo1">
				      <a href="#" class="list-group-item"><input type="checkbox">  Audio Content</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  Interactive Media</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  Learning Game</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  Video</a>
				    </div> 
				    <a href="#demo2" class="list-group-item list-group-item strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-book"></i> 항공사 <i class="fa fa-caret-down"></i></a>
				    <div class="collapse list-group-submenu" id="demo2">
				      <a href="#" class="list-group-item"><input type="checkbox">  1</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  2</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  3</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  4</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  5</a>
				    </div>
				    <a href="#demo4" class="list-group-item list-group-item strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-language"></i> Languages <i class="fa fa-caret-down"></i></a>
				    <div class="collapse list-group-submenu" id="demo4">
				      <a href="#" class="list-group-item"><input type="checkbox">  English</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  Chinese</a>
				      <a href="#" class="list-group-item"><input type="checkbox">  French</a>
				        <a href="#SubSubMenu1" class="list-group-item strong" data-toggle="collapse" data-parent="#SubSubMenu1"> 3 more <i class="fa fa-caret-down"></i></a>
				        <div class="collapse list-group-submenu list-group-submenu-1" id="SubSubMenu1">
				          <a href="#" class="list-group-item"><input type="checkbox">  Russian</a>
				          <a href="#" class="list-group-item"><input type="checkbox">  Urdu</a>
				          <a href="#" class="list-group-item"><input type="checkbox">  Vietnamese</a>
				        </div>
				    </div>
				      <a class="list-group-item list-group-item strong text-center" style="background: #009ce0; color: white;" data-toggle="collapse"><button type="button" class="btn btn-success btn-sm">SEARCH</button> </a>
				  </div>
				</div> -->
				
				<div class="col-md-2">
	<div class="container">
    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                
                    <div class="panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-time">
                            </span>시간 설정</a>
                        
                    </div>
                    
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">1</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">1</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">1</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> <span class="glyphicon glyphicon-plane">
                            </span>항공사</a>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="#">Orders</a> <span class="label label-success">$ 320</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">Orders</a> <span class="label label-success">$ 320</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">Orders</a> <span class="label label-success">$ 320</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                    
                </div>
            </div>
        </div>
          
        </div>
    </div>		
				
				
			<!-- 상세정보 영역 -->
			
			
			<div class="col-md-10">
			<div class="detailContainer">
				<div class="row" style="background-color: white">
					<table class="table table-bordered">
							<tr>
									<th>출발지</th>
									<th>도착지</th>
									<th>출발일</th>
									<th>도착일</th>
									<th>가격</th>
									<th>기타</th>
								</tr>
					</table>			
				</div>
			
			</div>
		</div>






</body>
</html>