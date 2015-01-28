<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="../js/jquery-ui.min.js"></script>

<script>
$(document).ready(function(){

	$('#runReport').click(function() {
		$('#resultsDiv').show();
	});

	$("#datepickerStartDate1,#datepickerStartDate2,#datepickerStartDate3").datepicker({
		dateFormat : "dd/mm/yy"
	});

	$("#datepickerEndDate1,#datepickerEndDate2,#datepickerEndDate3").datepicker({
		dateFormat : "dd/mm/yy"
	});

	$('#params').hide();
	hideParams();
	hideResults();

	$(".table tbody tr td").click(function(e){
		
		// Get Id of table clicked
		var cid=$(this).closest('table').attr('id')
	    
		if (cid=="reports")
			{
			var target = e.srcElement || e.target;
			if (target) {
				// Get name of report clicked
				var rep=target.innerHTML;
	 			switch (rep) {
	 			case "Position Summary Report":
					{
						$('#params').show();
						hideParams();
						hideResults();
						$('#paramsPositionSummaryReport').show();
						break;
					}
	 			case "Outstanding Rec Report":
					{
						$('#params').show();
		 				hideParams();
		 				hideResults();
						$('#paramsOutstandingRecReport').show();
						break;
					}
	 			case "Outstanding Pay Report":
					{
						$('#params').show();
						hideParams();
						hideResults();
						$('#paramsOutstandingPayReport').show();
						break;
					}
				default:
					{
						// All other reports have default params for now
						$('#params').show();
						hideParams();
						hideResults();
						$('#paramsNoneReport').show();
					}
				}
			}
 		}
		showRunButton();
	});
	
	function hideParams()
	{
		$('#paramsPositionSummaryReport').hide();
		$('#paramsOutstandingRecReport').hide();
		$('#paramsOutstandingPayReport').hide();
		$('#paramsNoneReport').hide();
	}
	
	function hideResults()
	{
		$('#resultsDiv').hide();
	}
	
	function showRunButton()
	{
		$('#runButtonDiv').show();
	}
});
</script>

</head>
<body>

	<!-- navbar -->
	<%@include file="../navbar.jsp"%>

	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Analytics</li>
		</ol>

		<h3>Analytics</h3>

		<!-- top row -->
		<div class="row topPadding10px">
			<div class="col-md-6">
 			<h3></h3>
				<table id="reports" class="table table-bordered table-striped table-hover table-curved hoveringTable">
					<tbody>
						<tr>
							<th>Report Name</th>
						</tr>
						<tr>
							<td>Position Summary Report</td>
						</tr>
						<tr>
							<td>Outstanding Rec Report</td>
						</tr>
						<tr>
							<td>Outstanding Pay Report</td>
						</tr>
						<tr>
							<td>Aged Debt Report</td>
						</tr>
						<tr>
							<td>Cash Allocation Report</td>
						</tr>
						<tr>
							<td>Top 10 Receivable Report</td>
						</tr>
						<tr>
							<td>Top 10 Payable Report</td>
						</tr>
						<tr>
							<td>Agreement List</td>
						</tr>
						<tr>
							<td>Missing Invoice List</td>
						</tr>
						<tr>
							<td>Un-approved Invoice List</td>
						</tr>
						<tr>
							<td>Partly Allocated Position Report</td>
						</tr>
						<tr>
							<td>Partly Allocated Invoice Report</td>
						</tr>
						<tr>
							<td>Funding List</td>
						</tr>
						<tr>
							<td>Last 6 Months Collection Report</td>
						</tr>
						<tr>
							<td>Last 6 Months Allocation Report</td>
						</tr>
						<tr>
							<td>Approved Invoices</td>
						</tr>
						<tr>
							<td>Approved For Payment</td>
						</tr>
						<tr>
							<td>Ready To Be Paid Position</td>
						</tr>
						<tr>
							<td>Bank Statement</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<div class="paramTitleDiv">
					<h3 class="paramTitle">Parameters</h3>
				</div>
				<div id="params">

				<!-- Position Summary Report Params -->
				<div id="paramsPositionSummaryReport">
					<div class="row topPadding10px">
						<div>
							<table class="table table-bordered  table-curved"
								id="outstandingPositionReportTab">
								<tbody>
									<tr>
										<th>Parameter</th>
										<th>Value</th>
									</tr>
									<tr>
										<td>Start Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerStartDate1" placeholder="">
										</td>
									</tr>
									<tr>
										<td>End Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerEndDate1" placeholder="">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End Position Summary Report Params -->

				<!-- Outstanding Rec Report Params -->
				<div id="paramsOutstandingRecReport">
					<div class="row topPadding10px">
						<div>
							<table class="table table-bordered  table-curved"
								id="outstandingRecReportTab">
								<tbody>
									<tr>
										<th>Parameter</th>
										<th>Value</th>
									</tr>
									<tr>
										<td>Start Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerStartDate2" placeholder="">
										</td>
									</tr>
									<tr>
										<td>End Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerEndDate2" placeholder="">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End Outstanding Rec Report Params -->
				
				<!-- Outstanding Pay Report Params -->
				<div id="paramsOutstandingPayReport">
					<div class="row topPadding10px">
						<div>
							<table class="table table-bordered  table-curved"
								id="outstandingPayReportTab">
								<tbody>
									<tr>
										<th>Parameter</th>
										<th>Value</th>
									</tr>
									<tr>
										<td>Start Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerStartDate3" placeholder="">
										</td>
									</tr>
									<tr>
										<td>End Date</td>
										<td>
											<input type="text" class="form-control" id="datepickerEndDate3" placeholder="">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End Outstanding Pay Report Params -->

				<!-- None Params -->
				<div id="paramsNoneReport">
					<div class="row topPadding10px">
						<div>
							<table class="table table-bordered  table-curved"
								id="noneReportTab">
								<tbody>
									<tr>
										<th>Parameter</th>
										<th>Value</th>
									</tr>
									<tr>
										<td>None</td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End None Params -->
				
				<!-- Run Button -->
				<div id="runButtonDiv">
					<div class="row topPadding10px">
						<div class="col-md-6">
							<button type="button" id="runReport"
								class="btn btn-primary btn-sm">Run Report</button>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<select id="export" class="form-control">
									<option selected>Excel</option>
									<option>CSV</option>
									<option>PDF</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<!-- End Run Button -->

				<!--  Results div -->
				<div id="resultsDiv">
					<div class="row topPadding10px">
						<div>
							<table class="table table-bordered table-curved"
								id="resultsTab">
								<tbody>
									<tr>
										<th>Client</th>
										<th>Partner</th>
										<th>Service Type</th>
										<th>Traffic Period</th>
									</tr>
									<tr>
										<td>LAXYZ</td>
										<td>GBRCN</td>
										<td>GSM</td>
										<td>Sep/2013</td>
									</tr>
									<tr>
										<td>LAXYZ</td>
										<td>AIACW</td>
										<td>GSM</td>
										<td>Sep/2013</td>
									</tr>
									<tr>
										<td>LAXYZ</td>
										<td>DEUE2</td>
										<td>GSM</td>
										<td>Sep/2013</td>
									</tr>
									<tr>
										<td>LAXYZ</td>
										<td>AUTMM</td>
										<td>SMS</td>
										<td>Sep/2013</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End Results div -->
				
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">Copyright &copy; 2015 BSG Wireless</p>
		</div>
	</footer>
	<!-- footer ends -->
</body>
</html>