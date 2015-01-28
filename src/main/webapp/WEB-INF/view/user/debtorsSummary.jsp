<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>	

<script>
	$(document).ready(function() {
		$("#top10RxPositionsDiv").hide();
	});
</script>

<script type="text/javascript"
	src="https://www.google.com/jsapi?autoload={
            'modules':[{
              'name':'visualization',
              'version':'1',
              'packages':['corechart']
            }]
          }"></script>

<script>
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ '', 'USD', 'EUR' ],
		                                  				[ '> 120 Days', 0, 0 ],
		                                  				[ '> 90 Days', 0, 0 ],
		                                  				[ '> 60 Days', 0, 0 ],
		                                  				['> 30 Days', 0, 0 ],
		                                  				[ '< 30 Days',  0,      0]
				]);

		var options = {
			height : '400',
			animation: {duration: 1000, easing: 'out' },
			title : 'Outstanding Receivables (Net Receiver)',
			vAxis : { title : 'Time in Days', titleTextStyle : {color : 'red'}	}
		};

		var chart = new google.visualization.BarChart(document	.getElementById('outstandingRx'));
		chart.draw(data, options);
		
		var data = google.visualization.arrayToDataTable([
		                                  				[ '', 'USD', 'EUR' ],
		                                  				[ '> 120 Days', 6000, 3569.25 ],
		                                  				[ '> 90 Days', 15000.25, 7500.26 ],
		                                  				[ '> 60 Days', 2222.25, 15000.25 ],
		                                  				['> 30 Days', 121325.23, 136666.22 ],
		                                  				[ '< 30 Days',  125253.23,      156877.22]
		                                  				]);
		
		chart.draw(data, options);
	}

	/* 	google.setOnLoadCallback(drawChart); */

	/* 	function drawChart() {
	 var data = google.visualization.arrayToDataTable([
	 [ 'Days', 'USD', 'EUR' ],
	 ['< 30 Days',  125253.23,      256877.22],
          				['> 30 Days', 521325.23, 136666.22 ],
	 [ '> 60 Days', 2222.25, 15000.25 ],
	 [ '> 90 Days', 15000.25, 7500.26 ],
	 [ '> 120 Days', 600, 3569.25 ], ]);

	 var options = {
	 title : 'Outstanding Receivables (Net Receiver)',
	 curveType : 'function',
	 legend : {
	 position : 'bottom'
	 }
	 };
	
	 var chart = new google.visualization.LineChart(document
	 .getElementById('outstandingRx'));

	 chart.draw(data, options); 
	 }*/
</script>
<script>
	/* function drawVisualization() {
	 // Some raw data (not necessarily accurate)
	 var data = google.visualization.arrayToDataTable([
	 ['Month', 'USD', { role: 'style' }, 'EUR', { role: 'style' }],
	 ['November',  125253.23, '#b87333',      256877.22, '#b87333'],
	 ['November',  125253.23, '',      256877.22, ''],
	 ['December',  136676.22,  '',    236666.22, ''],
	 ['December',  136676.22,  '',    236666.22, ''],
	 ['January',  52222.25, '',     150000.25, ''],
	 ['January',  52222.25, '',     150000.25, ''],
	 ]);

	 var options = {
	 title : 'Last 3 Months Collection',
	 height: 400,
	 vAxis: {title: ""},
	 hAxis: {title: ""},
	 seriesType: "bars",
	 legend: { position: 'top', maxLines: 3 },
	 bar: { groupWidth: '75%' },
	 isStacked: true
	
	 };

	 var chart = new google.visualization.ComboChart(document.getElementById('last3MonthsCollection'));
	 chart.draw(data, options);
	 } */
	google.setOnLoadCallback(drawVisualization);
	function drawVisualization() {
		// Some raw data (not necessarily accurate)
		var data = google.visualization.arrayToDataTable([
				[ 'Month', 'USD', 'EUR', ],
				[ 'November', 0, 0 ],
				[ 'December', 0, 0 ],
				[ 'January', 0, 0 ], ]);

		var options = {
			title : 'Last 3 Months Collection',
			 animation: {duration: 1000, easing: 'out' },

			vAxis : {
				title : ""
			},
			hAxis : {
				title : ""
			},
			seriesType : "bars",
		};

		var chart = new google.visualization.ComboChart(document.getElementById('last3MonthsCollection'));
		chart.draw(data, options);
		
		var data = google.visualization.arrayToDataTable([
		                                                  ['Month', 'USD', 'EUR'],
		                                                  ['November',  125253.23,      256877.22],
		                                                  ['December',  136676.22,      236666.22],
		                                                  ['January',  52222.25,      150000.25]
		                                                ]);
		                                                chart.draw(data, options);
	}
</script>

<script>
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Tadig Code', 'Amount' ], [ 'AIACW', 16573.25 ],
				[ 'GBRCN', 15473.25 ], [ 'GBRCN', 13583.25 ],
				[ 'ESPRT', 13370.36 ], [ 'DEUO2', 12673.88 ],
				[ 'DEUE2', 11567.56 ], [ 'AUSTA', 10973.25 ],
				[ 'AUTMM', 10876.44 ], [ 'AIACW', 6569.26 ],
				[ 'GBRMT', 5488.39 ] ]);

		var options = {
			animation : {
				duration : 1000,
				easing : 'out'
			},
			height : '600',
			title : 'Top 10 Receivable Positions',
			is3D : true,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('top10RxPositionsPieChart'));
		chart.draw(data, options);

		google.visualization.events.addListener(chart, 'select', function() {
			$('#top10RxPositionsDiv').show();
		});
	}
