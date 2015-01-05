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

	<%@include file="../navbar.jsp"%>
	<!-- /container -->
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Funding</li>
		</ol>
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
					<table
						class="table table-bordered customTabBorderBlue table-curved">
						<tbody>
							<tr>
								<td colspan="3" style="font-weight: bold;">User: Siva
									Sharma of BSG</td>
							</tr>
							<tr style="vertical-align: middle;">
								<td colspan="3" style="font-weight: bold;">Funding:
									Unlocked</td>
							</tr>
							<tr style="vertical-align: middle">
								<td
									style="text-align: left; font-weight: bold; vertical-align: middle; width: 33%;">Funding
									due in</td>
								<td
									style="border: none; text-align: center; font-weight: bold; vertical-align: middle; width: 80px; height: 85px; background: url(../images/redcircle.jpg) no-repeat;">3
									Days</td>
								<td
									style="border: none; text-align: center; font-weight: bold; vertical-align: middle;">03-Apr-2015</td>
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
					<table
						class="table table-bordered table-striped table-hover table-curved">
						<tbody>
							<tr>
								<th>Currency</th>
								<th>Ready to Pay</th>
								<th>Funds Available</th>
								<th>Funds Required</th>
								<th>Not Ready to Pay</th>
								<th>Payments Removed</th>
							</tr>
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
				<h3>Payment Status</h3>
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
	<%@include file="../footer.jsp"%>
</body>
</html>
