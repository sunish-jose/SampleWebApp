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
		<div class="table-responsive">
			<h3>Position Admin</h3>
			<table
				class="table table-bordered table-striped table-hover table-curved"
				id="positionDetails">
				<tbody>
					<tr>
						<th>Partner</th>
						<th>Trading Code</th>
						<th>Service Type</th>
						<th>Traffic Period</th>
						<th>Settlement Type</th>
						<th>Net SDR</th>
						<th>Net Amount</th>
						<th>Currency</th>
						<th>Due Date</th>
						<th>Position Type</th>
						<th>Notes</th>

					</tr>
					<tr>
						<td>AAAAAA</td>
						<td>GBRCN</td>
						<td>GSM</td>
						<td>Sep/2013</td>
						<td>Gross</td>
						<td>10000.25</td>
						<td>16,263.23</td>
						<td>EUR</td>
						<td>28/11/2013</td>
						<td>Payable</td>
						<td><a href="#" id="note"><img src="../images/note.jpg"></a></td>
					</tr>
					<tr>
						<td>BBBBBBBB</td>
						<td>DEUE2</td>
						<td>SMS</td>
						<td>Sep/2013</td>
						<td>Gross</td>
						<td>600.00</td>
						<td>800.00</td>
						<td>USD</td>
						<td>28/11/2013</td>
						<td>Receivable</td>
						<td><a href="#" id="note"><img src="../images/note.jpg"></a></td>
					</tr>
					<tr>
						<td>CCCCCCC</td>
						<td>AIACW</td>
						<td>GSM</td>
						<td>Sep/2013</td>
						<td>Gross</td>
						<td>9000.25</td>
						<td>8526.23</td>
						<td>EUR</td>
						<td>28/11/2013</td>
						<td>Payable</td>
						<td><a href="#" id="note"><img src="../images/note.jpg"></a></td>
					</tr>
					<tr>
						<td>DDDDDD</td>
						<td>AUTMM</td>
						<td>SMS</td>
						<td>Sep/2013</td>
						<td>Gross</td>
						<td>600.00</td>
						<td>800.00</td>
						<td>USD</td>
						<td>28/11/2013</td>
						<td>Receivable</td>
						<td><a href="#" id="note"><img src="../images/note.jpg"></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Modal Tx details -->
	<div id="modalTx" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<span class="fa-stack fa-lg"><i
							class="fa fa-square-o fa-stack-2x"></i> <i
							class="fa fa-usd fa-stack-1x"></i>
						</span> Transaction Details
					</h4>
				</div>
				<div class="modal-body">
					<div class="table-responsive">
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
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal transaction details ends-->


	<!-- Modal window Notes -->
	<div id="modalNote" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-book fa-2x"></i>&nbsp;Notes
					</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered table-striped table-hover">
						<tbody>
							<tr>
								<th>Date</th>
								<th>Reason</th>
								<th>Full Note</th>
							</tr>
							<tr>
								<td>28/10/2014 HH:MM:SS</td>
								<td>CN Applied</td>
								<td>Full note content goes here.....</td>
							</tr>
							<tr>
								<td>28/10/2014 HH:MM:SS</td>
								<td>CN Applied</td>
								<td>Full note content goes here.....</td>
							</tr>
							<tr>
								<td>28/10/2014 HH:MM:SS</td>
								<td>CN Applied</td>
								<td>Full note content goes here.....</td>
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
		$('#positionDetails td').click(function() {
			var column_num = parseInt($(this).index()) + 1;
			if (column_num != 11) {
				$("#modalTx").modal('show');
			} else {
				$("#modalNote").modal('show');
			}
		});
	</script>
	<%@include file="../footer.jsp"%>
</body>
</html>