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
</head>
<body>
	<div class="container">
		<div class="blueBorderDiv">
			<div class="row">
				<div class="col-md-12 bottomBorderDiv">
					<h4>Invoice Values</h4>
				</div>
			</div>
			<div class="row topPaddingMedium">
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Invoice
							Number *</label><input type='text' id="imageRefNumber"
							placeholder="2234657" class="form-control input-sm" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">First TAP *</label>
						<input type='text' id="imageRefNumber" placeholder="GBP"
							class="form-control input-sm" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Last TAP *</label> <input
							type='text' id="imageRefNumber" placeholder="GBP"
							class="form-control input-sm" />
					</div>
				</div>


				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Net SDR *</label> <input
							type='text' id="imageRefNumber" placeholder="1,000.00"
							class="form-control input-sm" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Tax SDR *</label> <input
							type='text' id="imageRefNumber" placeholder="1,00.00"
							class="form-control input-sm" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Tax Rate *</label> <input
							type='text' id="imageRefNumber input-sm" placeholder="10%"
							class="form-control" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Gross SDR *</label>
						<input type='text' id="imageRefNumber input-sm" placeholder="1100"
							class="form-control" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 bottomBorderDiv">
					<h4>DCH Values</h4>
				</div>
			</div>

			<div class="row topPaddingMedium">
				<div class="col-sm-4">
					<div class="form-group">
						<label for="datepicker">Net SDR</label> <input type='text'
							id="imageRefNumber" placeholder="1,000.00"
							class="form-control readOnly input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label for="datepicker">Tax SDR</label> <input type='text'
							id="imageRefNumber" placeholder="1,00.00"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label for="datepicker">Tax Rate</label> <input type='text'
							id="imageRefNumber" placeholder="10%"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label for="datepicker">Gross SDR</label> <input type='text'
							id="imageRefNumber" placeholder="1100"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>

				<div class="col-sm-4">
					<div class="form-group">
						<label for="datepicker">Stored Currency</label> <input type='text'
							id="imageRefNumber" placeholder="GBP"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Invoice
							Currency *</label> <select id="primaryCurrency"
							class="form-control input-sm">
							<option>USD</option>
							<option>EUR</option>
							<option>GBP</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="pull-right">
						<button class="btn btn-primary btn-sm" type="button">Submit</button>
						<button class="btn btn-primary btn-sm" type="button">Submit
							&#38; Next</button>
					</div>
				</div>
			</div>

			<div class="row">
			<div class="col-md-12 bottomBorderDiv">
				<h4>Incoming Docs to process: 274</h4>
			</div>
			</div>

			<div class="row topPaddingMedium">
				<div class="col-sm-3">
					<div class="form-group">
						<label for="datepicker">Client</label> <input type='text'
							id="imageRefNumber" placeholder="12348654"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label for="datepicker">Partner</label> <input type='text'
							id="imageRefNumber" placeholder="Received"
							class="form-control input-sm" disabled="disabled" />
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Document
							Type *</label> <select id="primaryCurrency"
							class="form-control disabled input-sm">
							<option>GSM Invoice</option>
							<option>SMS Invoice</option>
							<option>IOT Invoice</option>
						</select>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group has-error">
						<label class="control-label" for="datepicker">Traffic
							Period *</label> <input type='text' id="imageRefNumber"
							placeholder="03/2015" class="form-control input-sm" />
					</div>
				</div>
			</div>

			<div class="row">
			<div class="col-sm-6" style="color:red;valign:bottom;">
			* Mandatory fields
			</div>
				<div class="col-md-6 pull-right">
					<button class="btn btn-primary btn-sm" type="button">Save</button>
					<button class="btn btn-primary btn-sm" type="button">FCH
						Mismatch</button>
					<button class="btn btn-primary btn-sm" type="button">AA.13
						Currency Query</button>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>
