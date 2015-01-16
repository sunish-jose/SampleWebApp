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
	$(document).ready(
			function() {
				
				$.fn.openOpModal = function() {
					$("#AgreementDetail").modal('show');
				}

				var users = [ {
					value : 'LBYYZ TeleCellcom Telecommunications Inc.',
					Name : 'TeleCellcom Telecommunications Inc.',
				}, {
					value : 'LAXYZ VimTapCom ZIP Co Ltd',
					Name : 'VimTapCom ZIP Co Ltd'
				}, {
					value : 'LBABC ComStar Communications Corp',
					Name : 'ComStar Communications Corp'
				}, {
					value : 'LBDFG JIC 1 K.Y.K',
					Name : 'JIC 1 K.Y.K'
				}, {
					value : 'LIEMM Telecom Communications Corp',
					Name : 'Telecom Communications Corp'
				}, {
					value : 'LIEZP TimeLine Communications Corp',
					Name : 'TimeLine Communications Corp'
				}, {
					value : 'LIYY9 BSG WirelessTelecomunications',
					Name : 'BSG WirelessTelecomunications'
				}, {
					value : 'MYPOL LimeLimeTeleCelcom Axixyz Berhad',
					Name : 'LimeLimeTeleCelcom Axixyz Berhad'
				}, {
					value : 'MYZYX TeleCelcom Axixyz Berhad',
					Name : 'TeleCelcom Axixyz Berhad'
				} ];

				$('#autocomplete').autocomplete({
					source : users,
					minLength : 2,
				});
				
				var operatores = [ {
					value : 'LBYYZ TeleCellcom Telecommunications Inc.',
					Name : 'TeleCellcom Telecommunications Inc.',
				}, {
					value : 'LAXYZ VimTapCom ZIP Co Ltd',
					Name : 'VimTapCom ZIP Co Ltd'
				}, {
					value : 'LBABC ComStar Communications Corp',
					Name : 'ComStar Communications Corp'
				}, {
					value : 'LBDFG JIC 1 K.Y.K',
					Name : 'JIC 1 K.Y.K'
				}, {
					value : 'LIEMM Telecom Communications Corp',
					Name : 'Telecom Communications Corp'
				}, {
					value : 'LIEZP TimeLine Communications Corp',
					Name : 'TimeLine Communications Corp'
				}, {
					value : 'LIYY9 BSG WirelessTelecomunications',
					Name : 'BSG WirelessTelecomunications'
				}, {
					value : 'MYPOL LimeLimeTeleCelcom Axixyz Berhad',
					Name : 'LimeLimeTeleCelcom Axixyz Berhad'
				}, {
					value : 'MYZYX TeleCelcom Axixyz Berhad',
					Name : 'TeleCelcom Axixyz Berhad'
				} ];

				$('#autocompleteOpt').autocomplete({
					source : operatores,
					minLength : 2,
					select : function(event, ui) {
						$("#searchResults")
								.html(
										'<div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div>Name:'
												+ ui.item.Name
												+ '</div><div>Tadig Code:'
												+ ui.item.tadigCode
												+ '</div><div>Address:'
												+ ui.item.Address
												+ '</div></div></div><div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div>Name:'
												+ ui.item.Name
												+ '</div><div>Tadig Code:'
												+ ui.item.tadigCode
												+ '</div><div>Address:'
												+ ui.item.Address
												+ '</div></div></div><div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div>Name:'
												+ ui.item.Name
												+ '</div><div>Tadig Code:'
												+ ui.item.tadigCode
												+ '</div><div>Address:'
												+ ui.item.Address
												+ '</div></div></div>');
					}
				});				

			});
</script>

<script>
	function openModal() {
		$.fn.openOpModal()
	}
</script>

