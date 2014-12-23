<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BSG Financial Clearing Portal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href="../css/styles.css" rel="stylesheet">
<link href="../css/sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<script src="../js/Chart.js"></script>
</head>
<body>

	<!-- navbar -->
	<%@include file="../navbar.jsp"%>

	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Verification Report</li>
		</ol>
		<h3>Verification Report</h3>
		<table class="table table-bordered table-curved">
			<tbody>
				<tr>
					<th>Position Summary Report</th>
					<th>Outstanding Rec Report</th>
					<th>Outstanding Pay Report</th>
					<th>Age Debt Report</th>
					<th>Cash Allocation Report</th>
					<th>Parameterized Report</th>
				</tr>
				<tr>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
					<td><a href="#"><img src="../images/pdfIcon.png"></a></td>
				</tr>
			</tbody>
		</table>
	
	</div>

	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">Copyright &copy; 2014 BSG Wireless</p>
		</div>
	</footer>
	<!-- footer ends -->
</body>
</html>