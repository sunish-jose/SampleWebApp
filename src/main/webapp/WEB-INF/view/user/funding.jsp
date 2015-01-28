<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>

<script>
$(document).ready(function() {
	
	$('#forexRateDiv').hide();
	
	$("#fxRate").click(function() {
		$('#forexRateDiv').show();
		$('html, body').animate({
	        scrollTop: $("#forexRateDiv").offset().top
	    }, 2000);
	});
	
});
</script>


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
					<a href="#" class="list-group-item blueBorder orangeBoldFont"><font
						color="#FF9900">Funding in progress</font></a> <a
						href="../docx/customer_funding_report.docx"
						class="list-group-item blueBorder"><span
						class="glyphicon glyphicon-file"></span> Create Funding Invoice </a> <a
						href="#" class="list-group-item blueBorder"> <span
						class="glyphicon glyphicon-star-empty"></span> Add to Favourites
					</a> <a href="#" class="list-group-item blueBorder" id="fxRate"><span
						class="glyphicon glyphicon-usd"></span> Show me FX
						rates
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
							</tr>
							<tr>
								<td>USD</td>
								<td>$1275000.00</td>
								<td>$175000.00</td>
								<td>$110000.00</td>
							</tr>
							<tr>
								<td>EUR</td>
								<td>&#8364;1275000.00</td>
								<td>&#8364;175000.00</td>
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
				<h4>Ready to Pay Transactions</h4>
				<div>
					<table
						class="table table-bordered table-striped table-hover table-curved">
						<tbody>
							<tr>
								<th>Service</th>
								<th>Sub-category</th>
								<th>Total</th>
								<th>Currency</th>
							</tr>
							<tr>
								<td>GSM</td>
								<td>Bilateral</td>
								<td>453,678.89</td>
								<td>USD</td>
							</tr>
							<tr>
								<td>GSM</td>
								<td>Bilateral Adjusted</td>
								<td>22300.56</td>
								<td>USD</td>
							</tr>
							<tr>
								<td>GSM</td>
								<td>Direct</td>
								<td>12001.21</td>
								<td>USD</td>
							</tr>
							<tr>
								<td>GSM</td>
								<td>OIT</td>
								<td>356,987.56</td>
								<td>USD</td>
							</tr>
							<tr>
								<td>GSM</td>
								<td>Refund</td>
								<td>453,678.89</td>
								<td>USD</td>
							</tr>
							<tr>
								<td>GSM</td>
								<td>Bilateral</td>
								<td>145.67</td>
								<td>USD</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right; font-weight: bold;">SUB-Total</td>
								<td style="font-weight: bold;">845,113.98</td>
								<td style="font-weight: bold;">USD</td>
							</tr>
							<tr>
								<td colspan="4">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;">5% Margin for
									transactions requiring FX trade</td>
								<td>35,005.70</td>
								<td>USD</td>
							</tr>
							<tr>
								<td colspan="2"  style="text-align: right;">Total Required
									for Funding</td>
								<td>880,119.68</td>
								<td>USD</td>
							</tr>
							<tr>
							<td colspan="3"  style="text-align: right; color:red; font-weight: bold;">Please ensure funds have transferred and cleared by:
							</td>
							<td   style="color:red; font-weight: bold;">05-Mar-2015</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-12">
			<button type="button" class="btn btn-success pull-right">Download&nbsp;<i class="fa fa-download"></i></button>
			</div>
		</div>
		

		<div class="row" id="forexRateDiv">
			<div class="col-sm-12">
				<h4>Forex Rate</h4>
				<div>
					<table
						class="table table-bordered table-striped table-hover table-curved">
						<tbody>
							<tr>
								<th>Buy Currency</th>
								<th>Sell Currency</th>
								<th>Rate</th>
							</tr>
							<tr>
								<td>USD</td>
								<td>EUR</td>
								<td>0.23633</td>
							</tr>
							<tr>
								<td>GBP</td>
								<td>EUR</td>
								<td>0.75</td>
							</tr>
							<tr>
								<td>GBP</td>
								<td>USD</td>
								<td>0.666</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
	</div>

	<!-- 	<script>
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
			var ctx = document.getElementById("canvas1").getContext("2d");
			window.myBar = new Chart(ctx).Bar(barChartData, {
				responsive : true,
				barValueSpacing : 60
			});
		}
	</script> -->

	<%@include file="../footer.jsp"%>
</body>
</html>
