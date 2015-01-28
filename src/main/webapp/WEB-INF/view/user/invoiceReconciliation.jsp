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
			var index = $(this).index('#invoiceInQueueTab tbody tr');
			if(index ==1){
			$('#documentHandlingModal').modal('show');
			} else {
				window.location="../user/invoiceReconciliationFrame"
			}
			
		});

		$('#payableInvoiceSearchResultTab tr').click(function() {
			$('#documentHandlingModal').modal('show');
		});

	});
</script>
<style>
.FixedHeightContainer {
	height: 600px;
	overflow-x: hidden;
	overflow-y: auto;
}

.Content {
	overflow-x: hidden;
	overflow-y: auto;
	background: #fff;
}
</style>
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
				<div class="row bodypadding">
				<div class="col-md-12">
					<button type="button" class="btn btn-success btn-sm pull-right"
						id="btnNwxt10">
						<b>Refresh</b>&nbsp; <span class="glyphicon glyphicon-refresh"
							aria-hidden="true"></span>
					</button>
				</div>
			</div>
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
					<table class="table table-bordered  table-curved hoveringTable"
						id="payableInvoiceSearchResultTab">
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
					<div class="row">
						<div id="IFrameDiv" class="IFrameDiv">
							<iframe src="../pdf/GSMInvoiceVdfone.pdf" width="100%"
								height="100%"></iframe>
						</div>
					</div>
					
					<div class="FixedHeightContainer topPaddingLarge">
						<div class="Content">
							<div class="row">
								<div class="col-md-12 bottomBorderDiv">
									<h4>Invoice Values</h4>
								</div>
								
								<div class="col-md-4">
									<div class="form-group has-error">
										<label class="control-label"  for="datepicker">Invoice Number *</label><input
											type='text' id="imageRefNumber" placeholder="2234657"
											class="form-control input-sm"/>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group has-error">
										<label class="control-label"  for="datepicker">First TAP *</label> <input type='text'
											id="imageRefNumber" placeholder="GBP" class="form-control input-sm" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group has-error">
										<label class="control-label"  for="datepicker">Last TAP *</label> <input type='text'
											id="imageRefNumber" placeholder="GBP" class="form-control input-sm" />
									</div>
								</div>
								
								
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Net SDR *</label> <input type='text'
											id="imageRefNumber" placeholder="1,000.00"
											class="form-control input-sm" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Tax SDR *</label> <input type='text'
											id="imageRefNumber" placeholder="1,00.00"
											class="form-control input-sm" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Tax Rate *</label> <input type='text'
											id="imageRefNumber input-sm" placeholder="10%" class="form-control" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label"  for="datepicker">Gross SDR *</label> <input type='text'
											id="imageRefNumber input-sm" placeholder="1100" class="form-control" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 bottomBorderDiv">
									<h4>DCH Values</h4>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Net SDR</label> <input type='text'
											id="imageRefNumber" placeholder="1,000.00"
											class="form-control readOnly input-sm" disabled="disabled" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Tax SDR</label> <input type='text'
											id="imageRefNumber" placeholder="1,00.00"
											class="form-control input-sm" disabled="disabled" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Tax Rate</label> <input type='text'
											id="imageRefNumber" placeholder="10%" class="form-control input-sm"
											disabled="disabled" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Gross SDR</label> <input type='text'
											id="imageRefNumber" placeholder="1100" class="form-control input-sm"
											disabled="disabled" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Stored Currency</label> <input
											type='text' id="imageRefNumber" placeholder="GBP"
											class="form-control input-sm" disabled="disabled" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Invoice Currency *</label> <select
											id="primaryCurrency" class="form-control input-sm">
											<option>USD</option>
											<option>EUR</option>
											<option>GBP</option>
										</select>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="pull-right">
										<button class="btn btn-primary btn-sm" type="button">Submit</button>
										<button class="btn btn-primary btn-sm" type="button">Submit
											&#38; Next</button>
									</div>
								</div>
							</div>


							<!-- <div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Net USD
												1500.00</span>
										</h4>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Tax USD
												150.00</span>
										</h4>
									</div>
								</div>
								<div class="col-md-3"></div>
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Gross USD
												1650.00</span>
										</h4>
									</div>
								</div>
								<div class="col-md-12">
									<div class="pull-right">
										<button class="btn btn-default" type="button">Compare
											and Complete</button>
									</div>
								</div>
							</div> -->

							<div class="row">
								<div class="col-md-12 bottomBorderDiv">
									<h4>Incoming Docs to process: 274</h4>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Client</label> <input type='text'
											id="imageRefNumber" placeholder="12348654"
											class="form-control input-sm" disabled="disabled"/>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="datepicker">Partner</label> <input type='text'
											id="imageRefNumber" placeholder="Received"
											class="form-control input-sm" disabled="disabled"/>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Document Type *</label> <select
											id="primaryCurrency" class="form-control disabled input-sm">
											<option>GSM Invoice</option>
											<option>SMS Invoice</option>
											<option>IOT Invoice</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group has-error">
										<label class="control-label" for="datepicker">Traffic Period *</label> <input type='text'
											id="imageRefNumber" placeholder="Received"
											class="form-control input-sm" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4"></div>
							</div>

							<!-- <div class="col-md-4">
									<div class="form-group">
										<label for="primaryCurrency">Receipient</label> <select
											id="primaryCurrency" class="form-control">
											<option>Vodafone</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="primaryCurrency">Sender</label> <select
											id="primaryCurrency" class="form-control">
											<option>3 Mobile</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="primaryCurrency">Traffic Period</label> <select
											id="primaryCurrency" class="form-control">
											<option>01/2015</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="datepicker">Invoice Number</label> <input
											type='text' id="imageRefNumber"
											placeholder="Enter Text or Use Default" class="form-control" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="primaryCurrency">Invoice Status</label> <select
											id="primaryCurrency" class="form-control">
											<option>Received not ready</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Sender FCH</label> <input type='text'
											id="imageRefNumber" placeholder="Syniverse"
											class="form-control" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Invoice FCH</label> <select
											id="primaryCurrency" class="form-control">
											<option>BSG</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Stored Pay Currency</label> <input
											type='text' id="imageRefNumber" placeholder="USD"
											class="form-control" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Invoice Currency</label> <select
											id="primaryCurrency" class="form-control">
											<option>USD</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="radio">
										<label><input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Use SDR </label>&nbsp; <label><input
											type="radio" name="optionsRadios" id="optionsRadios1"
											value="option1"> Use Currency </label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="datepicker">Pegged USD/SDR Rate</label><input
											type='text' id="imageRefNumber" placeholder="1.5000"
											class="form-control" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="pull-right">
										<button class="btn btn-default" type="button">Save
											Updates</button>
										<button class="btn btn-default" type="button">FCH
											Mismatch</button>
										<button class="btn btn-default" type="button">AA.13
											Currency Query</button>
									</div>
								</div>
							</div> -->
							<!-- <div class="row">
								<div class="col-md-12">
									<div class="bottomBorderDiv">
										<h4>DCH Values</h4>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Net SDR
												1500.00</span>
										</h4>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Tax SDR
												150.00</span>
										</h4>
									</div>
								</div>
								<div class="col-md-3"></div>
								<div class="col-md-3">
									<div class="form-group">
										<h4>
											<span class="label label-default label-lg">Gross SDR
												1650.00</span>
										</h4>
									</div>
								</div>
							</div> -->

							<div class="modal-footer">
								<button type="button" class="btn btn-default btn-sm"
									data-dismiss="modal">Close</button>
									<button class="btn btn-primary btn-sm" type="button">Save</button>
										<button class="btn btn-primary btn-sm" type="button">FCH
											Mismatch</button>
										<button class="btn btn-primary btn-sm" type="button">AA.13
											Currency Query</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>