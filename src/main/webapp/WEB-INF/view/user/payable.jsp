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
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<!-- row starting -->
		<div class="row topPadding10px">
			<div class="col-md-8">
				<h3>Funding</h3>
				<table class="table table-bordered customTabBorderBlue">
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
				<h3>Total Funding</h3>
				<table class="table table-bordered customTabBorderBlue">
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

			<div class="col-md-6">
				<h3>To be Paid in Current Cycle</h3>
				<table class="table table-bordered customTabBorderBlue"
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
							<td>EUR</td>
							<td>25,200.00</td>
							<td>25,200.00</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: right;">Total</td>
							<td>25,200.00</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-6">
				<h3>Outstanding Payable</h3>
				<table class="table table-bordered customTabBorderBlue"
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
							<td>EUR</td>
							<td>25,200.00</td>
							<td>25,200.00</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: right;">Total</td>
							<td>25,200.00</td>
						</tr>
					</tbody>
				</table>
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
</body>
</html>