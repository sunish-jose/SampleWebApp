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
			<div class="col-md-6">
				<h3>Receipt</h3>
				<table class="table table-bordered customTabBorderBlue">
					<tbody>
						<tr>
							<th>Account No</th>
							<th>Currency</th>
							<th>This Month Collection</th>
							<th>Bank Balance</th>
							<th>Unallocated Cash</th>
						</tr>
						<tr>
							<td>54344367876</td>
							<td>USD</td>
							<td>125253.23</td>
							<td>521325.23</td>
							<td>2222.25</td>
						</tr>
						<tr>
							<td>54344367899</td>
							<td>EUR</td>
							<td>256877.22</td>
							<td>136666.22</td>
							<td>15000.25</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-6">
				<h3>Last 3 Months Collection</h3>
				<table class="table table-bordered customTabBorderBlue">
					<tbody>
						<tr>
							<th>Account No</th>
							<th>Currency</th>
							<th>Last 30 Days</th>
							<th>31 to 60 Days</th>
							<th>61 to 90 Days</th>
						</tr>
						<tr>
							<td>54344367876</td>
							<td>USD</td>
							<td>125253.23</td>
							<td>521325.23</td>
							<td>2222.25</td>
						</tr>
						<tr>
							<td>54344367899</td>
							<td>EUR</td>
							<td>256877.22</td>
							<td>136666.22</td>
							<td>15000.25</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-10">
				<h3>Outstanding Receivables (Net Receiver)</h3>
				<table class="table table-bordered customTabBorderBlue"
					id="outstandingRx">
					<tbody>
						<tr>
							<th>Currency</th>
							<th>&lt; 30 Days</th>
							<th>&gt; 30 Days</th>
							<th>&gt; 60 Days</th>
							<th>&gt; 90 Days</th>
							<th>&gt; 120 Days</th>
							<th>Total</th>
						</tr>
						<tr>
							<td>USD</td>
							<td>125253.23</td>
							<td>521325.23</td>
							<td>2222.25</td>
							<td>1000</td>
							<td>600</td>
							<td>625369.23</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>256877.22</td>
							<td>136666.22</td>
							<td>15000.25</td>
							<td>7500.26</td>
							<td>3569.25</td>
							<td>596325.23</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<h3>&nbsp;</h3>
				<table class="table table-bordered customTabBorderBlue">
					<tbody>
						<tr>
							<th>Unallocated Cash</th>
						</tr>
						<tr>
							<td>0</td>
						</tr>
						<tr>
							<td>10000.25</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-12">
				<h3>Top 10 Receivable Positions</h3>
				<table class="table table-bordered customTabBorderBlue">
					<tbody>
						<tr>
							<th>Tadgic Code</th>
							<th>Traffic Period</th>
							<th>Amount</th>
							<th>Currency</th>
						</tr>
						<tr>
							<td>AIACW</td>
							<td>05/2013</td>
							<td>16,573.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRCN</td>
							<td>06/2013</td>
							<td>15,473.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRCN</td>
							<td>07/2013</td>
							<td>13,583.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>ESPRT</td>
							<td>07/2013</td>
							<td>13,370.36</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>DEUO2</td>
							<td>05/2013</td>
							<td>12,673.88</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>DEUE2</td>
							<td>06/2014</td>
							<td>11,567.56</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AUSTA</td>
							<td>05/2013</td>
							<td>10,973.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AUTMM</td>
							<td>06/2011</td>
							<td>10,876.44</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AIACW</td>
							<td>05/2014</td>
							<td>6,569.26</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRMT</td>
							<td>06/2011</td>
							<td>5,488.39</td>
							<td>EUR</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- row starting -->
		</div>
	</div>
	<script type="text/javascript">
		$('#outstandingRx tr').click(function() {
			window.location.href = "position";
		});
	</script>
</body>
</html>
