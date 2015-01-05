<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
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

			<div class="fundingTab">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#sectionA">To
							be Paid in Current Cycle</a></li>
					<li><a data-toggle="tab" href="#sectionB">Outstanding
							Payable</a></li>
				</ul>
			</div>

			<div class="tab-content">
				<div id="sectionA" class="tab-pane fade in active">
					<div class="col-md-12">
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

				<div id="sectionB" class="tab-pane fade">
					<div class="col-md-12">
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