</script>

<script>
	google.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization
				.arrayToDataTable([
						[ 'Year', 'USD Received', 'USD allocated' ],
						[ '', 0, 0 ],
						[ 'November', 800, 900 ],
						[ 'December', 1050, 1100 ],
						[ 'January', 750, 800 ]

				]);

		var options = {
			height : '500',
			width : '600',
			title : 'Last 3 months allocation trends [USD] [EUR]',
			curveType : 'function',
			legend : {
				position : 'bottom'
			}
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('top10RxPositionsLineGraph'));

		chart.draw(data, options);
	}
</script>

</head>
<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Debtors Summary</li>
		</ol>
		<!-- row starting -->
		<div class="row topPadding10px">

			<div class="col-md-12">
				<h3>Last 3 Months Collection</h3>
				<div id="last3MonthsCollection"></div>

				<!-- 				<table
					class="table table-bordered table-striped table-hover table-curved">
					<tbody>
						<tr>
							<th>Account No</th>
							<th>Currency</th>
							<th>Last 30 Days</th>
							<th>31 to 60 Days</th>
							<th>61 to 90 Days</th>
						</tr>
						<tr>
							<td>54344367876</td>
							<td>USD</td>
							<td>125253.23</td>
							<td>521325.23</td>
							<td>2222.25</td>
						</tr>
						<tr>
							<td>54344367899</td>
							<td>EUR</td>
							<td>256877.22</td>
							<td>136666.22</td>
							<td>15000.25</td>
						</tr>
					</tbody>
				</table> -->
			</div>

			<div class="col-md-12">
				<h3>Outstanding Receivables (Net Receiver)</h3>

				<div id="outstandingRx"></div>


				<div class="col-md-7">
					<h3>Receipt</h3>
					<table
						class="table table-bordered table-striped table-hover table-curved">
						<tbody>
							<tr>
								<th>Account No</th>
								<th>Currency</th>
								<th>This Month Collection</th>
								<th>Bank Balance</th>
							</tr>
							<tr>
								<td>54344367876</td>
								<td>USD</td>
								<td>125253.23</td>
								<td>521325.23</td>
							</tr>
							<tr>
								<td>54344367899</td>
								<td>EUR</td>
								<td>256877.22</td>
								<td>136666.22</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="col-md-5">
					<h3>&nbsp;</h3>
					<table
						class="table table-bordered table-striped table-hover table-curved">
						<tbody>
							<tr>
								<th>Unallocated Receipts</th>
								<th>Unallocated Cash</th>
							</tr>
							<tr>
								<td>3</td>
								<td>500.00</td>
							</tr>
							<tr>
								<td>8</td>
								<td>50000.78</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- 
				<table class="table table-bordered table-striped table-hover table-curved"
					id="outstandingRx">
					<tbody>
						<tr>
							<th>Currency</th>
							<th>&lt; 30 Days</th>
							<th>&gt; 30 Days</th>
							<th>&gt; 60 Days</th>
							<th>&gt; 90 Days</th>
							<th>&gt; 120 Days</th>
							<th>Total</th>
						</tr>
						<tr>
							<td>USD</td>
							<td>125253.23</td>
							<td>521325.23</td>
							<td>2222.25</td>
							<td>1000</td>
							<td>600</td>
							<td>625369.23</td>
						</tr>
						<tr>
							<td>EUR</td>
							<td>256877.22</td>
							<td>136666.22</td>
							<td>15000.25</td>
							<td>7500.26</td>
							<td>3569.25</td>
							<td>596325.23</td>
						</tr>
					</tbody>
				</table>
				 -->
			</div>


			<div class="col-md-5">
				<div id="top10RxPositionsPieChart"></div>
			</div>

			<div class="col-md-7"  style="text-align:center;">
				<div id="top10RxPositionsLineGraph"></div>
			</div>

			<div class="col-md-12" id="top10RxPositionsDiv">
				<h3>Top 10 Receivable Positions</h3>
				<table
					class="table table-bordered table-striped table-hover table-curved">
					<tbody>
						<tr>
							<th>Tadgic Code</th>
							<th>Traffic Period</th>
							<th>Amount</th>
							<th>Currency</th>
						</tr>
						<tr>
							<td>AIACW</td>
							<td>05/2013</td>
							<td>16,573.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRCN</td>
							<td>06/2013</td>
							<td>15,473.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRCN</td>
							<td>07/2013</td>
							<td>13,583.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>ESPRT</td>
							<td>07/2013</td>
							<td>13,370.36</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>DEUO2</td>
							<td>05/2013</td>
							<td>12,673.88</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>DEUE2</td>
							<td>06/2014</td>
							<td>11,567.56</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AUSTA</td>
							<td>05/2013</td>
							<td>10,973.25</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AUTMM</td>
							<td>06/2011</td>
							<td>10,876.44</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>AIACW</td>
							<td>05/2014</td>
							<td>6,569.26</td>
							<td>EUR</td>
						</tr>
						<tr>
							<td>GBRMT</td>
							<td>06/2011</td>
							<td>5,488.39</td>
							<td>EUR</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		$('#outstandingRx tr').click(function() {
			window.location.href = "position";
		});
	</script>

	<%@include file="../footer.jsp"%>
</body>
</html>
