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
		$('#btnAddNewBank').click(function() {
			$("#bankDetailModal").modal('show');
		});

		var users = [ {
			value : 'HSBC',
			Name : 'TeleCellcom Telecommunications Inc.',
			tadigCode : 'LBYYZ',
			Address : 'Address1'
		}, {
			value : 'NatWest',
			Name : 'VimTapCom ZIP Co Ltd',
			tadigCode : 'LAXYZ',
			Address : 'Address1'
		}, {
			value : 'Citi',
			Name : 'ComStar Communications Corp',
			tadigCode : 'LAXYZ',
			Address : 'Address1'
		}, {
			value : 'Barclays',
			Name : 'JIC 1 K.Y.K',
			tadigCode : 'LBDFG',
			Address : 'Address1'
		}, {
			value : 'Lloyds Bank',
			Name : 'Telecom Communications Corp',
			tadigCode : 'LBDFG',
			Address : 'Address1'
		}, {
			value : 'Royal Bank of Scotland',
			Name : 'TimeLine Communications Corp',
			tadigCode : 'LIEZP',
			Address : 'Address1'
		}, {
			value : 'NationWide',
			Name : 'BSG WirelessTelecomunications',
			tadigCode : 'LIYY9',
			Address : 'Address1'
		}, {
			value : 'Santander',
			Name : 'LimeLimeTeleCelcom Axixyz Berhad',
			tadigCode : 'MYPOL',
			Address : 'Address1'
		}, {
			value : 'TSB Bank',
			Name : 'TeleCelcom Axixyz Berhad',
			tadigCode : 'MYZYX',
			Address : 'Address1'
		} ];

		$('#autocomplete').autocomplete({
			source : users,
			minLength : 2,
			select : function(event, ui) {
			$("#bankDetailModal").modal('show');
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
			<li class="active">Bank - IO</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-university fa-lg"></i>&nbsp;Bank - IO
							</h4>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cientTopRight">
						<p class="text-right topPaddingSmall">
							<button type="button" class="btn btn-success btn-sm"
								id="btnAddNewBank">
								<b>Add New Bank</b>
							</button>
						</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8 col-sm-offset-1">
					<div id="imaginary_container">
						<div class="input-group stylish-input-groupOper">
							<select id="operatorOptions" class="form-control">
								<option>Bank Name</option>
								<option>VAT Number</option>
								<option>PAN Number</option>
								<option>Sort Code</option>
								<option>Swift Code</option>
								<option>CHIPS UID</option>
								<option>ABS Code</option>
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
			<div class="row searchResults" id="searchResults"></div>


			<div id="bankDetailModal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content modal-lg">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">
								<i class="fa fa-university fa-2x"></i>&nbsp;Bank Details
							</h4>
						</div>
						<!-- Modal header ends-->
						<div class="modal-body">

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="bankName">Bank Name</label> <input type="text"
											class="form-control" id="bankName"
											placeholder="Enter bank name">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="vatNumber">VAT Number</label> <input type="text"
											class="form-control" id="vatNumber"
											placeholder="Enter VAT number">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="panNumber">PAN Number</label> <input type="text"
											class="form-control" id="panNumber"
											placeholder="Enter PAN number">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="sortCode">Sort Code</label> <input type="text"
											class="form-control" id="sortCode"
											placeholder="Enter sort code">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="sortCode">Swift Code</label> <input type="text"
											class="form-control" id="swiftCode"
											placeholder="Enter Swift code">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="chipsUID">CHIPS UID</label> <input type="text"
											class="form-control" id="chipsUID"
											placeholder="Enter CHIPS UID">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="abaCode">ABA Code</label> <input type="text"
											class="form-control" id="abaCode"
											placeholder="Enter ABA code">
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="ifscCode">IFSC Code</label> <input type="text"
											class="form-control" id="ifscCode"
											placeholder="Enter IFSC code">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 1</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 1">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 1</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 1">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 2</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 2">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 2</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 2">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 3</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 3">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 3</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 3">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 4</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 4">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 4</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 4">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 5</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 5">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 5</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 5">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialCode1">Special Code 6</label> <input
											type="text" class="form-control" id="specialCode1"
											placeholder="Enter special code 5">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="specialVallue1">Special Value 6</label> <input
											type="text" class="form-control" id="specialValue1"
											placeholder="Enter special Value 5">
									</div>
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
</body>
</html>