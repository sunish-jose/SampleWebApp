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
		$('#currentRateDiv').hide();
		$('#historicalRateDiv').hide();
		$('#historicDateDetailsDiv').hide();
		
		
		$("#hostoricRateTable tr").click(function(){
			$("#historicDateDetailsDiv").show();
		});

		$('#btnDisplayCurrentRate').click(function() {
			$('#currentRateDiv').show();
		});

		$('#btnHistoricalRate').click(function() {
			$('#historicalRateDiv').show();
		})

	});
</script>
</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Actual Payment Calculation</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-cc fa-lg"></i>&nbsp;&nbsp;Actual Payment
								Calculation
							</h4>
						</div>
					</div>
				</div>
			</div>

			<div class="topPaddingXLarge">
				<div class="row">
					<div class="col-md-2">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>&nbsp;Batch&nbsp;1</label>
									<div class="divBatch2">
										<span class="blockSpan">LBYXX</span> <span class="blockSpan">LYZAA</span>
										<span class="blockSpan">ABCDE</span> <span class="blockSpan">DFVCS</span>
										<span class="blockSpan">ABCYE</span> <span class="blockSpan">CFVCS</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<div class="divBase2">
										<span class="blockSpan">Run</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="topPaddingLarge bodypadding">
				<div class="row">
					<div class="col-md-6">
						<button type="button" class="btn btn-sm btn-primary"
							id="btnDisplayCurrentRate">Display Current Rate</button>
					</div>
					<div class="col-md-6">
						<button type="button" class="btn btn-sm btn-primary pull-right"
							id="btnHistoricalRate">Historical Rate</button>
					</div>
				</div>
			</div>


			<div id="currentRateDiv" class="topPaddingSmall">
				<div class="row">
					<div class="col-md-12">
						<table
							class="table table-bordered table-striped table-hover table-curved">
							<tbody>
								<tr>
									<th>Date</th>
									<th>Buy Currency</th>
									<th>Sell Currency</th>
									<th>Buy Amount</th>
									<th>Sell Amount</th>
									<th>Rate</th>
								</tr>
								<tr>
									<td>19/01/2015 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>11/01/2015 11:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>10/01/2015 09:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>09/01/2015 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>09/01/2015 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>11/01/2015 10:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>01/01/2015 11:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
								<tr>
									<td>19/12/2014 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>0.23633</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="exampleInputFile">Upload File</label> <input
								type="file" id="exampleInputFile">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<button type="button" class="btn  btn-success">Approve 1</button>
							<button type="button" class="btn  btn-danger">Approve 2</button>
						</div>
					</div>
				</div>
			</div>

			<div id="historicalRateDiv">
				<div class="row topPaddingSmall">
					<div class="col-md-12">
						<table
							class="table table-bordered table-striped table-hover table-curved hoveringTable" id="hostoricRateTable">
							<tbody>
								<tr>
									<th>Date</th>
									<th>Date</th>
									<th>Date</th>
									<th>Date</th>
									<th>Date</th>
								</tr>
								<tr>
									<td>11/01/2015 11:01:23</td>
									<td>12/01/2015 10:01:23</td>
									<td>13/01/2015 09:01:23</td>
									<td>14/01/2015 08:01:23</td>
									<td>14/01/2015 09:01:23</td>
								</tr>
								<tr>
									<td>14/01/2015 11:01:23</td>
									<td>12/01/2015 11:01:23</td>
									<td>15/01/2015 10:01:23</td>
									<td>09/01/2015 11:01:23</td>
									<td>01/01/2015 09:01:23</td>
								</tr>
								<tr>
									<td>11/01/2015 12:01:23</td>
									<td>11/01/2015 11:01:23</td>
									<td>10/01/2015 10:01:23</td>
									<td>17/01/2015 09:01:23</td>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<nav>
							<ul class="pager pull-right">
								<li><a href="#"><i class="fa fa-arrow-circle-left"></i>
										Previous</a></li>
								<li><a href="#">Next <i
										class="fa fa-arrow-circle-right"></i></a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>

			<div id="historicDateDetailsDiv" class="topPaddingSmall">
				<div class="row">
					<div class="col-md-12">
						<table
							class="table table-bordered table-striped table-hover table-curved" id="hostoricalRateTable">
							<tbody>
								<tr>
									<th>Date</th>
									<th>Buy Currency</th>
									<th>Sell Currency</th>
									<th>Buy Amount</th>
									<th>Sell Amount</th>
									<th>Rate</th>
									<th>App User1</th>
									<th>App User2</th>
								</tr>
								<tr>
									<td>12/01/2015 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>9600.23</td>
									<td>1.23699</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>13/01/2015 12:01:23</td>
									<td>USD</td>
									<td>EUR</td>
									<td>253256.25</td>
									<td>5362.23</td>
									<td>0.96326</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>11/01/2015 12:01:23</td>
									<td>USD</td>
									<td>HKD</td>
									<td>2365.25</td>
									<td>7860.25</td>
									<td>2.23623</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>13/01/2015 12:01:23</td>
									<td>USD</td>
									<td>JYP</td>
									<td>235.23</td>
									<td>36593.36</td>
									<td>0.23655</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>12/01/2015 12:01:23</td>
									<td>EUR</td>
									<td>USD</td>
									<td>56423.23</td>
									<td>23569.23</td>
									<td>1.17563</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>10/01/2015 12:01:23</td>
									<td>EUR</td>
									<td>GBP</td>
									<td>253256.25</td>
									<td>25966.33</td>
									<td>0.23633</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>12/01/2015 12:01:23</td>
									<td>EUR</td>
									<td>HKD</td>
									<td>253256.25</td>
									<td>56989.23</td>
									<td>1.23633</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
								<tr>
									<td>18/01/2015 12:01:23</td>
									<td>EUR</td>
									<td>JYP</td>
									<td>7600.56</td>
									<td>6500.23</td>
									<td>0.23699</td>
									<td>Tim</td>
									<td>Tom</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>


		</div>
	</div>
</body>
</html>