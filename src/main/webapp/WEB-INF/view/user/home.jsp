<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
<!-- Pure Chat Snippet -->
<script type='text/javascript'>
	(function() {
		var done = false;
		var script = document.createElement('script');
		script.async = true;
		script.type = 'text/javascript';
		script.src = 'https://app.purechat.com/VisitorWidget/WidgetScript';
		document.getElementsByTagName('HEAD').item(0).appendChild(script);
		script.onreadystatechange = script.onload = function(e) {
			if (!done
					&& (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) {
				var w = new PCWidget({
					c : '061549d3-b408-4406-844b-473381c46e3b',
					f : true
				});
				done = true;
			}
		};
	})();
</script>
<!-- End Pure Chat Snippet -->
</head>

<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<div>
			<h3>Cycle Calendar</h3>
			<table
				class="table table-bordered table-striped table-hover table-curved"
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
		<div class="row topPaddingSmall">
			<div class="col-md-2">
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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
				<table
					class="table table-bordered table-striped table-hover table-curved">
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

	<%@include file="../footer.jsp"%>
</body>
</html>
