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
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<script type="text/javascript">
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});

	google.setOnLoadCallback(drawVisualization);

	function drawVisualization() {
		// Some raw data (not necessarily accurate)
		var data = google.visualization
				.arrayToDataTable([
						[ 'USD', 'GBP' ],
						[ '', 165, 938 ], ]);

		var options = {
			title : '',
			vAxis : {
				title : "Amount"
			},
			hAxis : {
				title : "Currency"
			},
			seriesType : "bars",

		};

		var chart = new google.visualization.ComboChart(document
				.getElementById('currencyAmtChart'));
		chart.draw(data, options);
	}
</script>

<script>
	$(document).ready(function() {
		$('#positionAdminDiv').hide();

		$('#redDiv').click(function() {
			$('#positionAdminDiv').show();
		})

		$('#positionDetails tr').click(function() {
			$("#dialog-confirm").dialog({
				resizable : false,
				height : 250,
				width : 350,
				modal : true,
				opacity : .70,
				buttons : {
					"Yes" : function() {
						$(this).dialog("close");
					},
					Cancel : function() {
						$(this).dialog("close");
					}
				}
			});

		})
	});
</script>
</head>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Payment Approval</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-6">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-cc fa-lg"></i>&nbsp;&nbsp;Approval for Payment
							</h4>
						</div>
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

			<div id="circles" class="topPaddingXLarge">
				<div class="row">
					<div class="col-md-3">
						<div class="circleRed _pointer" id="redDiv">SDR [52,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circleBrown">EUR [5,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circleBlue">GBP [10,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circleGreen">INR [2,526.23]</div>
					</div>
				</div>
				<div class="row topPaddingLarge">
					<div class="col-md-3">
						<div class="circleYello">JYP [1,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circleAsh">HKD [23,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circleMagent">FJD [21,526.23]</div>
					</div>
					<div class="col-md-3">
						<div class="circlePink">ILS [34,526.23]</div>
					</div>
				</div>
			</div>

			<div id="chart" class="topPaddingXLarge">
				<div class="row">
					<div class="col-md-12">
						<div id="currencyAmtChart"></div>
					</div>
				</div>
			</div>

			<div id="positionAdminDiv">
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<h3>Position Admin</h3>
							<table
								class="table table-bordered table-striped  table-curved hoveringTable"
								id="positionDetails">
								<tbody>
									<tr>
										<th>Partner</th>
										<th>Tadig Code</th>
										<th>Service Type</th>
										<th>Traffic Period</th>
										<th>Settlement Type</th>
										<th>Net SDR</th>
										<th>Net Amount</th>
										<th>Currency</th>
										<th>Due Date</th>
										<th>Position Type</th>
										<th>Status</th>
										<th>Notes</th>

									</tr>
									<tr>
										<td>AAAAAA</td>
										<td>GBRCN</td>
										<td>GSM</td>
										<td>Sep/2013</td>
										<td>Gross</td>
										<td>10000.25</td>
										<td>16,263.23</td>
										<td>EUR</td>
										<td>28/11/2013</td>
										<td>Payable</td>
										<td>Open</td>
										<td><a href="#" id="note"><img
												src="../images/note.jpg"></a></td>
									</tr>
									<tr>
										<td>BBBBBBBB</td>
										<td>DEUE2</td>
										<td>SMS</td>
										<td>Sep/2013</td>
										<td>Gross</td>
										<td>600.00</td>
										<td>800.00</td>
										<td>USD</td>
										<td>28/11/2013</td>
										<td>Receivable</td>
										<td>Open</td>
										<td><a href="#" id="note"><img
												src="../images/note.jpg"></a></td>
									</tr>
									<tr>
										<td>CCCCCCC</td>
										<td>AIACW</td>
										<td>GSM</td>
										<td>Sep/2013</td>
										<td>Gross</td>
										<td>9000.25</td>
										<td>8526.23</td>
										<td>EUR</td>
										<td>28/11/2013</td>
										<td>Payable</td>
										<td>Open</td>
										<td><a href="#" id="note"><img
												src="../images/note.jpg"></a></td>
									</tr>
									<tr>
										<td>DDDDDD</td>
										<td>AUTMM</td>
										<td>SMS</td>
										<td>Sep/2013</td>
										<td>Gross</td>
										<td>600.00</td>
										<td>800.00</td>
										<td>USD</td>
										<td>28/11/2013</td>
										<td>Receivable</td>
										<td>Open</td>
										<td><a href="#" id="note"><img
												src="../images/note.jpg"></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div id="dialog-confirm" title="Confirm un-allocate?" class="hiddenDiv">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 0 7px 20px 0;"></span>Would you like to
			hold the item
		</p>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>