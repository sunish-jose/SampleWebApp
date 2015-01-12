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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-glyphicons.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="css/styles.css" rel="stylesheet">

<!-- Include Modernizr in the head, before any other Javascript -->
<script src="js/modernizr-2.6.2.min.js"></script>

</head>
<body>
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

