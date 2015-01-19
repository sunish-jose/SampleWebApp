<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>

<%@include file="../headerResource.jsp"%>

</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Bank - IO</li>
		</ol>
		<div class="blueBorderDiv">
			<h4><i class="fa fa-university fa-lg"></i>&nbsp;&nbsp;Bank - IO</h4>
			<hr>

			<!-- 			<form>
				<div class="row topPaddingSmall">
					<div class="col-md-6">
						<div class="searchContainer">
							<div class="row">
								<div class="col-md-12 col-sm-offset-4">
									<div id="imaginary_container">
										<div id="the-basics" class="input-group stylish-input-group">
											<input type="text" placeholder="Search" id="autocomplete"
												class="form-control"> <span
												class="input-group-addon"> <select
												class="selectpicker" id="bankOptions">
													<option>Select</option>
													<option>Bank Name</option>
													<option>VAT Number</option>
													<option>PAN Number</option>
													<option>Sort Code</option>
													<option>Swift Code</option>
													<option>CHIPS UID</option>
													<option>ABS Code</option>
											</select></span> <span class="input-group-addon">
												<button type="submit">
													<span class="glyphicon glyphicon-search"></span>
												</button>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
			</form> -->
			<div class="row">
				<div class="col-md-12 col-sm-offset-2">
					<form class="form-inline" role="form">
						<div class="input-group stylish-input-group-no-lfb">
							<input type="text" class="form-control input-large" placeholder="Enter your search..."><span class="input-group-btn">
								<select id="bankOptions" class="btn">
									<option>Select Category</option>
									<option>Bank Name</option>
									<option>VAT Number</option>
									<option>PAN Number</option>
									<option>Sort Code</option>
									<option>Swift Code</option>
									<option>CHIPS UID</option>
									<option>ABS Code</option>
							</select></span><span class="input-group-addon">
								<button type="submit"><span class="glyphicon glyphicon-search"></span></button></span>
						</div>
					</form>
				</div>
			</div>


			<hr>

			<form>
				<div class="row">

					<div class="col-md-4">
						<div class="form-group">
							<label for="bankName">Bank Name</label> <input type="text"
								class="form-control" id="bankName" placeholder="Enter bank name">
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
								class="form-control" id="sortCode" placeholder="Enter sort code">
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
								class="form-control" id="chipsUID" placeholder="Enter CHIPS UID">
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label for="abaCode">ABA Code</label> <input type="text"
								class="form-control" id="abaCode" placeholder="Enter ABA code">
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label for="ifscCode">IFSC Code</label> <input type="text"
								class="form-control" id="ifscCode" placeholder="Enter IFSC code">
						</div>
					</div>
				</div>

				<hr>
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
					<div class="col-md-12">
						<button type="button" class="btn btn-primary">Save</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>