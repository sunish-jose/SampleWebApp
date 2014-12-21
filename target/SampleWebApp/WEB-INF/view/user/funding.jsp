<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BSG Financial Clearing Portal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href="../css/styles.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<script src="../js/Chart.js"></script>
</head>
<body>
	<!-- starting of Navbar -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#" class="nav-justified"><img
					src="../images/bsgLogo.jpg"></a>
			</div>
			<!-- Collection of nav links and other content for toggling -->
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="../">Home</a></li>
					<li><a href="#">Actions</a></li>
					<li><a href="#">Communications</a></li>
					<li><a href="#">Customer View</a></li>
					<li><a href="#">Favourites</a></li>
					<li><a href="#">MI</a></li>
					<li><a href="#">Tap Analysis Portal</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Services
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Debt</a></li>
							<li><a href="funding">Funding</a></li>
							<li><a href="#">Invoices</a></li>
							<li><a href="#">IOT</a></li>
							<li><a href="#">Reports</a></li>
							<li><a href="#">Transactions</a></li>
						</ul></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar end here -->

	<!-- /container -->

	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<!-- right side navigation -->
				<div class="bodypadding">
					<a href="#" class="list-group-item"><span
						class="glyphicon glyphicon-lock"></span> Lock Payments </a> <a
						href="#" class="list-group-item"> <span
						class="glyphicon glyphicon-file"></span> Create Funding Invoice
					</a> <a href="#" class="list-group-item"> <span
						class="glyphicon glyphicon-star-empty"></span> Add to Favourites
					</a> <a href="#" class="list-group-item"> <span
						class="glyphicon glyphicon-usd"></span> Show me FX rates
					</a>
				</div>
				<!-- right side navigation end -->
			</div>
			<div class="col-sm-9">
				<div>
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th colspan="3">User: Siva Sharma of BSG</th>
							</tr>
							<tr style="vertical-align: middle;">
								<th colspan="3">Funding: Unlocked</th>
							</tr>
							<tr>
								<th class="danger">Funding due in 3 Days 03-Apr-2015</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">
				<!-- funds table -->
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Currency</th>
								<th>Ready to Pay</th>
								<th>Funds Available</th>
								<th>Funds Required</th>
								<th>Not Ready to Pay</th>
								<th>Payments Removed</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>USD</td>
								<td>$1275000.00</td>
								<td>$175000.00</td>
								<td>$110000.00</td>
								<td>$110000.00</td>
								<td>$110000.00</td>
							</tr>
							<tr>
								<td>EUR</td>
								<td>&#8364;1275000.00</td>
								<td>&#8364;175000.00</td>
								<td>&#8364;110000.00</td>
								<td>&#8364;110000.00</td>
								<td>&#8364;110000.00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- Funds table ends here -->
		</div>

		<div class="row">
			<div class="col-sm-12">
				<table class="table">
					<thead>
						<tr>
							<th>Payment Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div>
					<canvas id="canvas"></canvas>
				</div>
			</div>
		</div>
	</div>
	<script>
		var barChartData = {
			labels : [ "Ready to Pay", "Not Ready to Pay", "Payment Removed" ],
			datasets : [ {
				fillColor : "rgba(230,105,9,0.76)",
				strokeColor : "rgba(220,220,220,0.8)",
				highlightFill : "rgba(230,105,9,0.76)",
				highlightStroke : "rgba(220,220,220,1)",
				data : [ 1700000, 75000, 65000 ]
			} ]

		}
		window.onload = function() {
			var ctx = document.getElementById("canvas").getContext("2d");
			window.myBar = new Chart(ctx).Bar(barChartData, {
				responsive : true,
				barValueSpacing : 60
			});
		}
	</script>
</body>
</html>
