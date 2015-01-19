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
	$(function() {
		$("#datepickerStart").datepicker({
			dateFormat : "dd-mm-yy"
		});
		
		$("#datepickerEnd").datepicker({
			dateFormat : "dd-mm-yy"
		});
		
		$("#datepickerStart1").datepicker({
			dateFormat : "dd-mm-yy"
		});

		$("#datepickerinvoiceStDate").datepicker({
			dateFormat : "dd-mm-yy"
		});
		
		$("#datepicerinvoiceEndDate").datepicker({
			dateFormat : "dd-mm-yy"
		});		
	});
</script>
<script>
	$(document).ready(function() {
		
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
			minLength: 2,
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
							<h4><i class="fa fa-user fa-lg"></i>&nbsp;&nbsp;Client - IO</h4>
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
									id="autocomplete" class="form-control">
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
									id="datepickerStart" placeholder='13/01/2015' class="form-control" />
							</div>
						</div>
						<div class='col-md-6'>
							<div class="form-group">
								<label for="datepicker">End Date</label> <input type='text'
									id="datepickerEnd"  placeholder='12/01/2016' class="form-control" />
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
						<div class='col-md-12'>
							<table class="table table-bordered">
								<tbody>
									<tr>
										<th>Secondary Funding Currency</th>
										<th>Transaction Currency</th>
									<tr>
									<tr>
										<td>GBP <span class="glyphicon glyphicon-gbp"></span><span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
										<td>GBP <span class="glyphicon glyphicon-gbp"></span><span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
									</tr>
									<tr>
										<td>USD <span class="glyphicon glyphicon-usd"></span><span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
										<td>USD <span class="glyphicon glyphicon-usd"></span><span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
									</tr>
									<tr>
										<td>EUR <span class="glyphicon glyphicon-euro"></span> <span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
										<td>EUR <span class="glyphicon glyphicon-euro"></span><span
											class="badge pull-right"><span
												class="glyphicon glyphicon-pencil _pointer pull-right"></span></span></td>
									</tr>
									<tr>
										<td>
											<div class="input-group">
												<select id="primaryCurrency" class="form-control">
													<option>GBP</option>
													<option>USD</option>
													<option>EUR</option>
												</select> <span class="input-group-addon">
													<button type="submit">Add</button>
												</span>
											</div>
										</td>
										<td>
											<div class="input-group">
												<select id="primaryCurrency" class="form-control">
													<option>GBP</option>
													<option>USD</option>
													<option>EUR</option>
												</select> <span class="input-group-addon">
													<button type="submit">Add</button>
												</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class='col-md-12'>
							<table class="table table-striped">
								<tbody>
									<tr>
										<td>Invoice Generation</td>
										<td><input type='text' 	id="datepickerinvoiceStDate" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepicerinvoiceEndDate" placeholder="13/01/2016" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>
									<tr>
										<td>Debtors / Receivable Management</td>
										<td><input type='text' 	id="datepickerDebtStDate" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepickerDebtEndDate" placeholder="13/01/2016" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>		
									<tr>
										<td>Payments/Settlements</td>
										<td><input type='text' 	id="datepickerStart" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepickerend" placeholder="13/01/2017" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>
									<tr>
										<td>IOT Calculation and Settlements</td>
										<td><input type='text' 	id="datepickerStart" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepickerend" placeholder="13/01/2016" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>
									<tr>
										<td>General Ledger (Debtors/ Creditors Cash Allocations)</td>
										<td><input type='text' 	id="datepickerStart" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepickerend" placeholder="13/01/2016" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>		
									<tr>
										<td>Software as service</td>
										<td><input type='text' 	id="datepickerStart" placeholder="13/01/2015" class="form-control" /></td>
										<td><input type='text' 	id="datepickerend" placeholder="13/01/2016" class="form-control" /></td>
										<td><input type="checkbox" value="" checked="checked" disabled></td>
									<tr>																																				
									</tr>
								</tbody>
							</table>
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