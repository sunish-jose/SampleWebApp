<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
	$(document).ready(function() {
		$('#tobePaidDetailsDiv').hide();
		$('#outstandingPayable').hide();

	});
</script>


<script type="text/javascript">
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ '', 'ILS', 'JYP', 'FJD', 'INR', 'EUR', 'USD', 'GBP' ],
				[ '', 100, 400, 600, 800, 1000, 1200, 1500 ] ]);

		var data1 = google.visualization.arrayToDataTable([
				[ '', 'ILS', 'JYP', 'FJD', 'INR', 'EUR', 'USD', 'GBP' ],
				[ '', 150, 300, 500, 700, 1500, 1110, 1500 ] ]);

		var options = {
			title : '',
			vAxis : {
				title : 'Net SDR',
				titleTextStyle : {
					color : 'red'
				}
			},
			hAxis : {
				title : 'Amount',
				titleTextStyle : {
					color : 'red'
				}
			}
		};

		var chart = new google.visualization.BarChart(document
				.getElementById('tobePaidDiv'));

		chart.draw(data, options);

		google.visualization.events.addListener(chart, 'select', function() {
			$('#tobePaidDetailsDiv').show();
		});

		var chart1 = new google.visualization.BarChart(document
				.getElementById('outstandingPayablesDiv'));

		chart1.draw(data1, options);

		google.visualization.events.addListener(chart1, 'select', function() {
			$('#outstandingPayable').show();
		});
	}
</script>

</head>
<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Payable Summary</li>
		</ol>
		<!-- row starting -->
		<div class="row topPaddingSmall">
			<div class="col-md-8">
				<h3>Funding</h3>
				<table
					class="table table-bordered table-striped table-hover table-curved">
					<tbody>
						<tr>
							<th>Currency</th>
							<th>Total Funding</th>
							<th>Bank Balance</th>
							<th>To be Funded</th>
						</tr>
						<tr>
							<td>USD</td>
							<td>25,000.00</td>
							<td>5,000</td>
							<td>20,000.00</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>15,000.00</td>
							<td>2,000</td>
							<td>13,000.00</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-4">
				<h3>Estimated Funding</h3>
				<table
					class="table table-bordered table-striped table-hover table-curved">
					<tbody>
						<tr>
							<th>Currency</th>
							<th>Total Funding</th>
						</tr>
						<tr>
							<td>USD</td>
							<td>25,000.00</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>15,000.00</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 			<div class="fundingTab">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#sectionA">To
							be Paid in Current Cycle</a></li>
					<li><a data-toggle="tab" href="#sectionB">Outstanding
							Payable</a></li>
				</ul>
			</div>

			<div class="tab-content"> -->

			<div id="row">
				<div class="col-md-6">
					<h3>To be paid in the current cycle</h3>
					<div id="tobePaidDiv" class="paymentGrapgDiv"></div>
				</div>
				<div class="col-md-6">
					<h3>Outstanding Payable</h3>
					<div id="outstandingPayablesDiv" class="paymentGrapgDiv"></div>
				</div>

				<div id="tobePaidDetailsDiv" class="col-md-6">
					<h3>To be Paid in Current Cycle</h3>
					<table
						class="table table-bordered table-striped table-hover table-curved"
						id="tobaPaid">
						<tbody>
							<tr>
								<th>Currency</th>
								<th>Amount</th>
								<th>Net SDR</th>
							</tr>
							<tr>
								<td>USD</td>
								<td>10,0000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>EUR</td>
								<td>25,200.00</td>
								<td>25,200.00</td>
							</tr>
							<tr>
								<td>INR</td>
								<td>10,0000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>JYP</td>
								<td>22,200.00</td>
								<td>17,256.25</td>
							</tr>
							<tr>
								<td>HKD</td>
								<td>25,200.00</td>
								<td>25,200.00</td>
							</tr>
							<tr>
								<td>FJD</td>
								<td>10,000.00</td>
								<td>10,000.00</td>
							</tr>
							<tr>
								<td>ILS</td>
								<td>22,000</td>
								<td>17,256.25</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;">Total</td>
								<td>125,253.25</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div id="row">

				<div class="col-md-6" id="outstandingPayable">
					<h3>Outstanding Payable</h3>
					<table
						class="table table-bordered table-striped table-hover table-curved"
						id="outstanding">
						<tbody>
							<tr>
								<th>Currency</th>
								<th>Amount</th>
								<th>Net SDR</th>
							</tr>
							<tr>
								<td>USD</td>
								<td>10,0000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>EUR</td>
								<td>25,200.00</td>
								<td>25,200.00</td>
							</tr>
							<tr>
								<td>INR</td>
								<td>10,0000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>JYP</td>
								<td>22,000</td>
								<td>17,256.25</td>
							</tr>
							<tr>
								<td>HKD</td>
								<td>25,200.00</td>
								<td>25,200.00</td>
							</tr>
							<tr>
								<td>FJD</td>
								<td>10,000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>ILS</td>
								<td>22,000</td>
								<td>17,256.25</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;">Total</td>
								<td>155,253.25</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		$('#tobaPaid tr').click(function() {
			window.location.href = "position";
		});
		$('#outstanding tr').click(function() {
			window.location.href = "position";
		});
	</script>

	<%@include file="../footer.jsp"%>
</body>
</html>