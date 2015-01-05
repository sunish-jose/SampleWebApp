<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
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
<script src="../js/script.js"></script>
<script>
$(document).ready(function(){
    $('#clientIO').click(function(){
    	$("#operatorIO").removeClass("active");
    	$("#bankIO").removeClass("active");
    	$("#bankAccIO").removeClass("active");
    	$("#roamingAgr").removeClass("active");
    	$("#authSetup").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#clientIO").addClass("active");
        $("#settingDiv").html("<h4>Client - IO</h4><hr>");
    });
    
    $('#operatorIO').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#bankIO").removeClass("active");
    	$("#bankAccIO").removeClass("active");
    	$("#roamingAgr").removeClass("active");
    	$("#authSetup").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#operatorIO").addClass("active");
        $("#settingDiv").html("<h4>Operator - IO</h4><hr>");
    });
    
    $('#bankIO').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#operatorIO").removeClass("active");
    	$("#bankAccIO").removeClass("active");
    	$("#roamingAgr").removeClass("active");
    	$("#authSetup").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#bankIO").addClass("active");
        $("#settingDiv").html("<h4>Bank - IO</h4><hr>");
    });
    
    $('#bankAccIO').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#operatorIO").removeClass("active");
    	$("#bankIO").removeClass("active");    	
    	$("#roamingAgr").removeClass("active");
    	$("#authSetup").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#bankAccIO").addClass("active");
        $("#settingDiv").html("<h4>Bank Account- IO</h4><hr>");
    });
    
    $('#roamingAgr').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#operatorIO").removeClass("active");
    	$("#bankIO").removeClass("active");    	
    	$("#bankAccIO").removeClass("active");
    	$("#authSetup").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#roamingAgr").addClass("active");
        $("#settingDiv").html("<h4>Roaming Agreement - EI</h4><hr>");
    });
    
    $('#authSetup').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#operatorIO").removeClass("active");
    	$("#bankIO").removeClass("active");    	
    	$("#bankAccIO").removeClass("active");
    	$("#roamingAgr").removeClass("active");
    	$("#setupAudit").removeClass("active");
        $("#authSetup").addClass("active");
        $("#settingDiv").html("<h4>Authentication Setup - IO</h4><hr>");
    });
    
    $('#setupAudit').click(function(){
    	$("#clientIO").removeClass("active");
    	$("#operatorIO").removeClass("active");
    	$("#bankIO").removeClass("active");    	
    	$("#bankAccIO").removeClass("active");
    	$("#roamingAgr").removeClass("active");
    	$("#authSetup").removeClass("active");
        $("#setupAudit").addClass("active");
        $("#settingDiv").html("<h4>Setup Audit - IO</h4><hr>");
    });
    
});
</script>
</head>
<body>

	<!-- navbar -->
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Settings</li>
		</ol>
		<div class="row">
			<div class="col-md-3">
				<!-- right side navigation -->
				<div class="bodypadding">
					<a href="#" class="list-group-item active" id="operatorIO"> <span class="glyphicon glyphicon-signal"></span> Operator - IO</a> 
					<a href="#" class="list-group-item" id="clientIO"> <span class="glyphicon glyphicon-file"></span> Client - IO</a>
					<a href="#" class="list-group-item"  id="bankIO"> <span class="glyphicon glyphicon-star-empty"></span> Bank - IO</a>
					<a href="#" class="list-group-item" id="bankAccIO"> <span class="glyphicon glyphicon-usd"></span> Bank Account - IO</a>
					<a href="#" class="list-group-item" id="roamingAgr"> <span class="glyphicon glyphicon-briefcase"></span> Roaming Agreement - EI</a>
					<a href="#" class="list-group-item" id="authSetup"> <span class="glyphicon glyphicon-lock"></span> Authentication setup - IO</a>
					<a href="#" class="list-group-item" id="setupAudit"> <span class="glyphicon glyphicon-certificate"></span> Setup Audit - IO</a>
				</div>
				<!-- right side navigation end -->
			</div>
			<div class="col-md-9">
				<div id="settingDiv">
					<h4>Operator - IO</h4>
					<hr>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>