</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Roaming Agreement - IO</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4><i class="fa fa-file-text fa-2x"></i>&nbsp;&nbsp;Roaming Agreement - IO</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button type="button" class="btn btn-success btn-sm">
								<b>Add Agreement</b>
							</button>
						</p>
					</div>
				</div>
			</div>
			<div class="searchContainer">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div id="imaginary_container">
							<label for="tadigCode">Tadig Code on Name:</label>
							<div id="the-basics" class="input-group stylish-input-group">
								<input type="text"
									placeholder="Enter Tadig Code or Name to search"
									id="autocomplete" class="form-control"> <span
									class="input-group-addon">
									<button type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="searchContainer">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div id="imaginary_container">
							<label for="tadigCode">Operator Name:</label>
							<div id="the-basics" class="input-group stylish-input-group">
								<input type="text" placeholder="Enter Operator Name to search"
									id="autocompleteOpt" class="form-control"> <span
									class="input-group-addon">
									<button type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row searchResults" id="searchResults">
				<div class="col-md-6">
					<div id="searchResultPlaceHolder" class="clientTile"></div>
				</div>
			</div>
		</div>

	</div>

	<div id="AgreementDetail" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-file-text fa-2x"></i>&nbsp;Agreement Details - GSM
					</h4>
				</div>
				<!-- Modal header -->
				<div class="modal-body">
					<div class="row">
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Client</label> <input type='text'
									value="LAXYZ - VimTapCom ZIP Co Ltd" id="client"
									class="form-control" />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Partner</label> <input type='text'
									value="LBABC -  ComStar Communications Corp."
									id="partner" class="form-control" />
							</div>
						</div>

						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Settlement Type</label> <select
									id="SettlementType" class="form-control">
									<option>Bi-lateral</option>
									<option>Gross</option>
								</select>
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Direction</label> <select id="Direction"
									class="form-control">
									<option>Both</option>
									<option>Pay Only</option>
									<option>Receiver Only</option>
								</select>
							</div>
						</div>


						<div class='col-md-12'>
							<div class="form-group">
								<label for="primaryCurrency">Netting Currency</label> <select
									id="primaryCurrency" class="form-control">
									<option>SDR</option>
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>

						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Receivable Transacting Currency</label>
								<select id="RecCurrency" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>

							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Payable Transacting Currency</label> <select
									id="PayCurrency" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>


						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Make Payment</label> <select
									id="MakePayment" class="form-control">
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Generate Invoice</label> <select
									id="GenerateInvoice" class="form-control">
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>


						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Receivable Payment Term</label> <input
									type='text' id="recPaymentTerm" class="form-control" value=30 />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Payable Payment Term</label> <input
									type='text' id="payPaymentTerm" class="form-control" value=45 />
							</div>
						</div>


						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Payable Invoice Under Threshold
									(SDR)</label> <input type='text' id="payUnderThreshold"
									class="form-control" value=5 />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Payable Invoice Over Threshold
									(SDR)</label> <input type='text' id="payOverThreshold"
									class="form-control" value=5 />
							</div>
						</div>


						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Allocation Under Threshold
									(Currency)</label> <input type='text' id="payUnderThreshold"
									class="form-control" value=10 />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Allocation Over Threshold
									(Currency)</label> <input type='text' id="payOverThreshold"
									class="form-control" value=15 />
							</div>
						</div>




						<!-- 
						<div class="col-md-3">
							<label> Invoice Generation</label>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">Start Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label>Debtors / Receivable Management</label>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">Start Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label>Payments/Settlements </label>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>

					</div>
					<div class="row">
						<div class="col-md-6">
							<label>IOT Calculation and Settlements </label>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<input type='text' id="datepickerStart" class="form-control"
									placeholder="Start date" />
							</div>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<input type='text' id="datepickerStart" placeholder="End date"
									class="form-control" />
							</div>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label>General Ledger (Debtors/ Creditors Cash
								Allocations)</label>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">Start Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label>Software as service</label>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">Start Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class='col-md-3'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class="col-md-1">
							<input type="checkbox" value="" checked="checked" disabled>
						</div>

 -->

						<!-- 
						<div class='col-md-6'>
						<label for="trnCurrency">Secondary Funding Currency</label>
							<ul class="list-group" id="trnCurrency">
								<li class="list-group-item">GBP <span class="glyphicon glyphicon-gbp"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
								<li class="list-group-item">USD <span class="glyphicon glyphicon-usd"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
								<li class="list-group-item">EUR <span class="glyphicon glyphicon-euro"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
							</ul>
						</div>
						
						<div class='col-md-6'>
							<div class="form-group">
								<label for="trnCurrency">Transaction Currency</label>							
							<ul class="list-group" id="trnCurrency">
								<li class="list-group-item">GBP <span class="glyphicon glyphicon-gbp"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
								<li class="list-group-item">USD <span class="glyphicon glyphicon-usd"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
								<li class="list-group-item">EUR <span class="glyphicon glyphicon-euro"></span><span class="badge"><span class="glyphicon glyphicon-pencil _pointer"></span></span></li>
							</ul>
							</div>
						</div>
						 -->

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../footer.jsp"%>
</body>
</html>