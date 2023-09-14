<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet"   href="css/bootstrap.css">
<title>JSP</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collasped" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1" aria-expanded = "false">
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP BBS</a>
		</div>
		<div class="collapse navbar-collaps" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">MAIN</a></li>
				<li><a href="bbs.jsp">BBS</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">MAIN<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">LOG IN</a></li>
						<li class="active"><a href="join.jsp">SIGN UP</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align:center;">SIGN UP</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="PASSWORD" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="NAME" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align:center;">
						<div class =btn-group" data-toggle = "buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete ="off" value="MAN" checked>남자					
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete ="off" value="WOMAN" checked>여자					
							</label>
						</div>
 					</div>
 					<div class="form-group">
						<input type="email" class="form-control" placeholder="EMAIL" name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form" value="SIGN UP">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>

	</div>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>