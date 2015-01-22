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
			dateFormat : "dd/mm/yy"
		});
	});
</script>
<script>
	$(document).ready(function() {

		$('#authenticationDetailsDiv').hide();

		$("#btnPassword").click(function() {
			$("#passwordModal").modal('show');
		});

		$("#userListTable tr").click(function() {
			$("#authenticationDetailsDiv").show();
		});
		
		var users = [ {
			value : 'John Miller',
			firstName : 'John',
			lastName : 'Miller',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'john.miller@abc.com'
		}, {
			value : 'Jack Cohen',
			firstName : 'Jack',
			lastName : 'Cohen',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'jack.cohen@abc.com'
		}, {
			value : 'Oliver Oscar',
			firstName : 'Oliver',
			lastName : 'Oscar',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'oilver.oscar@abc.com'
		}, {
			value : 'George H',
			firstName : 'george',
			lastName : 'Henry',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'george.h@abc.com'
		}, {
			value : 'Leo Max',
			firstName : 'Leo',
			lastName : 'Max',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'leo.max@abc.com'
		}, {
			value : 'Daniel Joseph',
			firstName : 'Daniel',
			lastName : 'Joseph',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'daniel.joseph@abc.com'
		}, {
			value : 'Adam Benjamin',
			firstName : 'Adam',
			lastName : 'Benjamin',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'adam.benjamin@abc.com'
		}, {
			value : 'Charlie Henry',
			firstName : 'Charlie',
			lastName : 'Henry',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Active',
			type: 'Internal',
			email : 'charlie.henry@abc.com'
		}, {
			value : 'Noha Jones',
			firstName : 'Noha',
			lastName : 'Jones',
			startDate: '13/01/2014',
			contactNumber: '+44-231-789-1234',
			status: 'Inactive',
			type: 'Internal',
			email : 'noha.jones@abc.com'
		} ];
		$('#autocomplete').autocomplete({
			source : users,
			minLength : 2,
			select : function(event, ui) {
				$("#firstName").val(ui.item.firstName);
				$("#surname").val(ui.item.lastName);
				$("#startDate").val(ui.item.startDate);
				$("#type").val(ui.item.type);
				$("#emailAddress").val(ui.item.email);
				$("#contactNumber").val(ui.item.contactNumber);
				$("#status").val(ui.item.status);
				$("#authenticationDetailsDiv").show();
			}
		});
	});
</script>

