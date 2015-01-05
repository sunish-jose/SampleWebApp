<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon" >
<title>BSG Financial Clearing Portal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href="../css/styles.css" rel="stylesheet">
<link href="../css/sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<script src="../js/Chart.js"></script>
<script src="../js/script.js"></script>
</head>
<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Search</li>
		</ol>
		<div class="searchContainer">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<div id="imaginary_container">
						<div class="input-group stylish-input-group">
							<input type="text"  placeholder="Search"
								id="autocomplete" class="form-control"> <span class="input-group-addon">
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>

						<div id="outputbox">
							<p id="outputcontent"></p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>