<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="../js/jquery-ui.min.js"></script>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Setup KPIs</li>
		</ol>
		<div class="container">
			<h4>Setup KPIs</h4>
		</div>
		<div class="coloredContainer">
			<div class="row">
				<div class="col-md-4 kpiDiv">
					<table
						class="table table-bordered table-curved kpiTable table-condensed">
						<tbody>
							<tr>
								<th colspan="3">Position Metrics (SDR)<i
									class="fa fa-th fa-lg pull-right"></i></th>
							</tr>
							<tr>
							</tr>
							<tr>
								<td class="boldTdText">January 2015</td>
								<td class="boldTdText">Value</td>
								<td class="boldTdText">Volume</td>
							</tr>
							<tr>
								<td>Pay</td>
								<td>256,000</td>
								<td>72</td>
							</tr>
							<tr>
								<td>Receive</td>
								<td>789</td>
								<td>83</td>
							</tr>
							<tr>
								<td>No of hold positions</td>
								<td>72 (12%)</td>
								<td></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td class="boldTdText">Last Month</td>
								<td class="boldTdText">Last Year</td>
							</tr>
							<tr>
								<td>Pay</td>
								<td>7%&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-circle-up fa-2x"
									style="color: green"></i></td>
								<td>8%&nbsp;<i class="fa fa-chevron-circle-down fa-2x"
									style="color: red"></i></td>
							</tr>
							<tr>
								<td>Receive</td>
								<td>10%&nbsp;<i class="fa fa-chevron-circle-up fa-2x"
									style="color: green"></i></td>
								<td>5%&nbsp;<i class="fa fa-chevron-circle-down fa-2x"
									style="color: red"></i></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table
						class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="4">Invoices<i
									class="fa fa-file-text-o fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td colspan="2" class="boldTdText">Missing</td>
								<td colspan="2" class="boldTdText">Unapproved</td>
							</tr>
							<tr>
								<td class="boldTdSubtitle">Volume</td><td class="boldTdSubtitle">Value</td>
								<td class="boldTdSubtitle">Volume</td><td class="boldTdSubtitle">Value</td>
							</tr>
							<tr>
								<td>58</td><td>178300</td>
								<td>100</td><td>723456</td>
							</tr>
							<tr>
								<td colspan="2" style="color:green">8%</td>
								<td colspan="2" style="color:green">9%</td>
							</tr>
							<tr>
								<td colspan="4" class="boldTdText">Performance Level</td>
							</tr>
							<tr>
								<td colspan="4">
									<div class="progress">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">17%</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="3">Missing Agreement<i
									class="fa fa-files-o fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td colspan="3" class="boldTdText">Total</td>
							</tr>
							<tr>
								<td>1012</td>
								<td colspan="1">
									<div class="kpiCircleRed _pointer pull-right" id="redDiv">51%</div>
								</td>
							</tr>
							<tr>
								<td colspan="3" class="boldTdText">Performance Level</td>
							</tr>
							<tr>
								<td colspan="3">
									<div class="progress">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 51%">51%</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="3">Credit Note/Debit Note<i
									class="fa fa-money fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td></td>
								<td class="boldTdText">Volume</td>
								<td class="boldTdText">Value</td>
							</tr>
							<tr>
								<td>January</td>
								<td>389</td>
								<td>17904</td>
							</tr>
							<tr>
								<td>Last Month</td>
								<td>300</td>
								<td>12002</td>
							</tr>
							<tr>
								<td>Open CN</td>
								<td style="color:green">304</td>
								<td style="color:green">11790</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="2">Funding<i
									class="fa fa-briefcase fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td>Total</td>
								<td>10</td>
							</tr>
							<tr>
								<td>Expected</td>
								<td>9</td>
							</tr>
							<tr>
								<td>Funded</td>
								<td>9&nbsp;<i class="fa fa-check-circle fa-2x"
									style="color: green"></i></td>
							</tr>
							<tr>
								<td>Shortfall</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="3">Operator&nbsp;<i
									class="fa fa-user fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td></td>
								<td class="boldTdText">Volume</td>
							</tr>
							<tr>
								<td>Total</td>
								<td>1000</td>
							</tr>
							<tr>
								<td>Action</td>
								<td style="color:red">278 (27%)</td>
							</tr>
							<tr>
								<td colspan="2" class="boldTdText">Performance Level</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="progress">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">27%</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">

				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="3">Agreement&nbsp;<i
									class="fa fa-retweet fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td></td>
								<td class="boldTdText">Volume</td>
							</tr>
							<tr>
								<td>Total</td>
								<td>1000</td>
							</tr>
							<tr>
								<td>Action</td>
								<td style="color:green">278 (20%)</td>
							</tr>
							<tr>
								<td colspan="2" class="boldTdText">Performance Level</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="progress">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 20%">20%</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="3">Bank/Account<i
									class="fa fa-university fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td></td>
								<td class="boldTdText">Volume</td>
							</tr>
							<tr>
								<td>Total</td>
								<td>1000</td>
							</tr>
							<tr>
								<td>Action</td>
								<td style="color:#FFA000">278 (20%)</td>
							</tr>
							<tr>
								<td colspan="2" class="boldTdText">Performance Level</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="progress">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 25%">20%</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="5">Debtors<i
									class="fa fa-tasks fa-lg pull-right"></i></th>
							</tr>
							<tr>
								<td colspan="3">Overdue</td>
								<td colspan="2">723 USD</td>
							</tr>
							<tr>
								<td>&lt;30</td>
								<td>&gt;30</td>
								<td>&gt;60</td>
								<td>&gt;90</td>
								<td>&gt;120</td>
							</tr>
							<tr>
								<td>20%</td>
								<td>10%</td>
								<td style="color: red;">30%</td>
								<td>20%</td>
								<td>20%</td>
							</tr>
							<tr>
								<td colspan="5" class="boldTdText">Unallocated Cash</td>
							</tr>
							<tr>
								<td colspan="2"  class="boldTdSubtitle">Volume</td>
								<td colspan="2"  class="boldTdSubtitle">Value</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2">90</td>
								<td colspan="2">78600&nbsp;<i class="fa fa-chevron-circle-up fa-2x"
									style="color: green"></i></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">

				<div class="col-md-4">
					<table class="table table-bordered table-condensed table-curved kpiTable">
						<tbody>
							<tr>
								<th colspan="2">Cashflow Forecast<i class="fa fa-spinner fa-lg pull-right"></i></th>
							</tr>
							<tr style="color:green; height:40px;">
								<td>Expected In</td>
								<td>72345.06</td>
							</tr>
							<tr style="color:red">
								<td>Expected Out</td>
								<td>7235.72</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>