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
		
					$('#btnAddNewOpr').click(function () {
						$("#tadigCode").val(' ');
						$("#organization").val(' ');
						$("#serviceType").val(' ');
						$("#vatTaxNum").val(' ');
						$("#operatorDetails").modal('show');
					});

						$.fn.openOpModal = function() {
							$("#operatorDetails").modal('show');
						}
						
						$("#addressDiv").hide();
						$("#contactDiv").hide();
						$("#bankAccountDiv").hide();

						$("#addressPlus").click(
								function() {
									if ($('#addressPlus').hasClass(
											'fa-plus-square-o')) {
										$('#addressPlus').removeClass(
												'fa-plus-square-o');
										$('#addressPlus').addClass(
												'fa-minus-square-o');
									} else {
										$('#addressPlus').removeClass(
												'fa-minus-square-o');
										$('#addressPlus').addClass(
												'fa-plus-square-o');
									}
									$("#addressDiv").toggle();
								});

						$("#bankAccountPlus").click(
								function() {
									if ($('#bankAccountPlus').hasClass(
											'fa-plus-square-o')) {
										$('#bankAccountPlus').removeClass(
												'fa-plus-square-o');
										$('#bankAccountPlus').addClass(
												'fa-minus-square-o');
									} else {
										$('#bankAccountPlus').removeClass(
												'fa-minus-square-o');
										$('#bankAccountPlus').addClass(
												'fa-plus-square-o');
									}
									$("#bankAccountDiv").toggle();
								});

						$("#contactPlus").click(
								function() {
									if ($('#contactPlus').hasClass(
											'fa-plus-square-o')) {
										$('#contactPlus').removeClass(
												'fa-plus-square-o');
										$('#contactPlus').addClass(
												'fa-minus-square-o');
									} else {
										$('#contactPlus').removeClass(
												'fa-minus-square-o');
										$('#contactPlus').addClass(
												'fa-plus-square-o');
									}
									$("#contactDiv").toggle();
								});

						$("#tile1").mouseover(
								function() {
									$("#tile1").removeClass('clientTile')
											.addClass('clientTileBigBorder');
								});

						var users = [
								{
									value : 'LBYYZ TeleCellcom Telecommunications Inc.',
									Name : 'TeleCellcom Telecommunications Inc.',
									tadigCode : 'LBYYZ',
									Address : 'Address1'
								},
								{
									value : 'LAXYZ VimTapCom ZIP Co Ltd',
									Name : 'VimTapCom ZIP Co Ltd',
									tadigCode : 'LAXYZ',
									Address : 'Address1'
								},
								{
									value : 'LBABC ComStar Communications Corp',
									Name : 'ComStar Communications Corp',
									tadigCode : 'LAXYZ',
									Address : 'Address1'
								},
								{
									value : 'LBDFG JIC 1 K.Y.K',
									Name : 'JIC 1 K.Y.K',
									tadigCode : 'LBDFG',
									Address : 'Address1'
								},
								{
									value : 'LIEMM Telecom Communications Corp',
									Name : 'Telecom Communications Corp',
									tadigCode : 'LBDFG',
									Address : 'Address1'
								},
								{
									value : 'LIEZP TimeLine Communications Corp',
									Name : 'TimeLine Communications Corp',
									tadigCode : 'LIEZP',
									Address : 'Address1'
								},
								{
									value : 'LIYY9 BSG WirelessTelecomunications',
									Name : 'BSG WirelessTelecomunications',
									tadigCode : 'LIYY9',
									Address : 'Address1'
								},
								{
									value : 'MYPOL LimeLimeTeleCelcom Axixyz Berhad',
									Name : 'LimeLimeTeleCelcom Axixyz Berhad',
									tadigCode : 'MYPOL',
									Address : 'Address1'
								}, {
									value : 'MYZYX TeleCelcom Axixyz Berhad',
									Name : 'TeleCelcom Axixyz Berhad',
									tadigCode : 'MYZYX',
									Address : 'Address1'
								} ];

						$('#autocomplete')
								.autocomplete(
										{
											source : users,
											minLength : 2,
											select : function(event, ui) {
												$("#searchResults")
														.html(
																'<div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div class="fontMediumBold">'
																		+ ui.item.tadigCode
																		+ '</div><div>'
																		+ ui.item.Name
																		+ '</div><div>Address:'
																		+ ui.item.Address
																		+ '</div><div>Service Type: GSM'
																		+ '</div></div></div><div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div class="fontMediumBold">'
																		+ ui.item.tadigCode
																		+ '</div><div>'
																		+ ui.item.Name
																		+ '</div><div>Address:'
																		+ ui.item.Address
																		+ '</div><div>Service Type: SMS'
																		+ '</div></div></div><div class="col-md-4"><div class="clientTile" onMouseOver="showBorder()" onclick="openModal()"><div align="center"><img src="../images/operator.jpg" align="middle"></div><div class="fontMediumBold">'
																		+ ui.item.tadigCode
																		+ '</div><div>'
																		+ ui.item.Name
																		+ '</div><div>Address:'
																		+ ui.item.Address
																		+ '</div><div>Service Type: IOT'
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
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Operator - IO</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4><i class="fa fa-wifi fa-lg"></i>&nbsp;Operator - IO</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button type="button" class="btn btn-success btn-sm" id="btnAddNewOpr">
								<b>Add New Operator</b>
							</button>
						</p>
					</div>
				</div>
			</div>
			<div>
				<div class="row">
					<div class="col-md-8 col-sm-offset-1">
						<div id="imaginary_container">
							<div class="input-group stylish-input-groupOper">
								<select id="operatorOptions" class="form-control">
									<option>Tadig Code or Name</option>
									<option>VAT Number</option>
									<option>Address</option>
									<option>Country</option>
									<option>Post Code</option>
								</select> <span class="input-group-btn"> <input type="text"
									id="autocomplete" class="form-control input-large"
									placeholder="Enter your search...">
								</span> <span class="input-group-addon">
									<button type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row searchResults" id="searchResults"></div>
		</div>
	</div>

	<div id="operatorDetails" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-wifi fa-2x"></i>&nbsp;Operator Details
					</h4>
				</div>
				<!-- Modal header ends-->
				<div class="modal-body">
					<div class="row topPaddingSmall">
						<div class="col-md-6">
							<div class="form-group">
								<label for="tadigCode">Tadig Code</label> <input type="text"
									class="form-control" id="tadigCode" placeholder="LAXYZ">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">Organization</label> <input type="text"
									class="form-control" id="organization"
									placeholder="BSG Wireless">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">Service Type</label> <input type="text"
									class="form-control" id="serviceType" placeholder="GSM">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">VAT/TAX Number</label> <input type="text"
									class="form-control" id="vatTaxNum" placeholder="ATZP00988">
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group">
								<label for="fch">FCH</label>
								<select id="fch" class="form-control">
									<option>BSG Wireless</option>
									<option>Cnfone</option>
									<option>Nextgen</option>
									<option>Syniverse</option>
								</select>
							</div>
						</div>
						
					</div>
					<!-- address starts -->
					<div class="row">
						<div class="col-md-12">
							<h4>
								Address&nbsp;<i class="fa fa-plus-square-o" id="addressPlus"></i>
							</h4>
						</div>
					</div>
					<div class="row" id="addressDiv">
						<div class="col-md-12">
							<table class="table table-bordered table-curved fontSmall"
								id="addressTable">
								<tbody>
									<tr>
										<th>Address 1</th>
										<th>Address 2</th>
										<th>Address 3</th>
										<th>City</th>
										<th>Post code</th>
										<th>County</th>
										<th>Country</th>
										<th>Type</th>
									</tr>
									<tr>
										<td>BSG Wireless</td>
										<td>70 St Mary Axe</td>
										<td></td>
										<td>London</td>
										<td>EC3A 8BE</td>
										<td></td>
										<td>UK</td>
										<td></td>
									</tr>
									<tr>
										<td>TeleCellcom Telecomunications Inc</td>
										<td>7200</td>
										<td></td>
										<td>dublin</td>
										<td>43017</td>
										<td></td>
										<td>US</td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="btn btn-primary btn-xs">Add
								Address</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h4>
								Bank Account&nbsp;<i class="fa fa-plus-square-o"
									id="bankAccountPlus"></i>
							</h4>
						</div>
					</div>
					<!-- Bank Account -->
					<div class="row" id="bankAccountDiv">
						<div class="col-md-12">
							<table class="table table-bordered table-curved fontSmall"
								id="addressTable">
								<tbody>
									<tr>
										<th>Type</th>
										<th>Account Name</th>
										<th>Number</th>
										<th>Primary Currency</th>
										<th>Bank Name</th>
										<th>IBAN - Code</th>
									</tr>
									<tr>
										<td>Checking</td>
										<td>GSM BSG Wireless</td>
										<td>1234567890</td>
										<td>GBP</td>
										<td>Natwest</td>
										<td>IBANKKOP</td>
									</tr>
									<tr>
										<td>Select</td>
										<td>TeleCellcom Telecomunications Inc</td>
										<td>1234567890</td>
										<td>USD</td>
										<td>City</td>
										<td>IBANKKOP</td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="btn btn-primary btn-xs">Add
								Account</button>
						</div>
					</div>
					<!-- Bank account div ends -->
					<div class="row">
						<div class="col-md-12">
							<h4>
								Contacts&nbsp;<i class="fa fa-plus-square-o" id="contactPlus"></i>
							</h4>
						</div>
					</div>
					<!-- contact div start -->
					<!-- Contact Div starts -->
					<div class="row" id="contactDiv">
						<div class="col-md-12">
							<table class="table table-bordered table-curved fontSmall"
								id="addressTable">
								<tbody>
									<tr>
										<th>First Name</th>
										<th>Surname</th>
										<th>Contact Type</th>
										<th>Telephone</th>
										<th>Email</th>
									</tr>
									<tr>
										<td>John</td>
										<td>Mc Milan</td>
										<td>Debt Chasing</td>
										<td>+44-123-456-7780</td>
										<td>john@abc.com</td>
									</tr>
									<tr>
										<td>Miller</td>
										<td>Cash</td>
										<td>payment</td>
										<td>+44-103-4516-778</td>
										<td>miller.cash@xyz.com</td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="btn btn-primary btn-xs">Add
								Contact</button>
						</div>
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