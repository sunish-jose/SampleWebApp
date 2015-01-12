<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
</head>
<body>
	<script>
		$(document).ready(function() {
			$("#addressDiv").hide();
			$("#contactDiv").hide();
			$("#bankAccountDiv").hide();

			$("#addressPlus").click(function() {
				if($('#addressPlus').hasClass('fa-plus-square-o')) {
					$('#addressPlus').removeClass('fa-plus-square-o');
					$('#addressPlus').addClass('fa-minus-square-o');
				} else{
					$('#addressPlus').removeClass('fa-minus-square-o');
					$('#addressPlus').addClass('fa-plus-square-o');
				}
				$("#addressDiv").toggle();
			});

			$("#bankAccountPlus").click(function() {
				if($('#bankAccountPlus').hasClass('fa-plus-square-o')) {
					$('#bankAccountPlus').removeClass('fa-plus-square-o');
					$('#bankAccountPlus').addClass('fa-minus-square-o');
				} else{
					$('#bankAccountPlus').removeClass('fa-minus-square-o');
					$('#bankAccountPlus').addClass('fa-plus-square-o');
				}				
				$("#bankAccountDiv").toggle();
			});

			$("#contactPlus").click(function() {
				if($('#contactPlus').hasClass('fa-plus-square-o')) {
					$('#contactPlus').removeClass('fa-plus-square-o');
					$('#contactPlus').addClass('fa-minus-square-o');
				} else{
					$('#contactPlus').removeClass('fa-minus-square-o');
					$('#contactPlus').addClass('fa-plus-square-o');
				}					
				$("#contactDiv").toggle();
			});

		});
	</script>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Operator - IO</li>
		</ol>
				<div class="blueBorderDiv">
					<h4>Operator - IO</h4>
					<hr>
					<!-- Operator div -->
					<div class="row topPaddingSmall">
						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">Tadig Code</label> <input type="text"
									class="form-control" id="tadigCode"
									placeholder="Enter Tadig code">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">Organization</label> <input type="text"
									class="form-control" id="organization"
									placeholder="Enter your organization">
							</div>
						</div>
					</div> 

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">Security Type</label> <input type="text"
									class="form-control" id="organization"
									placeholder="Enter your organization">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="bankName">VAT/TAX Number</label> <input type="text"
									class="form-control" id="organization"
									placeholder="Enter your organization">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label for="address">Address&nbsp;<i
								class="fa fa-plus-square-o" id="addressPlus"></i></label>
						</div>
					</div>
					<div class="row" id="addressDiv">
						<div class="col-md-12">
							<table
								class="table table-bordered table-striped table-hover table-curved"
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
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table><p>
							<button type="button" class="btn btn-primary btn-xs">Add Address</button></p>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-12">
							<label for="bankAccount">Bank Account&nbsp;<i
								class="fa fa-plus-square-o" id="bankAccountPlus"></i></label>
						</div>
					</div>
					<!-- Bank Account -->
					<div class="row" id="bankAccountDiv">
						<div class="col-md-12">
							<table
								class="table table-bordered table-striped table-hover table-curved"
								id="addressTable">
								<tbody>
									<tr>
										<th>Type</th>
										<th>Account Name</th>
										<th>Number</th>
										<th>Primary Currency</th>
										<th>Bank Name</th>
										<th>IBAM - Code</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table><p>
							<button type="button" class="btn btn-primary btn-xs">Add Account</button></p>
						</div>
					</div>
					<!-- Bank account div ends -->
					<hr>
					<div class="row">
						<div class="col-md-12">
							<label for="address">Contacts&nbsp;<i
								class="fa fa-plus-square-o" id="contactPlus"></i></label>
						</div>
					</div>
					<!-- contact div start -->
					<!-- Contact Div starts -->
					<div class="row" id="contactDiv">
						<div class="col-md-12">
							<table
								class="table table-bordered table-striped table-hover table-curved"
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
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table><p>
							<button type="button" class="btn btn-primary btn-xs">Add Contact</button></p>
						</div>
					</div>
					<!-- contact div ends -->
					<!-- Operator div ending -->
				</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>