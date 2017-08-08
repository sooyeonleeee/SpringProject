<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="full1" lang="en">
<!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/full.css" rel="stylesheet">
<!-- Custom CSS -->
<script src="./resources/js/jquery.js"></script>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<div class="container">
		<div id="row" style="margin-top: 300px">
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
										<input type="text" id="search1" class="form-control"> <input type="hidden" class="search1_code" value="">
									</div>
								</td>
								<td><div class="ui-widget">
										<input type="text" id="search2" class="form-control"> <input type="hidden" class="search2_code">
									</div></td>
								<td><input type="text" class="form-control" id="datepicker1"></td>
								<td><input type="text" class="form-control" id="datepicker2"></td>
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
											<button type="button" class="btn btn-default" data-dir="dwn">
												<span class="glyphicon glyphicon-minus"></span>
											</button>
										</span> <input type="text" class="form-control text-center" value="1" name=""> <span class="input-group-btn">
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
										</span> <input type="text" class="form-control text-center" value="1" name=""> <span class="input-group-btn">
											<button type="button" class="btn btn-default" data-dir="up">
												<span class="glyphicon glyphicon-plus"></span>
											</button>
										</span>
									</div>
								</td>
								<td colspan="2"><span class="col-sm-3"> <label for="path1"><input type="radio" class="form-control text-center" name="path" id="path1">왕복</label></span> <span class="col-sm-3"> <label for="path2"><input type="radio" class="form-control text-center" name="path" id="path2">편도</label>
								</span></td>
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
    <!-- Put your page content here! -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
</html>
