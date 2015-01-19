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

<script>
	$(document).ready(function() {

		$('#payableInvoiceDiv').hide();

		$('#searchPayableInvoices').hide();

		$('#payableInvoiceSingleDiv').hide();
		
		$('#pdfInvoiceDiv').hide();

		$('#201InvoiceQueue').click(function() {
			$('#payableInvoiceDiv').show();
		});

		$('#searchPayableInvoice').click(function() {
			$('#searchPayableInvoices').show();
		});

		$('#btnSearchPayableInvoice').click(function() {
			$('#payableInvoiceSingleDiv').show();
		});

		$('#invoiceInQueueTab tr').click(function() {
			$('#documentHandlingModal').modal('show');
		});
		
		$('#payableInvoiceSearchResultTab tr').click(function() {
			$('#documentHandlingModal').modal('show');
		});
		
	});
</script>
</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Invoice Reconciliation</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-calculator fa-lg"></i>&nbsp;&nbsp;Payable
								Invoice Reconciliation
							</h4>
						</div>
					</div>
				</div>
			</div>
			<!-- bottom border div -->
			<div id="paymentInvoiceQueue" class="topPaddingXLarge">
				<div class="row">
					<div class="col-md-12">
						<h4 id="201InvoiceQueue" class="_pointer">
							<i class="fa fa fa-database fa-rotate-90"></i>&nbsp;&nbsp;201
							Invoices are in Queue
						</h4>
					</div>
				</div>

				<div class="row topPaddingSmall">
					<div class="col-md-12">
						<h4 id="searchPayableInvoice" class="_pointer">
							<i class="fa fa fa-search"></i>&nbsp;&nbsp;Search Payable
							Invoices
						</h4>
					</div>
				</div>
			</div>
			<div id="payableInvoiceDiv" class="topPaddingLarge">
				<table class="table table-bordered  table-curved hoveringTable"
					id="invoiceInQueueTab">
					<tbody>
						<tr>
							<th>Client</th>
							<th>Partner</th>
							<th>Service Type</th>
							<th>Traffic Period</th>
							<th>Gross SDR</th>
							<th>Gross Currency</th>
							<th>Currency</th>
						</tr>
						<tr>
							<td>LBYYZ</td>
							<td>LAXYZ</td>
							<td>GSM Type</td>
							<td>12/2015</td>
							<td>45000</td>
							<td>GBP</td>
							<td>GBP</td>
						</tr>
						<tr>
							<td>LAYYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2016</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
						</tr>
						<tr>
							<td>LAYZZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2016</td>
							<td>2500</td>
							<td>GBP</td>
							<td>GBP</td>
						</tr>
						<tr>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div id="searchPayableInvoices" class="topPaddingLarge">
				<div class="row bottomBorderDiv">
					<div class="col-md-12">
						<div id="clientTopDiv">
							<div class="cientTopLeft">
								<h4>Search Payable Invoices</h4>
							</div>
						</div>
					</div>
				</div>

				<div class="row topPaddingLarge">
					<div class="col-md-3">
						<div class="form-group">
							<label for="client">Start Date</label> <input type="text"
								class="form-control" id="client" placeholder="Client">
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="partner">Partner</label> <input type="text"
								class="form-control" id="partner" placeholder="Parner">
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="service">Service</label> <input type="text"
								class="form-control" id="service" placeholder="Service">
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="trafficPeriod">Traffic Period(MM/YYYY)</label> <input
								type="text" class="form-control" id="trafficPeriod"
								placeholder="MM/YYYY">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<button class="btn btn-primary" type="button"
							id="btnSearchPayableInvoice">
							Search&nbsp;<span class="glyphicon glyphicon-search"
								aria-hidden="true"></span>
						</button>
					</div>
				</div>
			</div>

			<div id="payableInvoiceSingleDiv" class="topPaddingLarge">
				<div class="row bottomBorderDiv"></div>
				<div class="topPaddingLarge">
					<table class="table table-bordered  table-curved hoveringTable" id="payableInvoiceSearchResultTab">
						<tbody>
							<tr>
								<th>Client</th>
								<th>Partner</th>
								<th>Service Type</th>
								<th>Traffic Period</th>
								<th>Gross SDR</th>
								<th>Gross Currency</th>
								<th>Currency</th>
							</tr>
							<tr>
								<td>LBYYZ</td>
								<td>LAXYZ</td>
								<td>GSM Type</td>
								<td>12/2015</td>
								<td>45000</td>
								<td>GBP</td>
								<td>GBP</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div id="pdfInvoiceDiv" class="IFrameDiv">
				<iframe src="../pdf/GSMInvoiceVdfone.pdf" width="100%" height="100%">
				</iframe>
			</div>

		</div>
	</div>
	<div id="documentHandlingModal" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-clipboard fa-lg"></i>&nbsp;&nbsp;Document Handling
					</h4>
				</div>
				<div class="modal-body">
					<div class="row topPaddingLarge">
						<div id="IFrameDiv" class="IFrameDiv">
							<iframe src="../pdf/GSMInvoiceVdfone.pdf" width="100%"
								height="100%"> </iframe>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>