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
		<div class="table-responsive">
			<h3>Cycle Calendar</h3>
			<table class="table table-bordered table-striped table-hover"
				id="cycleCalendar">
				<tbody>
					<tr>
						<th>Traffic Period</th>
						<th>Data Loading</th>
						<th>Invoice Generation</th>
						<th>Reconciliation</th>
						<th>Funding</th>
						<th>Payment</th>
					</tr>
					<tr>
						<td>Sep/2014</td>
						<td>01/Oct/2014 - 10/Oct/2014</td>
						<td>11/Oct/2014 - 15/Oct/2014</td>
						<td>10/Oct/2014 - 31/Oct/2014</td>
						<td>01/Nov/2014 - 09/Nov/2014</td>
						<td>09/Nov/2014 - 15/Nov/2014</td>
					</tr>
					<tr>
						<td>Oct/2014</td>
						<td>01/Nov/2014 - 10/Nov/2014</td>
						<td>11/Nov/2014 - 15/Nov/2014</td>
						<td>10/Nov/2014 - 31/Nov/2014</td>
						<td>01/Dec/2014 - 09/Dec/2014</td>
						<td>09/Dec/2014 - 15/Dec/2014</td>
					</tr>
					<tr>
						<td>Nov/2014</td>
						<td>01/Dec/2014 - 10/Dec/2014</td>
						<td>11/Dec/2014 - 15/Dec/2014</td>
						<td>10/Dec/2014 - 31/Dec/2014</td>
						<td>01/Jan/2014 - 09/Jan/2014</td>
						<td>09/Jan/2014 - 15/Jan/2014</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- row starting -->
		<div class="row topPadding10px">
			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Net Receiver</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="rxr1">562</td>
						</tr>
						<tr>
							<th>SDR</th>
							<td id="rxr2">326,538.10</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Net Payer</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="payer1">562</td>
						</tr>
						<tr>
							<th>SDR</th>
							<td id="payer2">326,538.10</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Missing Aggrement</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="agrement1">120</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Missing Invoice</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="invoice1">200</td>
						</tr>
						<tr>
							<th>SDR</th>
							<td id="invoice2">12,538.25</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Unreconciled Invoice</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="uinvoice1">122</td>
						</tr>
						<tr>
							<th>SDR</th>
							<td id="uinvoice2">125,256.23</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-2">
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th colspan="2">Incoming missing CN</th>
						</tr>
						<tr>
							<th>No</th>
							<td id="cn1">10</td>
						</tr>
						<tr>
							<th>SDR</th>
							<td id="cn2">6500</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- col-sm-2 ending -->

			<div class="col-md-6">
				<h3>Bank Balance</h3>
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th>Curency</th>
							<th>A/C Type</th>
							<th>Balance</th>
						</tr>
						<tr>
							<td>EUR</td>
							<td>Funding</td>
							<td>25,000.00</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>Receiver</td>
							<td>15,000.00</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-6">
				<h3>Unallocated Cash</h3>
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr>
							<th>Curency</th>
							<th>Receipts</th>
							<th>Amount</th>
						</tr>
						<tr>
							<td>USD</td>
							<td>123</td>
							<td>25,000.00</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>25</td>
							<td>15,000.00</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
		<!-- row ending -->
	</div>
	<script type="text/javascript">
		$('#cycleCalendar tr').click(function() {
			alert('I am clickable table')
		});

		$('#rxr1').click(function() {
			window.location.href = "position";
		});

		$('#rxr2').click(function() {
			window.location.href = "position";
		});

		$('#payer1').click(function() {
			window.location.href = "position";
		});

		$('#payer2').click(function() {
			window.location.href = "position";
		});

		$('#agrement1').click(function() {
			window.location.href = "position";
		});
		$('#invoice1').click(function() {
			window.location.href = "position";
		});
		$('#invoice2').click(function() {
			window.location.href = "position";
		});
		$('#uinvoice1').click(function() {
			window.location.href = "position";
		});
		$('#uinvoice2').click(function() {
			window.location.href = "position";
		});
		$('#cn1').click(function() {
			window.location.href = "position";
		});
		$('#cn2').click(function() {
			window.location.href = "position";
		});
	</script>
</body>
</html>
