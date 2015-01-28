<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<meta name="description" content="">

<!-- Mobile viewport optimized -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%@include file="headerResource.jsp"%>
<script src="js/modernizr-2.6.2.min.js"></script>
<link href="css/signin.css" rel="stylesheet">

</head>
<body class="bodyGrade">
	<!-- 
	<div class="container borderedDiv">
		<form class="form-signin" role="form" name="loginForm" action="user/home" method='GET'>
			<div class="container">
				<img alt="BSG Wireless" src="images/bsgLogo.jpg">
			</div>
			<h3 class="form-signin-heading">BSG Financial Clearing Portal</h3>
			<label for="username" class="sr-only">Username</label> 
			<input type="text" id="username" class="form-control" placeholder="Enter your username/email" required autofocus>
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" id="password" class="form-control" placeholder="Enter your password" required>
			<div class="checkbox">
				<label><input type="checkbox" value="remember-me">Remember me</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			<a href="#">Forgot Password</a>
		</form>
	</div>
 -->
	<div class="container borderedDiv">
		<form name="loginForm"
			action="user/home" method='GET'>
			<img alt="BSG Wireless" src="images/bsgLogo.jpg">
			<h3 class="form-signin-heading">BSG Financial Clearing Portal</h3>
			<div class="input-group margin-bottom-sm">
				<span class="input-group-addon"><i
					class="fa fa-user fa-fw colorUserPwd"></i></span> <input class="form-control"
					type="text" placeholder="Username/E-mail address">
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock fa-fw colorUserPwd"></i></span>
				<input class="form-control" type="password" placeholder="Password">
			</div>

			<div class="checkbox">
				<label><input type="checkbox" value="remember-me">Remember
					me</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block btn-login" type="submit">Login&nbsp;<i class="fa fa-arrow-circle-o-right fa-lg"></i></button>
			<a href="#">Forgot Password</a>
		</form>
	</div>


	<!-- /container -->
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>

	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.8.2.min.js"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="js/script.js"></script>

</body>
</html>