</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Authentication Setup</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-key fa-lg"></i>&nbsp;&nbsp;Authentication Setup
							</h4>
						</div>
					</div>
				</div>
			</div>

			<div class="searchContainer">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div id="imaginary_container">
							<div id="the-basics" class="input-group stylish-input-group">
								<input type="text"
									placeholder="Enter first name or surname to search"
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
			<div class="row searchResults" id="searchResults"></div>

			<div id="userList">
				<table class="table table-striped table-curved  hoveringTable" id="userListTable">
					<tbody>
						<tr>
							<th>First Name</th>
							<th>Surname</th>
							<th>Start Date</th>
							<th>E-mail Address</th>
							<th>Contact Number</th>
							<th>Status</th>
							<th>Type</th>
						</tr>
						<tr>
							<td>John</td>
							<td>Miller</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Jack</td>
							<td>Cohen</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Oliver</td>
							<td>Oscar</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>George</td>
							<td>H</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Leo</td>
							<td>Max</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Daniel</td>
							<td>Joseph</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Adam</td>
							<td>Benjamin</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Charlie</td>
							<td>Henry</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>Noha</td>
							<td>Jones</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
						<tr>
							<td>John</td>
							<td>Miller</td>
							<td>13/01/2015</td>
							<td>john.miller@abc.com</td>
							<td>+44-231-789-1234</td>
							<td>Active</td>
							<td>Internal</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div id="authenticationDetailsDiv">
				<div class="row bottomBorderDiv">
					<div class="col-md-12">
						<div id="clientTopDiv">
							<div class="cientTopLeft">
								<h4>
									<i class="fa fa-unlock fa-lg"></i>&nbsp;&nbsp;Authentication Details
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="row topPaddingLarge">
					<div class='col-md-4'>
						<div class="form-group">
							<label for="firstName">First Name</label> <input type='text'
								id="firstName" placeholder='First Name' class="form-control" />
						</div>
					</div>

					<div class='col-md-4'>
						<div class="form-group">
							<label for="startDate">Surname</label> <input type='text'
								id="surname" placeholder='Surname' class="form-control" />
						</div>
					</div>

					<div class='col-md-4'>
						<div class="form-group">
							<label for="startDate">Start Date</label><input type='text'
								id="datepickerStart" placeholder='13/01/2015'
								class="form-control" />
						</div>
					</div>

					<div class='col-md-4'>
						<div class="form-group">
							<label for="status">Status</label> <select id="status"
								class="form-control">
								<option>Active</option>
								<option>Inactive</option>
							</select>
						</div>
					</div>

					<div class='col-md-4'>
						<div class="form-group">
							<label for="emailAddress">Email Address</label> <input
								type='email' id="emailAddress" placeholder='Email Address'
								class="form-control" />
						</div>
					</div>

					<div class='col-md-4'>
						<div class="form-group">
							<label for="contactNumber">Contact Number</label> <input
								type='text' id="contactNumber" placeholder='Contect Number'
								class="form-control" />
						</div>
					</div>

					<div class='col-md-6'>
						<div class="form-group">
							<label for="type">Type</label><select id="type"
								class="form-control">
								<option>Internal</option>
								<option>External</option>
							</select>
						</div>
					</div>

					<div class='col-md-6'>
						<div class="form-group">
							<label for="type">&nbsp;</label>
							<button class="btn btn-primary form-control" id="btnPassword"
								type="button">
								Enter Password&nbsp;<span class="glyphicon glyphicon-new-window"></span>
							</button>
						</div>
					</div>
				</div>

				<div class="row bottomBorderDiv">
					<div class="col-md-12">
						<div id="clientTopDiv">
							<div class="cientTopLeft">
								<h4>
									<i class="fa fa-cubes fa-lg"></i>&nbsp;&nbsp;Modules
								</h4>
							</div>
						</div>
					</div>
				</div>

				<div class="row topPaddingLarge">
					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th>Invoice Generation</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read/Write</th>
								</tr>
								<tr>
									<td class="col-md-2"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th>Debtors / Receivable Management</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read/Write</th>
								</tr>
								<tr>
									<td class="col-md-2">Debtor Summary</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Debt Chasing</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Collection &#38; Allocations</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Receipt Handling</td>
									<td class="col-md-1"><input type="checkbox" value=""></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th>Payments/Settlements</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read/Write</th>
								</tr>
								<tr>
									<td class="col-md-2">Approval for Payments</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Funding</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Payable Summary</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Pre-Payment Calculation</td>
									<td class="col-md-1"><input type="checkbox" value=""></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Actual Calculation</td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
								<tr>
									<td class="col-md-2">Out of Cycle Settlement</td>
									<td class="col-md-1"><input type="checkbox" value=""></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th>IOT Calculation and Settlements</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>&nbsp;Read/Write</th>
								</tr>
								<tr>
									<td class="col-md-2">IOT Reports</td>
									<td class="col-md-1"><input type="checkbox" value=""></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								<tr>
								<tr>
									<td>IOT Audit</td>
									<td><input type="checkbox" value="" checked="checked"></td>
									<td><input type="checkbox" value=""></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th>General Ledger (Debtors/ Creditors Cash Allocations)</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>Read</th>
									<th><input type="checkbox" value="" checked="checked"
										disabled>Read/Write</th>
								</tr>
								<tr>
									<td class="col-md-2"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
									<td class="col-md-1"><input type="checkbox" value=""
										checked="checked"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class='col-md-12'>
						<table class="table table-bordered customTable table-curved">
							<tbody>
								<tr>
									<th class="col-md-2">Software as Service</th>
									<th class="col-md-1"><input type="checkbox" value=""
										checked="checked" disabled>&nbsp;Read</th>
									<th class="col-md-1"><input type="checkbox" value=""
										checked="checked" disabled>&nbsp;Read/Write</th>
								</tr>
							</tbody>
						</table>
					</div>
					<div class='col-md-12 bodypadding'>
						<button type="button" class="btn btn-primary btn-sm">Reset
							Changes</button>
						<button type="button" class="btn btn-primary btn-sm">Save
							Changes</button>
					</div>
				</div>
			</div>

		</div>

		<div id="passwordModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">
							<i class="fa fa-lock fa-lg"></i>&nbsp;&nbsp;Enter Your Password
						</h4>
					</div>
					<!-- Modal header -->
					<div class="modal-body">
						<div class="row topPaddingLarge">
							<div class='col-md-12'>
								<div class="form-group">
									<label for="firstName">New Password</label> <input
										type='password' id="firstName" class="form-control" />
								</div>
							</div>

							<div class='col-md-12'>
								<div class="form-group">
									<label for="startDate">Re-Enter password</label> <input
										type='password' id="startDate" class="form-control" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Save</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>