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

		$('#allocationTabDiv').hide();
		
		
		$('#allocationPositionDiv').hide();

		$("#datepickerStartDate").datepicker({
			dateFormat : "dd/mm/yy"
		});

		$("#datepickerEndDate").datepicker({
			dateFormat : "dd/mm/yy"
		});

		$('#searchAllocation').click(function() {
			$('#searchResultsDiv').show();
		});
		
		$('#searchPosition').click(function() {
			$('#allocationPositionDiv').show();
		});
		
		
		

		$('#collectionNallocationTab tr').click(function() {
			$('#allocationTabDiv').show();
		});

		$('#allocationTab tr').click(function() {
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
		});
		
		
		$('#positionAllocationDetailsTab tr').click(function() {
			$("#dialog-confirm").dialog({
				resizable : false,
				height : 250,
				width : 350,
				modal : true,
				opacity: .70,
				buttons : {
					"Yes" : function() {
						$(this).dialog("close");
					},
					Cancel : function() {
						$(this).dialog("close");
					}
				}
			});
		});
		
		var users = [ {
			value : 'LBYYZ TeleCellcom Telecommunications Inc.',
			Name : 'TeleCellcom Telecommunications Inc.',
			tadigCode : 'LBYYZ',
			Address : 'Address1'
		}, {
			value : 'LAXYZ VimTapCom ZIP Co Ltd',
			Name : 'VimTapCom ZIP Co Ltd',
			tadigCode : 'LAXYZ',
			Address : 'Address1'
		}, {
			value : 'LBABC ComStar Communications Corp',
			Name : 'ComStar Communications Corp',
			tadigCode : 'LAXYZ',
			Address : 'Address1'
		}, {
			value : 'LBDFG JIC 1 K.Y.K',
			Name : 'JIC 1 K.Y.K',
			tadigCode : 'LBDFG',
			Address : 'Address1'
		}, {
			value : 'LIEMM Telecom Communications Corp',
			Name : 'Telecom Communications Corp',
			tadigCode : 'LBDFG',
			Address : 'Address1'
		}, {
			value : 'LIEZP TimeLine Communications Corp',
			Name : 'TimeLine Communications Corp',
			tadigCode : 'LIEZP',
			Address : 'Address1'
		}, {
			value : 'LIYY9 BSG WirelessTelecomunications',
			Name : 'BSG WirelessTelecomunications',
			tadigCode : 'LIYY9',
			Address : 'Address1'
		}, {
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

</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Receipt &#38;	Allocation handling</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-money fa-lg"></i>&nbsp;&nbsp;Receipt &#38;
								Allocation handling
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
					<div class="col-md-12 bodypadding">
							<button class="btn btn-primary btn-sm" type="button" id="searchAllocation">Search Receipt</button>
							<button type="button" class="btn btn-primary btn-sm" id="searchPosition">Search Position</button>
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

			<div id="allocationTabDiv">
				<div class="table-responsive">
					<table class="table table-bordered  table-curved hoveringTable"
						id="allocationTab">
						<tbody>
							<tr>
								<th>Client</th>
								<th>Partner</th>
								<th>Service Type</th>
								<th>Traffic Period</th>
								<th>Amount</th>
								<th>Balance Amt</th>
								<th>Currency</th>
								<th>Allocation Amt</th>
								<th>Rason</th>
								<th>Status</th>
							</tr>
							<tr>
								<td>GBROR</td>
								<td>AIACW</td>
								<td>GSM</td>
								<td>01/2015</td>
								<td>1015.25</td>
								<td>0.00</td>
								<td>GBP</td>
								<td>1000.25</td>
								<td>Bank Charges</td>
								<td>Settled</td>
							</tr>
							<tr>
								<td>GBROR</td>
								<td>ESPRT</td>
								<td>GSM</td>
								<td>01/2015</td>
								<td>2500.00</td>
								<td>500.00</td>
								<td>GBP</td>
								<td>600.25</td>
								<td></td>
								<td>Partly Allocate</td>
							</tr>
							<tr class="success">
								<td>GBRCN</td>
								<td>AIACW</td>
								<td>GSM</td>
								<td>03/2015</td>
								<td>3000.00</td>
								<td>0</td>
								<td>GBP</td>
								<td>600</td>
								<td></td>
								<td>Settled</td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				
				<div id="allocationPositionDiv">
				<div class="row bottomBorderDiv">
					<div class="col-md-12">
						<div id="clientTopDiv">
							<div class="cientTopLeft">
								<h4>Position Allocation Details</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="topPaddingLarge">
					<table class="table plainTable fontSmall">
						<tbody>
							<tr>
								<th>Client</th>
								<th>Partner</th>
								<th>Service Type</th>
								<th>Traffic Period</th>
								<th>Original Amt</th>
								<th>Allocation Amt</th>
								<th>Currency</th>
								<th>Status</th>
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
										<input type="text" class="form-control" id="allocationAmount"
											placeholder="2500" disabled>
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
										<input type="text" class="form-control" id="status"
											placeholder="allocated" disabled>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="topPaddingSmall">
					<table class="table table-bordered  table-curved hoveringTable" id="positionAllocationDetailsTab">
						<tbody>
							<tr>
								<th>Date</th>
								<th>Reference</th>
								<th>Receipt Original Amt</th>
								<th>Currency</th>
								<th>Pos Allc</th>
								<th>Currency</th>
								<th>Reason</th>
							</tr>
							<tr>
								<td>12/01/2015</td>
								<td>GBRMT paid for GBROR fx 1.7234 - no sort code 102011010</td>
								<td>10000.00</td>
								<td>GBP</td>
								<td>2550.00</td>
								<td>GBP</td>
								<td></td>
							</tr>
							<tr>
								<td>12/01/2015</td>
								<td>GBRMT paid for GBROR fx 1.7234 - no sort code 102011010</td>
								<td>7500.00</td>
								<td>GBP</td>
								<td>1000.25</td>
								<td>GBP</td>
								<td></td>
							</tr>
							<tr>
								<td>12/01/2015</td>
								<td>GBRMT paid for GBROR fx 1.7234 - no sort code 102011010</td>
								<td>3500.00</td>
								<td>GBP</td>
								<td>1000.26</td>
								<td>GBP</td>
								<td>Bank Charge</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div id="dialog-confirm" title="Confirm un-allocate?" class="hiddenDiv">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 0 7px 20px 0;"></span>Would you like to
			un-allocate the item
		</p>
	</div>
	<!-- Container ends -->
	<%@include file="../footer.jsp"%>
</body>

</html>