<!-- starting of Navbar -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" class="nav-justified">
			<img src="../images/bsgLogo.jpg"></a>
		</div>
		<!-- Collection of nav links and other content for toggling -->
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="../user/home"><span
						class="glyphicon glyphicon-home" data-toggle="tooltip"
						data-placement="bottom" title="Home"></span></a></li>
				<li><a href="#"><span class="glyphicon glyphicon-retweet"></span>
						Communications</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><span
						class="glyphicon glyphicon-cog"></span>&nbsp;Setting<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="../user/operator"><i class="fa fa-wifi"></i>&nbsp;Operator - IO</a></li>
						<li><a href="../user/bank"><i class="fa fa-university"></i>&nbsp;Bank - IO</a></li>
						<li><a href="#"><i class="fa fa-user"></i>&nbsp;Bank Account - IO</a></li>
						<li><a href="#"><i class="fa fa-suitcase"></i>&nbsp;Roaming Agreement - EI</a></li>
						<li><a href="../user/authSetup"><i class="fa fa-key"></i>&nbsp;Authentication Setup - IO</a></li>
						<li><a href="../user/client"><i class="fa fa-user"></i>&nbsp;Client - IO</a></li>
						<li><a href="#"><i class="fa fa-gears"></i>&nbsp;Setup Audit - IO</a></li>
					</ul></li>


				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><span
						class="glyphicon glyphicon-dashboard"></span> FCH Services <span
						class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">

						<!-- Start of submenu debtor -->
						<li class="dropdown-submenu"><a href="#">Debtors/Receivable
								Management&nbsp; </a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="../user/debtorsSummary">Debtors summary</a></li>
								<li><a href="../user/debtChasing">Debt Chasing </a></li>
								<li><a href="#">Collection and Allocations</a></li>
								<li><a href="#">Receipt handling</a></li>
							</ul></li>

						<!-- Start of submenu -->
						<li class="dropdown-submenu"><a href="#">Payment/Settlement</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Approval for Payments</a></li>
								<li><a href="../user/funding">Funding</a></li>
								<li><a href="../user/payableSummary">Payable Summary</a></li>
								<li><a href="#">Pre-Payment Calculation </a></li>
								<li><a href="#">Actual Calculation</a></li>
								<li><a href="#">Out of Cycle settlement </a></li>
							</ul></li>
						<!-- end of submenu -->

						<!-- Start of 	Reconciliation & Amendments -->
						<li class="dropdown-submenu"><a href="#">Reconciliation
								&amp; Amendments</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">GSM Payable Invoice Reconciliation</a></li>
								<li><a href="#">CN/DN - invoice level</a></li>
								<li><a href="#">Credit Note Application</a></li>
							</ul></li>
						<!-- end of submenu -->


						<!-- Start of 	invoice -->
						<li class="dropdown-submenu"><a href="#">Invoices</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Receivable</a></li>
								<li><a href="#">Payable</a></li>
							</ul></li>
						<!-- end of submenu -->

						<!-- Start of 	tx -->
						<li class="dropdown-submenu"><a href="#">Transactions</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Transaction Details</a></li>
							</ul></li>
						<!-- end of submenu -->


						<!-- Start of 	reports -->
						<li class="dropdown-submenu"><a href="#">Reports</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Dynamic Reports</a></li>
								<li><a href="../report/standardReport">Standard Reports</a></li>
								<li><a href="../report/verificationReport">Verification
										Reports</a></li>
							</ul></li>
						<li><a href="#">Tap Analysis Portal</a></li>
						<li><a href="#">FCH Audit - IO</a></li>
					</ul></li>
				<!-- end of submenu -->

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><span
						class="glyphicon glyphicon-bullhorn"></span> IOT Services <span
						class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">IOT Calculations</a></li>
						<li><a href="#">IOT Settlements</a></li>
						<li><a href="#">Reports</a></li>
						<li><a href="#">IOT Audit - IO</a></li>
					</ul></li>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<!-- Setup
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><span
						class="glyphicon glyphicon-cog" data-toggle="tooltip" data-placement="bottom" title="Setup"></span> Setup <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Operator - IO</a></li>
						<li><a href="#">Client - IO</a></li>
						<li><a href="#">Bank - IO</a></li>
						<li><a href="#">Bank Account - IO</a></li>
						<li><a href="#">Roaming Agreement - EI</a></li>
						<li><a href="#">Authentication setup - IO</a></li>
						<li><a href="#">Setup Audit - IO</a></li>
					</ul></li>
					 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><span
						class="glyphicon glyphicon-user"></span> My Account <span
						class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="../user/search"><span class="glyphicon glyphicon-search"></span> Search</a></li>
						<li><a href="../user/search"><span class="glyphicon glyphicon-eye-open"></span> Customer View</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Help</a></li>
						<li><a href="../"><span class="glyphicon glyphicon-off"></span>	Signout</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<!-- Navbar end here -->
