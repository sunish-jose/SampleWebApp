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
	$(function() {
		$("#datepickerStart").datepicker({
			dateFormat : "dd-mm-yy"
		});

		$("#datepickerEnd").datepicker({
			dateFormat : "dd-mm-yy"
		});
	});
</script>
<script>
	$(document).ready(
			function() {

				$("#tile1").mouseover(
						function() {

							$("#tile1").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile1").mouseout(
						function() {
							$("#tile1").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile2").mouseover(
						function() {
							$("#tile2").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile2").mouseout(
						function() {
							$("#tile2").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});
				$("#tile3").mouseover(
						function() {
							$("#tile3").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile3").mouseout(
						function() {
							$("#tile3").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile4").mouseover(
						function() {
							$("#tile4").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile4").mouseout(
						function() {
							$("#tile4").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile5").mouseover(
						function() {
							$("#tile5").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile5").mouseout(
						function() {
							$("#tile5").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile6").mouseover(
						function() {
							$("#tile6").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile6").mouseout(
						function() {
							$("#tile6").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile7").mouseover(
						function() {
							$("#tile7").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile7").mouseout(
						function() {
							$("#tile7").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile8").mouseover(
						function() {
							$("#tile8").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile8").mouseout(
						function() {
							$("#tile8").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile9").mouseover(
						function() {
							$("#tile9").removeClass('clientTile').addClass(
									'clientTileBigBorder');
						});

				$("#tile9").mouseout(
						function() {
							$("#tile9").removeClass('clientTileBigBorder')
									.addClass('clientTile');
						});

				$("#tile1").click(function() {
					$("#clientDetail").modal('show');
				});

				$("#tile2").click(function() {
					$("#clientDetail").modal('show');
				});
				
				$("#tile3").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile4").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile5").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile6").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile7").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile8").click(function() {
					$("#clientDetail").modal('show');
				});
				$("#tile9").click(function() {
					$("#clientDetail").modal('show');
				});

			});
</script>
</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Client - IO</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>Client - IO</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button type="button" class="btn btn-success btn-sm">
								<b>Add New Client</b>
							</button>
						</p>
					</div>
				</div>
			</div>
			<div class="searchContainer">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div id="imaginary_container">
							<div id="the-basics" class="input-group stylish-input-group">
								<input type="text"
									placeholder="Enter Tadig Code or Name to search"
									id="autocomplete" autocomplete="off" class="form-control">
								<span class="input-group-addon">
									<button type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="scroll">
				<div class="searchResults">
					<div class="row searchResults">
						<div class="col-md-4">
							<div class="clientTile" id="tile1">
								<div align="center">
									<img src="../images/logos/lbyyz.jpg" align="left">
								</div>
								<div>
									<label>Code: LBYYZ</label>
								</div>
								<div>
									<label>Name: TeleCellcom Telecomunications Inc. </label>
								</div>
								<div>
									<label>Start Date: 13/12/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile2">
								<div align="center">
									<img src="../images/logos/LAXYZ.jpg" align="middle">
								</div>
								<div>
									<label>Code: LAXYZ</label>
								</div>
								<div>
									<label>Name: VimTapCom ZIP Co Ltd</label>
								</div>
								<div>
									<label>Start Date: 13/12/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile3">
								<div align="center">
									<img src="../images/logos/LBABC.jpg" align="middle">
								</div>
								<div>
									<label>Code: LBABC</label>
								</div>
								<div>
									<label>Name: ComStar Communications Corp.</label>
								</div>
								<div>
									<label>Start Date: 01/12/2014</label>
								</div>
							</div>
						</div>
					</div>


					<div class="row searchResults">
						<div class="col-md-4">
							<div class="clientTile" id="tile4">
								<div align="center">
									<img src="../images/logos/LBDFG.jpg" align="middle">
								</div>
								<div>
									<label>Code: LBDFG</label>
								</div>
								<div>
									<label>Name: JIC 1 K.Y.K</label>
								</div>
								<div>
									<label>Start Date: 01/11/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile5">
								<div align="center">
									<img src="../images/logos/LIEMM.jpg" align="middle">
								</div>
								<div>
									<label>Code: LIEMM</label>
								</div>
								<div>
									<label>Name: Telecom Communications Corp</label>
								</div>
								<div>
									<label>Start Date: 01/11/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile6">
								<div align="center">
									<img src="../images/logos/LIEZP.jpg" align="middle">
								</div>
								<div>
									<label>Code: LIEZP</label>
								</div>
								<div>
									<label>Name: TimeLine Communications Corp</label>
								</div>
								<div>
									<label>Start Date: 01/11/2014</label>
								</div>
							</div>
						</div>
					</div>

					<div class="row searchResults">
						<div class="col-md-4">
							<div class="clientTile" id="tile7">
								<div align="center">
									<img src="../images/logos/LIYY9.jpg" align="middle">
								</div>
								<div>
									<label>Code: LIYY9</label>
								</div>
								<div>
									<label>Name: BSG WirelessTelecomunications</label>
								</div>
								<div>
									<label>Start Date: 01/10/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile8">
								<div align="center">
									<img src="../images/logos/MYPOL.jpg" align="middle">
								</div>
								<div>
									<label>Code: MYPOL</label>
								</div>
								<div>
									<label>Name: LimeLimeTeleCelcom Axixyz Berhad</label>
								</div>
								<div>
									<label>Start Date: 01/11/2014</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="clientTile" id="tile9">
								<div align="center">
									<img src="../images/logos/MYZYX.jpg" align="middle">
								</div>
								<div>
									<label>Code: MYZYX</label>
								</div>
								<div>
									<label>Name: TeleCelcom Axixyz Berhad</label>
								</div>
								<div>
									<label>Start Date: 01/09/2014</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<!-- 
			<div class="row topPaddingSmall">
				<div class="col-md-6">
					<label> Invoice Generation</label>
				</div>
				<div class="col-md-1">
					<input type="checkbox" value="" checked="checked" disabled>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Debtors / Receivable Management</label>
				</div>
				<div class="col-md-1">
					<input type="checkbox" value="" checked="checked" disabled>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
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
				<div class="col-md-1">
					<input type="checkbox" value="" checked="checked" disabled>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>General Ledger (Debtors/ Creditors Cash Allocations)</label>
				</div>
				<div class="col-md-1">
					<input type="checkbox" value="" checked="checked" disabled>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Software as service</label>
				</div>
				<div class="col-md-1">
					<input type="checkbox" value="" checked="checked" disabled>
				</div>
			</div>
			 -->
		</div>
	</div>


	<div id="clientDetail" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-user fa-2x"></i>&nbsp;Client Details
					</h4>
				</div>
				<!-- Modal header -->
				<div class="modal-body">
					<div class="row">
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">Start Date</label> <input type='text'
									id="datepickerStart" class="form-control" />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerEnd" class="form-control" />
							</div>
						</div>
						<div class='col-md-12'>
							<div class="form-group">
								<label for="primaryCurrency">Primary Funding Currency</label> <select
									id="primaryCurrency" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>
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
						<div class='col-md-6'>
						<div class="input-group">
								<select
									id="primaryCurrency" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
								<span class="input-group-addon">
								<button type="submit">
									Add
								</button>
							</span>
							</div>
						</div>
						<div class='col-md-6'>
						<div class="input-group">
							<select
									id="primaryCurrency" class="form-control">
									<option>GBP</option>
									<option>USD</option>
									<option>EUR</option>
								</select>
								<span class="input-group-addon">
								<button type="submit">
									Add
								</button>
							</span>
							</div>
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