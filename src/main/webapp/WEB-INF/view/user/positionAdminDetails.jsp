<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>

<%@include file="../headerResource.jsp"%>

</head>
<body>

	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li><a href="../user/transactionDetails">Transaction Details</a></li>
			<li><a href="../user/positionAdmin">Position Admin</a></li>
			<li class="active">Position Details</li>
		</ol>
		<div class="table-responsive">
			<h3>Position Details</h3>
			<table class="table table-bordered table-striped table-hover">
				<tbody>
					<tr>
						<th>Type</th>
						<th>Reference</th>
						<th>Pre Tax SDR</th>
						<th>Tax SDR</th>
						<th>Discount SDR</th>
						<th>Net SDR</th>
						<th>Pre Tax</th>
						<th>Tax</th>
						<th>Discount</th>
						<th>Net Tax</th>
						<th>Currency</th>
						<th>Doc</th>
					</tr>
					<tr>
						<td>PA</td>
						<td>DEUE2/GB</td>
						<td>1,000.00</td>
						<td>50.0</td>
						<td>0.00</td>
						<td>1050.00</td>
						<td>1250.00</td>
						<td>100.00</td>
						<td>0.00</td>
						<td>1,350.00</td>
						<td>EUR</td>
						<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					</tr>
					<tr>
						<td>RA</td>
						<td>DEUE209</td>
						<td>1,500.00</td>
						<td>100.00</td>
						<td>50.00</td>
						<td>1,550.00</td>
						<td>2,000.00</td>
						<td>300.00</td>
						<td>100.00</td>
						<td>2,000.00</td>
						<td>USD</td>
						<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					</tr>

					<tr>
						<td>CN</td>
						<td>CR09/2014</td>
						<td>100.00</td>
						<td>00.00</td>
						<td>0.00</td>
						<td>100.00</td>
						<td>150.00</td>
						<td>0.00</td>
						<td>0.00</td>
						<td>150.00</td>
						<td>EUR</td>
						<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					</tr>
				</tbody>
			</table>
			<div class="col-md-6 topPaddingLarge bodypadding">
				<button type="button" id="axb1" class="btn btn-primary">
					Apply Amendment&nbsp; <span class="glyphicon glyphicon-new-window">&nbsp;</span>
				</button>
			</div>
		</div>
	</div>

	<!-- Modal window Amendments -->
	<div id="modalAmendments" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-book fa-2x"></i>&nbsp;Un-applied Amendments
					</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered table-striped table-hover"
					id="amendmentTr">
						<tbody>
							<tr>
								<th>Client</th>
								<th>Partner</th>
								<th>Service Type</th>
								<th>Traffic Period</th>
								<th>Gross SDR</th>
								<th>Gross Currency</th>
								<th>Currency</th>
								<th>View</th>
							</tr>
							<tr>
								<td>LBTXZ</td>
								<td>GBROR</td>
								<td>GSM</td>
								<td>01/2015</td>
								<td>1526.25</td>
								<td>6359.22</td>
								<td>EUR</td>
								<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
							</tr>
							<tr>
								<td>GBTFE</td>
								<td>GBROR</td>
								<td>GSM</td>
								<td>01/2015</td>
								<td>1526.25</td>
								<td>6359.22</td>
								<td>EUR</td>
								<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
							</tr>
							<tr>
								<td>GBTFE</td>
								<td>GBROR</td>
								<td>GSM</td>
								<td>01/2015</td>
								<td>1526.25</td>
								<td>6359.22</td>
								<td>EUR</td>
								<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal window Note ends -->

	<script type="text/javascript">
		$('#amendmentTr td').click(function() {
			confirm('Would you like to apply this amendment?');
		});
	</script>

	<script type="text/javascript">
		$('#axb1').click(function() {
			$("#modalAmendments").modal('show');
		});
	</script>

	<%@include file="../footer.jsp"%>
</body>
</html>
