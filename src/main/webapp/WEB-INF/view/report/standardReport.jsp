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
		
		$('#autocomplete').autocomplete(
				{
					source : users,
					minLength : 2,
				});
		

		$('#download1,#download2,#download3').click(function() {
			$("#dialog-confirm").attr("title", "Information");
			$("#dialog-confirm").html("Download in progress");
			$("#dialog-confirm").height(100);
			$("#dialog-confirm").dialog({
				resizable : false,
				width : 350,
				modal : true,
				opacity : .70,
				buttons : {
					"Ok" : function() {
						$(this).dialog("close");
					}
				}
			});
		});

		$('#prePaymentRepDiv').hide();
		$('#actualRepDiv').hide();
		$('#monthlyAllocRepDiv').hide();
		$('#unAllocCashRepDiv').hide();
		$('#outstandingPositionRepDiv').hide();
		$('#monthlyBankStatementRepDiv').hide();
		$('#allLatestRepDiv').hide();

		$('#prePaymentRep').click(function() {
			if ($('#autocomplete').val() != "") {
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#prePaymentRepDiv').show();
			} else {
				$("#dialog-confirm").attr("title", "Warning!");
				$("#dialog-confirm").html("Please enter a Tadig Code or Name");
				$("#dialog-confirm").height(100);
				$("#dialog-confirm").dialog({
					resizable : false,
					width : 350,
					modal : true,
					opacity : .70,
					buttons : {
						"Ok" : function() {
							$(this).dialog("close");
						}
					}
				});
			}
			;
		});

		$('#actualRep').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#actualRepDiv').show();
			}
			;
		});

		$('#monthlyAllocRep').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#monthlyAllocRepDiv').show();
			}
			;
		});

		$('#unAllocCashRep').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#unAllocCashRepDiv').show();
			}
			;
		});

		$('#outstandingPositionRep').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#outstandingPositionRepDiv').show();
			}
			;
		});

		$('#monthlyBankStatementRep').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#allLatestRepDiv').hide();
				$('#monthlyBankStatementRepDiv').show();
			}
			;
		});

		$('#allLatestReports').click(function() {
			if ($("#autocomplete").val() != "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').show();
			}
			;
		});

		// Clear all report lists when the client text is empty
		$('#autocomplete').keyup(function() {
			if ($("#autocomplete").val() == "") {
				$('#prePaymentRepDiv').hide();
				$('#actualRepDiv').hide();
				$('#monthlyAllocRepDiv').hide();
				$('#unAllocCashRepDiv').hide();
				$('#outstandingPositionRepDiv').hide();
				$('#monthlyBankStatementRepDiv').hide();
				$('#allLatestRepDiv').hide();
			}
			;
		});
	});
</script>


</head>
<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Standard Reports</li>
		</ol>

		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="clientTopLeft">
							<h4><i class="fa fa-file-text fa-lg"></i>&nbsp;Standard Reports</h4>
						</div>
					</div>
				</div>
			</div>
			<div id="searchContainer">
				<div class="row topPaddingLarge">
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
			<div id="bucketList" class="topPaddingXLarge">
				<div class="row">
					<div class="col-md-2 col-sm-offset-3">
						<div>
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="prePaymentRep"></i><br>
						<label class="stdReportLabel">Pre-payment Report</label>
						</div>
					</div>
					<div class="col-md-2">
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="actualRep"></i><br>
						<label class="stdReportLabel">Actual Report</label>
					</div>
					<div class="col-md-2">
					<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="monthlyAllocRep"></i><br>
						<label class="stdReportLabel">Monthly Application Report</label>
					</div>
					</div>
					<div class="row">
					<div class="col-md-2 col-sm-offset-2">
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="unAllocCashRep"></i><br>
						<label class="stdReportLabel">Un-allocated Case Report</label>
					</div>
					<div class="col-md-2">
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="outstandingPositionRep"></i><br>
						<label class="stdReportLabel">Outstanding Position Report</label>
					</div>
					<div class="col-md-2">
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="monthlyBankStatementRep"></i><br>
						<label class="stdReportLabel">Monthly Bank Statement</label>
					</div>
					<div class="col-md-2">
						<i class="fa fa-file-text fa-5x reportIconColor _pointer" id="allLatestReports"></i><br>
						<label class="stdReportLabel">All Latest Reports</label>
					</div>
				</div>

<!-- 				<div class="row">
					<div class="col">
						<a id="prePaymentRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Pre-Payment Report</a> <a
							id="actualRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Actual Report</a> <a
							id="monthlyAllocRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Monthly Allocation Report</a> <a
							id="unAllocCashRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Un-Allocated Cash Report</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 bodypadding">
						<a id="outstandingPositionRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Outstanding Position Report</a> <a
							id="monthlyBankStatementRep" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>Monthly Bank Statement</a> <a
							id="allLatestReports" class="btn btn-lg btn-success"><i
							class="fa fa-2x pull-left"></i>All Latest Reports</a>
					</div>
				</div> -->
				
			</div>

			<!-- Pre Payment Report Table -->
			<div id="prePaymentRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="prePaymentReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Pre_Payment_20150112_232205</td>
									<td id="download1"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Pre_Payment_20150112_232205</td>
									<td id="download2"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Pre_Payment_20150112_232205</td>
									<td id="download3"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Pre Payment Report Table -->

			<!-- Actual Report Table -->
			<div id="actualRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="actualReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Actual_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Actual_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Actual_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Actual Report Table -->

			<!-- Monthly Alloc Report Table -->
			<div id="monthlyAllocRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="monthlyAllocReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Alloc_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Alloc_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Alloc_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Monthly Alloc Report Table -->

			<!-- Un-Alloc Cash Report Table -->
			<div id="unAllocCashRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="unAllocCashReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Un_Alloc_Cash_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Un_Alloc_Cash_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Un_Alloc_Cash_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Un-Alloc Cash Report Table -->

			<!-- Outstanding Position Report Table -->
			<div id="outstandingPositionRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="outstandingPositionReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Outstanding_Position_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Outstanding_Position_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Outstanding_Position_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Outstanding Position Report Table -->

			<!-- Monthly Bank Statement Report Table -->
			<div id="monthlyBankStatementRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="monthlyBankStatementReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Bank_Statement_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Bank_Statement_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Bank_Statement_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Monthly Bank Statement Table -->

			<!-- All Latest Reports Table -->
			<div id="allLatestRepDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="allLatestReportTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>12/01/2015 23:22:05</td>
									<td>Pre_Payment_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>12/01/2015 23:22:05</td>
									<td>Actual_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>3</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Alloc_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>4</td>
									<td>12/01/2015 23:22:05</td>
									<td>Un_Alloc_Cash_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>5</td>
									<td>12/01/2015 23:22:05</td>
									<td>Outstanding_Position_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
								<tr>
									<td>6</td>
									<td>12/01/2015 23:22:05</td>
									<td>Monthly_Bank_Statement_20150112_232205</td>
									<td id="download"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End All Latest Reports Table -->

		</div>
	</div>

	<!-- Dialog box -->
	<div id="dialog-confirm" class="hiddenDiv">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 0 7px 20px 0;"></span>
		</p>
	</div>
	<!-- Dialog box ends -->

	<!-- footer -->
	<%@include file="../footer.jsp"%>
</body>
</html>