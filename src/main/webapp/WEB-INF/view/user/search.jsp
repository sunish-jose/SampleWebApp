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
		var users = [ {
			value : 'John Miller',
			firstName : 'John',
			lastName : 'Miller',
			email : 'john.miller@abc.com',
			age : '45'
		}, {
			value : 'Jack Cohen',
			firstName : 'Jack',
			lastName : 'Cohen',
			email : 'jack.cohen@abc.com',
			age : '42'
		}, {
			value : 'Oliver Oscar',
			firstName : 'Oliver',
			lastName : 'Oscar',
			email : 'oilver.oscar@abc.com',
			age : '32'
		}, {
			value : 'George H',
			firstName : 'george',
			lastName : 'Henry',
			email : 'george.h@abc.com',
			age : '32'
		}, {
			value : 'Leo Max',
			firstName : 'Leo',
			lastName : 'Max',
			email : 'leo.max@abc.com',
			age : '32'
		}, {
			value : 'Daniel Joseph',
			firstName : 'Daniel',
			lastName : 'Joseph',
			email : 'daniel.joseph@abc.com',
			age : '32'
		}, {
			value : 'Adam Benjamin',
			firstName : 'Adam',
			lastName : 'Benjamin',
			email : 'adam.benjamin@abc.com',
			age : '32'
		}, {
			value : 'Charlie Henry',
			firstName : 'Charlie',
			lastName : 'Henry',
			email : 'charlie.henry@abc.com',
			age : '22'
		}, {
			value : 'Noha Jones',
			firstName : 'Noha',
			lastName : 'Jones',
			email : 'noha.jones@abc.com',
			age : '22'
		} ];
		$('#autocomplete').autocomplete({
			source : users,
			minLength: 2,
			select : function(event, ui) {
				$("#modalUserDetails").modal('show');
				$("#firstName").val(ui.item.firstName);
				$("#lastName").val(ui.item.lastName);
				$("#email").val(ui.item.email);
				$("#age").val(ui.item.age);
			}
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
			<li class="active">Search</li>
		</ol>

		<div class="searchContainer">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<div id="imaginary_container">
						<div id="the-basics" class="input-group stylish-input-group">
							<input type="text" placeholder="Search" id="autocomplete"
								class="form-control"> <span class="input-group-addon">
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-sm-offset-3">
					<div id="autocomplete-suggestions"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal window user details -->
	<div id="modalUserDetails" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-user fa-2x"></i>&nbsp; User Details
					</h4>
				</div>
				<!-- Modal header -->
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputName">First
								Name</label>
							<div class="col-lg-10">
								<input class="form-control" id="firstName" placeholder=""
									type="text">
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputName">Last
								Name</label>
							<div class="col-lg-10">
								<input class="form-control" id="lastName" placeholder=""
									type="text">
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputName">E-mail</label>
							<div class="col-lg-10">
								<input class="form-control" id="email" placeholder=""
									type="email">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputName">Age</label>
							<div class="col-lg-10">
								<input class="form-control" id="age" placeholder="" type="text">
							</div>
						</div>
					</form>
				</div>
				<!-- end Modal body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save</button>
					<button type="button" class="btn btn-primary">Delete</button>
				</div>
			</div>

		</div>
	</div>
	<!-- Modal window user details ends -->

	<%@include file="../footer.jsp"%>

</body>
</html>