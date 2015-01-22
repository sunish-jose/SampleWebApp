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

		$("#next10Div").hide();
		
		$("#divPositionAdmin").hide();
		

		$("#debitNoteSearchResults").hide();

		$("#searchDebitNote").click(function() {
			$('#debitNoteSearchResults').show();

		});

		$("#btnNwxt10").click(function() {
			$("#invoiceInQueueTab").replaceWith($(invoiceInQueueTabNext));
		});
		
		$("#invoiceInQueueTab tr").click(function() {
			$("#divPositionAdmin").show();
		});
		
		$("#invoiceInQueueTabNext tr").click(function() {
			$("#divPositionAdmin").show();
		});
		
		

		$("#positionAdminTab tr").click(function() {
			$("#dialog-confirm").dialog({
				resizable : false,
				height : 250,
				width : 350,
				modal : true,
				buttons : {
					"Yes" : function() {
						$(this).dialog("close");
					},
					Cancel : function() {
						$(this).dialog("close");
					}
				}
			});
		})

		$("#btnCreditNote").click(function() {
			$("#creditNoteModal").modal('show');
		});

		$("#viewCreditNote").click(function() {

			$("#creditNoteModal").modal('show');
		});

	});
</script>

</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Credit Note/Debit Note</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-file-text-o fa-lg"></i>&nbsp;&nbsp;Credit
								Notes/Debit Notes
							</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button type="button" class="btn btn-success btn-sm"
								id="btnCreditNote">
								<b>Create Credit Note</b>
							</button>
						</p>
					</div>
				</div>
			</div>
			<div id="paymentInvoiceQueue" class="topPaddingLarge">
				<div class="row">
					<div class="col-md-12">
						<h4 id="127InvoicesInQueue">
							<i class="fa fa fa-database fa-rotate-90"></i>&nbsp;&nbsp;127
							Credit Notes in the Queue
						</h4>
					</div>
				</div>
			</div>
			<div id="creditNoteDebitNoteDiv" class="topPaddingLarge">
				<table
					class="table table-bordered  table-curved table-striped hoveringTable"
					id="invoiceInQueueTab">
					<tbody>
						<tr>
							<th>#</th>
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
							<td>1</td>
							<td>LBYYZ</td>
							<td>LAXYZ</td>
							<td>GSM Type</td>
							<td>12/2015</td>
							<td>45000</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>LAYYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2016</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>LAYZZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2016</td>
							<td>2500</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>4</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>5</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>6</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>7</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>8</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>9</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
						<tr>
							<td>10</td>
							<td>LBXYZ</td>
							<td>LAXYZ</td>
							<td>GSM</td>
							<td>12/2015</td>
							<td>3400</td>
							<td>GBP</td>
							<td>GBP</td>
							<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
									src="../images/pdfIcon.png"></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row bodypadding">
				<div class="col-md-12">
					<button type="button" class="btn btn-success btn-sm pull-right"
						id="btnNwxt10">
						<b>Refresh</b>&nbsp; <span class="glyphicon glyphicon-refresh"
							aria-hidden="true"></span>
					</button>
				</div>
			</div>

			<div class="row" id="divPositionAdmin">
				<div class="col-md-12">
					<div class="table-responsive">
						<h3>Position Admin</h3>
						<table class="table table-bordered table-striped table-curved hoveringTable" id="positionAdminTab">
							<tbody>
								<tr>
									<th>Partner</th>
									<th>Tadig Code</th>
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
									<td><a href="#" id="note"><img
											src="../images/note.jpg"></a></td>
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
									<td><a href="#" id="note"><img
											src="../images/note.jpg"></a></td>
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
									<td><a href="#" id="note"><img
											src="../images/note.jpg"></a></td>
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
									<td><a href="#" id="note"><img
											src="../images/note.jpg"></a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 
			<div class="row">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4 class="_pointer" id="h4ApplyCNDN">
								<i class="fa fa-plus-square-o"></i>&nbsp;&nbsp;Applying CN/DN
							</h4>
						</div>
					</div>
				</div>
			</div>
			
			<div id="applyCreditDebitNotes">
				<div class="row">
					<div class="col-md-12">
						<h4>Debt Note from Partner to Client</h4>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="client">Client</label> <input type='text' id="client"
								class="form-control" />
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="service">Partner</label> <input type='text'
								id="service" class="form-control" />
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="partner">Service Type</label> <input type='text'
								id="partner" class="form-control" />
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="serviceType">Traffic Period</label> <input
								type='text' id="serviceType" class="form-control" />
						</div>
					</div>
					<div class="col-md-12">
						<button class="btn btn-primary" type="submit" id="searchDebitNote">
							Search <span class="glyphicon glyphicon-search"
								aria-hidden="true"></span>
						</button>
					</div>
				</div>

				<div id="debitNoteSearchResults">
					<div class="row bottomBorderDiv bodypadding"></div>
					<div class="topPaddingMedium">
						<table class="table table-bordered  table-curved table-striped hoveringTable"
							id="invoiceInQueueTab">
							<tbody>
								<tr>
									<th>Partner</th>
									<th>Tadig Code</th>
									<th>Service Type</th>
									<th>Traffic Period</th>
									<th>Settlement Type</th>
									<th>Net SDR</th>
									<th>Net Amount</th>
									<th>Currency</th>
									<th>Due Date</th>
									<th>Position Type</th>
									<th>Action due date</th>
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
									<td>12/02/2015</td>
									<td><img src="../images/note.jpg"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
