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
$(document).ready(function(){

	// Screen default layout
	$('#resultsDiv').hide();
	$('#theSearchContainer').show();
	$('#top10ActionsDiv').show();
	
	$("#dueDate").datepicker({
		dateFormat : "dd/mm/yy"
	});

	$('#clientTopDiv').click(function() {
		$('#resultsDiv').hide();
		$('#theSearchContainer').show();
		$('#top10ActionsDiv').show();
	});
	
	$('#resultsTab td').click(function() {
		var column_num = parseInt($(this).index()) + 1;
		if (column_num != 7) {
			document.getElementById("whereFrom").value = "search";

			showRecord();
			$("#modalActionTx").modal('show');
			}
		});

	$('#top10ActionsTab td').click(function() {
		var column_num = parseInt($(this).index()) + 1;
		if (column_num != 7) {
			document.getElementById("whereFrom").value = "top10";

			showRecord();
			$("#modalActionTx").modal('show');
			}
		});

	$('#found').click(function() {
		$('#top10ActionsDiv').hide();
		$('#resultsDiv').show();
	});

	$('#newAction').click(function() {
		document.getElementById("whereFrom").value = "new";
		newRecord();
		$("#modalActionTx").modal('show');
	});

	$('#btnClose').click(function() {
		// search | new | top10
		if (document.getElementById("whereFrom").value == "search")
			{
			$('#resultsDiv').show();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').hide();
			}
		if (document.getElementById("whereFrom").value == "top10")
			{
			$('#resultsDiv').hide();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').show();
			}
		if (document.getElementById("whereFrom").value == "new")
			{
			$('#resultsDiv').hide();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').show();
			}
	});

	$('#btnSave').click(function() {
		// search | new | top10
		if (document.getElementById("whereFrom").value == "search")
			{
			$('#resultsDiv').show();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').hide();
			}
		if (document.getElementById("whereFrom").value == "top10")
			{
			$('#resultsDiv').hide();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').show();
			}
		if (document.getElementById("whereFrom").value == "new")
			{
			$('#resultsDiv').hide();
			$('#theSearchContainer').show();
			$('#top10ActionsDiv').show();
			}
	});

	function showRecord()
	{
 		// Populate the screen with the Tx details
 		document.getElementById('description').value = document.getElementById("hDescription").value;
 		document.getElementById('createdBy').value = document.getElementById("hCreatedBy").value;
 		document.getElementById('dueDate').value = document.getElementById("hDueDate").value;
 		document.getElementById('assignedTo').value = document.getElementById("hAssignedTo").value;
 		document.getElementById('createdDate').value = document.getElementById("hCreatedDate").value;
 		document.getElementById('note').value = document.getElementById("hNote").value;
 		document.getElementById('status').value = document.getElementById("hStatus").value;
	}

	function newRecord()
	{
 		// Populate the screen with the Tx details
 		document.getElementById('description').value = "Invoice Reconciliation";
 		document.getElementById('createdBy').value = "Siva";
 		document.getElementById('dueDate').value = "";
 		document.getElementById('assignedTo').value = "Simon";
 		document.getElementById('createdDate').value = getSysDate();
 		document.getElementById('note').value = "";
 		document.getElementById('status').value = "New";
	}

	function getSysDate()
	{
		var d=new Date();
		var dd=pad(d.getDate(),2);
		var mm=pad(d.getMonth()+1,2);
		var yy=pad(d.getFullYear(),4);
		var fullDate=dd.toString().concat('/');
		fullDate=fullDate.concat(mm.toString());
		fullDate=fullDate.concat('/');
		fullDate=fullDate.concat(yy.toString());
		return fullDate;
	}
	
	function pad(num, size) {
	    var s = "000000000" + num;
	    return s.substr(s.length-size);
	}
});
</script>

