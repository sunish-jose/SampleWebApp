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
	$(document).ready(function() {

		$('#searchResultsDiv').hide();
		$('#receiptAmountPop').hide();

		$("#datepickerStartDate").datepicker({
			dateFormat : "dd/mm/yy"
		});
		$("#datepickerEndDate").datepicker({
			dateFormat : "dd/mm/yy"
		});

		$('#searchAllocation').click(function() {
			$('#searchResultsDiv').show();
		});

		$('#collectionNallocationTab tr').click(function() {
			$('#receiptAmountPop').show();
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

				$('#autocomplete').autocomplete({
									source : users,
									minLength : 2,
				});

	});

	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 5000,
			values : [ 1000, 4000 ],
			slide : function(event, ui) {
				$("#amount").val("£" + ui.values[0] + " - £" + ui.values[1]);
			}
		});
		$("#amount").val(
				"£" + $("#slider-range").slider("values", 0) + " - £"
						+ $("#slider-range").slider("values", 1));
	});
</script>

<style type="text/css">
input[type="checkbox"] {
	display: none;
}

input[type="checkbox"] ~ label {
	color: blue;
	font-family: 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode',
		'Lucida Sans', Tahoma, sans-serif;
}

input[type="checkbox"] ~ label:hover {
	cursor: pointer;
}

input[type="checkbox"]:checked ~ label {
	color: green;
	font-family: 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode',
		'Lucida Sans', Tahoma, sans-serif;
}

input[type="checkbox"]:checked ~ label:hover {
	cursor: pointer;
}

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
			<li class="active">Collection &#38; Allocations</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-database fa-2x"></i>&nbsp;&nbsp;Collection &#38;
								Allocation
							</h4>
						</div>
					</div>
				</div>
			</div>
			<div id="searchContainer">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<div class="form-group">
							<label for="client">Client</label> <input type="text"
								class="form-control" id="autocomplete"
								placeholder="Enter Tadig Code or Name to Search">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="endDate">Receipt Amount Range</label> <input
								type="text" id="amount" readonly
								style="border: 0; color: #f6931f; font-weight: bold;">
							<div id="slider-range"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="startDate">Start Date</label> <input type="text"
								class="form-control" id="datepickerStartDate" placeholder="">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="endDate">End Date</label> <input type="text"
								class="form-control" id="datepickerEndDate" placeholder="">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<button class="btn btn-primary" type="submit"
								id="searchAllocation">
								Search <span class="glyphicon glyphicon-search"
									aria-hidden="true"></span>
							</button>
						</div>
					</div>
				</div>
			</div>

			<div id="searchResultsDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="collectionNallocationTab">
							<tbody>
								<tr>
									<th>Date</th>
									<th>Bank Reference</th>
									<th>Original Amount</th>
									<th>Balance Amount</th>
									<th>Status - Attachment + brows</th>
								</tr>
								<tr>
									<td>23/01/2015</td>
									<td>Bank Reference full text</td>
									<td>5000</td>
									<td>1000</td>
									<td>Partially Allocated</td>
								</tr>
								<tr>
									<td>23/01/2015</td>
									<td>Bank Reference full text</td>
									<td>6000</td>
									<td>6000</td>
									<td>Open</td>
								</tr>
								<tr>
									<td>23/01/2015</td>
									<td>Bank Reference full text</td>
									<td>7000</td>
									<td>7000</td>
									<td>Open</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div id="receiptAmountPop">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="startDate">Original Receipt Amount</label> <input
								type="text" class="form-control" id="originalReceiptAmt"
								placeholder="5500">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="startDate">Balance Receipt Amount</label> <input
								type="text" class="form-control" id="balanceReceiptAmt"
								placeholder="4500">
						</div>
					</div>
				</div>
				<div class="row bottomBorderDiv"></div>

				<div class="topPaddingLarge">
					<table class="table plainTable fontSmall">
						<tbody>
							<tr>
								<th>Client</th>
								<th>Partner</th>
								<th>Service Type</th>
								<th>Traffic Period</th>
								<th>Original Amt</th>
								<th>Balance Amt</th>
								<th>Currency</th>
								<th>Allocation Amt</th>
								<th>Reason</th>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="client1stRow"
											placeholder="LBYYZ">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="partner"
											placeholder="LAXYZ">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="serviceType"
											placeholder="GSM">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="trafficPeriod"
											placeholder="01/15">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="originalAmount"
											placeholder="4500" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="balanceAmount"
											placeholder="3500" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="currency"
											placeholder="USD" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="allocationAmount"
											placeholder="2500">
									</div>
								</td>
								<td>
									<div class="form-group">
										<select id="reason" class="form-control">
											<option>Bank Charges</option>
											<option>FX Lost</option>
											<option selected>FX Gained</option>
											<option>Overvalue position</option>
											<option>Undervaue position</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="client1stRow"
											placeholder="LBABC">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="partner"
											placeholder="LIEZP">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="serviceType"
											placeholder="GSM">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="trafficPeriod"
											placeholder="09/15">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="originalAmount"
											placeholder="2500" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="balanceAmount"
											placeholder="1000" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="currency"
											placeholder="GSP" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="allocationAmount"
											placeholder="2500">
									</div>
								</td>
								<td>
									<div class="form-group">
										<select id="reason" class="form-control">
											<option>Bank Charges</option>
											<option>FX Lost</option>
											<option>FX Gained</option>
											<option>Overvalue position</option>
											<option>Undervaue position</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="client1stRow"
											placeholder="LIEZP">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="partner"
											placeholder="MYZYX">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="serviceType"
											placeholder="GSM">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="trafficPeriod"
											placeholder="10/15">
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="originalAmount"
											placeholder="4500" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="balanceAmount"
											placeholder="3500" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="currency"
											placeholder="EUR" disabled>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input type="text" class="form-control" id="allocationAmount"
											placeholder="2000">
									</div>
								</td>
								<td>
									<div class="form-group">
										<select id="reason" class="form-control">
											<option>Bank Charges</option>
											<option>FX Lost</option>
											<option>FX Gained</option>
											<option>Overvalue position</option>
											<option>Undervaue position</option>
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="bodypadding">
							<button type="button" class="btn btn-primary">Allocate</button>
					</div>
				</div>
			</div>

			<!-- blue border div ends -->
		</div>
	</div>
	<!-- container ends -->

	<%@include file="../footer.jsp"%>
</body>
</html>