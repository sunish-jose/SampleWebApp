<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>

<%@include file="../headerResource.jsp"%>

<!-- Pure Chat Snippet -->
<script type='text/javascript'>
	(function() {
		var done = false;
		var script = document.createElement('script');
		script.async = true;
		script.type = 'text/javascript';
		script.src = 'https://app.purechat.com/VisitorWidget/WidgetScript';
		document.getElementsByTagName('HEAD').item(0).appendChild(script);
		script.onreadystatechange = script.onload = function(e) {
			if (!done
					&& (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) {
				var w = new PCWidget({
					c : '061549d3-b408-4406-844b-473381c46e3b',
					f : true
				});
				done = true;
			}
		};
	})();
</script>
<!-- End Pure Chat Snippet -->
</head>
<body>
	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<div>
			<h4>BSG Wireless Chat</h4>
		</div>
	</div>
</body>
</html>