</head>
<body>
	<div id="hiddenFields">
		<input type="hidden" name="whereFrom" id="whereFrom" value="">

		<!-- <input type="hidden" name="hDescription" id="hDescription" value="Description (from Tx)"> -->
		<input type="hidden" name="hDescription" id="hDescription" value="Invoice Reconciliation">
		<input type="hidden" name="hCreatedBy" id="hCreatedBy" value="Created By (from Tx)">
		<input type="hidden" name="hDueDate" id="hDueDate" value="Due Date (from Tx)">
		<input type="hidden" name="hAssignedTo" id="hAssignedTo" value="Sunish">
		<input type="hidden" name="hNote" id="hNote" value="Note (from Tx)">
		<input type="hidden" name="hCreatedDate" id="hCreatedDate" value="Date (from Tx)">
		<input type="hidden" name="hStatus" id="hStatus" value="Urgent">
	</div>

	<!-- navbar -->
	<%@include file="../navbar.jsp"%>

	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Customer Actions</li>
		</ol>

		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="clientTopLeft">
							<h4>Customer Actions</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button id="newAction" type="button" class="btn btn-success btn-sm">
								<b>Add New Action</b>
							</button>
						</p>
					</div>
				</div>
			</div>

			<div class="searchContainer">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div id="theSearchContainer">
							<label for="tadigCode"> </label>
							<div id="the-search" class="input-group stylish-input-group">
								<input type="text"
									placeholder="Enter Action Description to Search"
									id="search" class="form-control"> <span
									class="input-group-addon">
									<button type="submit" id="found">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
							<label for="tadigCode"> </label>
						</div>
					</div>
				</div>
			</div>

			<!-- Results Table -->
			<div id="resultsDiv">
				<div class="row topPaddingLarge">
					<div class="col-md-12">
						<table class="table table-bordered  table-curved hoveringTable"
							id="resultsTab">
							<tbody>
								<tr>
									<th>No</th>
									<th>Date</th>
									<th>Description</th>
									<th>Assigned To</th>
									<th>Status</th>
									<th>Due Date</th>
									<th>Created By</th>
									<th>Attachment</th>
								</tr>
								<tr>
									<td>1</td>
									<td>01/01/2015</td>
									<td>Action Description</td>
									<td>Simon</td>
									<td>Pending</td>
									<td>01/02/2015</td>
									<td>Siva</td>
									<td id="download1"><i class="fa fa-download"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End Results Table -->
			
			<!-- Top 10 Actions Table -->
			<div id=top10ActionsDiv>
				<div class="blueBorderDiv">
					<div class="row bottomBorderDiv">
						<div class="col-md-12">
								<div class="top10TopLeft">
									<label class="labelBoldBlue _pointer">All Items</label> | <label class="labelBoldBlue _pointer">Action Items</label> | <label class="labelBoldBlue _pointer">Watch List</label>
							</div>
						</div>
					</div>
			
					<div id="top10ActionsInnerDiv">
						<div class="row topPaddingLarge">
							<div class="col-md-12">
								<table class="table table-bordered  table-curved hoveringTable"
									id="top10ActionsTab">
									<tbody>
										<tr>
											<th>No</th>
											<th>Date</th>
											<th>Description</th>
											<th>Assigned To</th>
											<th>Status</th>
											<th>Due Date</th>
											<th>Created By</th>
											<th>Attachment</th>
										</tr>
										<tr>
											<td>1001</td>
											<td>01/01/2015</td>
											<td>Very Urgent Description</td>
											<td>Simon</td>
											<td>In Progress</td>
											<td>01/02/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1002</td>
											<td>01/01/2015</td>
											<td>Almost Very Urgent Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>10/02/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1003</td>
											<td>01/01/2015</td>
											<td>Urgent Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>20/02/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1004</td>
											<td>01/01/2015</td>
											<td>Almost Urgent Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>01/03/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1005</td>
											<td>01/01/2015</td>
											<td>Very Important Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>20/03/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1006</td>
											<td>01/01/2015</td>
											<td>Almost Very Important Description</td>
											<td>Simon</td>
											<td>In Progress</td>
											<td>01/04/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1007</td>
											<td>01/01/2015</td>
											<td>Important Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>20/04/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1008</td>
											<td>01/01/2015</td>
											<td>Almost Important Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>01/05/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1009</td>
											<td>01/01/2015</td>
											<td>Quite Important Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>20/05/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
										<tr>
											<td>1010</td>
											<td>01/01/2015</td>
											<td>Not At All Important Description</td>
											<td>Simon</td>
											<td>Pending</td>
											<td>01/06/2015</td>
											<td>Siva</td>
											<td id="download1"><i class="fa fa-download"></i></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<button type="button" class="btn btn-success btn-sm pull-right"
									id="btnNwxt10">
									<b>Refresh</b>&nbsp; <span class="glyphicon glyphicon-refresh"
										aria-hidden="true"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Top 10 Actions Table -->

			<!-- Modal Action Tx details -->
			<div id="modalActionTx" class="modal fade">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">
								<span class="fa-stack fa-lg"><i
									class="fa fa-square-o fa-stack-2x"></i> <i
									class="fa fa-usd fa-stack-1x"></i>
								</span> Action Details
							</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="description">Description</label><select id="description"
											class="form-control">
											<option selected>Invoice Reconciliation</option>
											<option>Invoice Pocession</option>
											<option>Payable Invoice</option>
											<option>Receivable Invoice</option>
											<option>Reconciliation</option>
											<option>Pocession</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="description">Created By</label> <input type="text" class="form-control" id="createdBy" disabled>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="dueDate">Due Date</label>
										<input type="text" class="form-control" id="dueDate" placeholder="">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Assigned To</label>
										<select id="assignedTo"
											class="form-control">
											<option>Simon</option>
											<option>Siva</option>
											<option>Sunish</option>
											<option>Mark</option>
										</select>
									</div>
								</div>
							</div>
			
							<div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="note">Note</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<textarea id="note" placeholder="Enter Note!" cols="60" rows="3"></textarea>
										</div>
									</div>
								</div>
							</div>
				
							<div>		
								<div class="row">
									<div class="uploadContainer">
										<div class="col-md-6">
											<div id="imaginary_container">
												<div id="the-upload-basics" class="input-group stylish-input-group">
													<input type="text"
														placeholder="Browse file for upload"
														id="autocomplete" class="form-control"> <span
														class="input-group-addon">
														<button type="submit" id="browse">
															<span class="glyphicon glyphicon-folder-open"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
			
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="createdDate">Date</label> <input type="text" class="form-control" id="createdDate" disabled>
									</div>
								</div>
			
								<div class="col-md-6">
									<div class="form-group">
										<label for="status">Status</label>
										<select id="status"
											class="form-control">
											<option>New</option>
											<option>Pending</option>
											<option>In Progress</option>
											<option>Urgent</option>
											<option>Complete</option>
										</select>
									</div>
								</div>
							</div>
			
							<div id="addNewActionButtons" class="modal-footer">
								<button id="btnClose" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button id="btnSave" type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Modal Action Tx details ends-->
			
		</div>
	</div>

	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">Copyright &copy; 2015 BSG Wireless</p>
		</div>
	</footer>
	<!-- footer ends -->
</body>
</html>