-->
		</div>
	</div>
	<div id="next10Div" class="topPaddingLarge">
		<table class="table table-bordered  table-curved table-striped hoveringTable"
			id="invoiceInQueueTabNext">
			<tbody>
				<tr>
					<th>#</th>
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
					<td>11</td>
					<td>LBYYZ</td>
					<td>LAXYZ</td>
					<td>GSM Type</td>
					<td>12/2015</td>
					<td>40000</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>12</td>
					<td>LAYYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2016</td>
					<td>1400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>13</td>
					<td>LAYZZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>1500</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>14</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>15</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>16</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>17</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>18</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>19</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
				<tr>
					<td>20</td>
					<td>LBXYZ</td>
					<td>LAXYZ</td>
					<td>GSM</td>
					<td>12/2015</td>
					<td>3400</td>
					<td>GBP</td>
					<td>GBP</td>
					<td><a href="../pdf/GSMInvoiceVdfone.pdf"><img
							src="../images/pdfIcon.png"></a></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div id="creditNoteModal" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4>
						<i class="fa fa-file-text-o fa-2x"></i>&nbsp;&nbsp;Credit
						Notes/Debit Notes
					</h4>
				</div>
				<!-- Modal header -->
				<div class="modal-body">
					<div class="row topPaddingLarge">
						<div class='col-md-12'>
							<div class="form-group">
								<label for="firstName">Amendment Type</label> <select
									id="amendmentType" class="form-control">
									<option>Credit Note from Partner to Clietnt</option>
									<option>Credit Note from Client to Partner</option>
									<option>Debt Note from Client to Partner</option>
									<option>Debt Note from Partner to Client</option>
								</select>
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="client">Client</label> <input type='text'
									id="client" class="form-control" />
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="partner">Partner</label> <input type='text'
									id="partner" class="form-control" />
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="serviceType">Service Type</label> <input type='text'
									id="serviceType" class="form-control" />
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="grossSDR">Gross SDR</label> <input type='text'
									id="grossSDR" class="form-control" />
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="grossAmount">Gross Amount</label> <input type='text'
									id="grossAmount" class="form-control" />
							</div>
						</div>
						<div class='col-md-2'>
							<div class="form-group">
								<label for="currency">Currency</label> <select
									id="amendmentType" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="grossAmount">Note</label>
								<textarea class="form-control" rows="3"></textarea>
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group divBottom">
								<label for="exampleInputFile">Upload File</label><input
									type="file" id="exampleInputFile">
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Create
						Note</button>
				</div>
			</div>
		</div>
	</div>
	<div id="dialog-confirm" title="Confirm un-allocate?" class="hiddenDiv">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 0 7px 20px 0;"></span>Would you like to
		allocate the item?
		</p>
	</div>
</body>
</html>