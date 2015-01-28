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
	<%@include file="../navbar.jsp"%>
	<div style="width: 100%" class="topPaddingXLarge">
			<div>
					<div id="IFrameDiv">
						<iframe src="../pdf/GSMInvoiceVdfone.pdf" width="50%" height="850" align="left" frameborder="0" scrolling="no">
						</iframe>
						<iframe src="../user/invoiceReconciliationRightSide" width="50%" height="850" align="right" frameborder="0" scrolling="no">
						</iframe>
					</div>
				<div class="FixedHeightContainer topPaddingLarge"></div>
			</div>
		</div>
	<%@include file="../footer.jsp"%>
</body>
</html>