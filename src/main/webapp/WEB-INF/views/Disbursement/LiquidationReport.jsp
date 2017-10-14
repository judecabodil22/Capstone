<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liquidation Report</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<!-- global css -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- font Awesome -->
<link
	href="resources/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/styles/black.css" rel="stylesheet"
	type="text/css" id="colorscheme" />
<link href="resources/css/panel.css" rel="stylesheet" type="text/css" />
<link href="resources/css/metisMenu.css" rel="stylesheet"
	type="text/css" />
<!-- end of global css -->
<!--page level css -->
<link href="resources/vendors/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/pages/calendar_custom.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" media="all"
	href="resources/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet" href="resources/vendors/animate/animate.min.css">
<link rel="stylesheet" href="resources/css/only_dashboard.css" />
<!--end of page level css-->
</head>
<body class="skin-josh">

	<header class="header">
		<a href="resources/index.html" class="logo"> <img
			src="resources/img/Paynansyals.PNG" alt="Logo">
		</a>
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<div>
				<a href="resources/#" class="navbar-btn sidebar-toggle"
					data-toggle="offcanvas" role="button">
					<div class="responsive_nav"></div>
				</a>
			</div>
			<div class="navbar-right">
				<ul class="nav navbar-nav">

					<li class="dropdown user user-menu"><a href="resources/#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							data-src="resources/holder.js/35x35/#fff:#000" width="35"
							class="img-circle img-responsive pull-left" height="35">
							<div class="riot">
								<div>
									Officer <span> <i class="caret"></i>
									</span>
								</div>
							</div>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								data-src="resources/holder.js/90x90/#fff:#000"
								class="img-responsive img-circle" alt="User Image">
								<p class="topprofiletext">Disbursement Officer</p></li>
							<!-- Menu Body -->
							<li><a href="resources/#"> <i class="livicon"
									data-name="user" data-s="18"></i> My Profile
							</a></li>
							<li role="presentation"></li>
							<li><a href="resources/#"> <i class="livicon"
									data-name="gears" data-s="18"></i> Account Settings
							</a></li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="resources/lockscreen.html"> <i class="livicon"
										data-name="lock" data-s="18"></i> Lock
									</a>
								</div>
								<div class="pull-right">
									<a href="resources/login.html"> <i class="livicon"
										data-name="sign-out" data-s="18"></i> Logout
									</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<section class="sidebar ">
				<div class="page-sidebar  sidebar-nav">
					<div class="nav_icons"></div>
					<div class="clearfix"></div>
					<!-- BEGIN SIDEBAR MENU -->
					<ul id="menu" class="page-sidebar-menu">
						<li class="active"><a href="resources/index.html"> <i
								class="livicon" data-name="home" data-size="18" data-c="#418BCA"
								data-hc="#418BCA" data-loop="true"></i> <span class="title">Dashboard</span>
						</a></li>
						<li><a href="resources/#"> <span class="title">Transactions</span>
								<span class="fa arrow"></span>
						</a>
							<ul class="sub-menu">
								<li><a href="resources/Disbursement_for_Payroll.html">
										Disbursement </a> <a href="resources/LiquidationReport.html">
										Liquidation </a></li>
							</ul>
						<li><a href="resources/"> Reports </a></li>
						</li>
					</ul>

					<!-- END SIDEBAR MENU -->
				</div>
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Main content -->
			<section class="content-header">
				<center>
					<h1>Liquidation Report</h1>
				</center>
			</section>
			<section class="content">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="livicon" data-name="doc-portrait" data-c="#fff"
									data-hc="#fff" data-size="18" data-loop="true"></i> Liquidation
								Report Information
							</h3>
							<span class="pull-right"> <i
								class="fa fa-fw fa-chevron-up clickable"></i> <i
								class="fa fa-fw fa-times removepanel clickable"></i>
							</span>
						</div>
						<div class="panel-body">
							<form:form action="done" modelAttribute="enter" method="post">
								<div class="form-body">
									<div class="form-group">
										<div class="form-group">

											<label class="control-label"> Serial No. <span
												class='require'>*</span>
											</label>
											<div class="input-group">
												<span class="input-group-addon"> </span> <form:input name="serial no" type="text" path="serial_no"
																class="form-control" placeholder="Serial No" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label"> Date <span
												class='require'>*</span>
											</label>
											<div class="input-group">
												<span class="input-group-addon"> </span> <form:input type="text" path="date"
																class="form-control" placeholder="Date" />
											</div>
											<div class="form-group">
												<br> <label class="control-label">
													Responsibility Center Code <span class='require'>*</span>
												</label>
												<div class="input-group">
													<span class="input-group-addon"> </span> <form:input type="text" path="responsibility_center"
																class="form-control" placeholder="Responsibility Center" />
												</div>
											</div>
										</div>
									</div>
									<br> <br>
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h3 class="panel-title">
												<i class="livicon" data-name="doc-portrait" data-c="#fff"
													data-hc="#fff" data-size="18" data-loop="true"></i> Entries
											</h3>
											<span class="pull-right"> <i
												class="fa fa-fw fa-chevron-up clickable"></i> <i
												class="fa fa-fw fa-times removepanel clickable"></i>
											</span>
										</div>
										<div class="panel-body">
											<div class="form-group mbn">
												<form action="#">
													<div class="form-body">
														<div class="form-group mbn">
															<table style="width: 100%">
																<tr>
																	<th>Particulars</th>
																	<th>Amount</th>
																</tr>
																<tr>
																	<td><form:input type="text" path="particulars"
																			class="form-control"
																			placeholder="Particular" /></td>
																	<td><form:input type="text" path="amount"
																			class="form-control" placeholder="Amount" /></td>
																</tr>
																<tr>
																	<td><form:input type="text" path="particulars"
																			class="form-control"
																			placeholder="Particular" /></td>
																	<td><form:input type="text" path="amount"
																			class="form-control" placeholder="Amount" /></td>
																</tr>
																<tr>
																	<td><form:input type="text" path="particulars"
																			class="form-control"
																			placeholder="Particular" /></td>
																	<td><form:input type="text" path="amount"
																			class="form-control" placeholder="Amount" /></td>
																</tr>
															</table>
														</div>
													</div>
													<br> <br> <br>
													<div class="form-group">
														<label class="control-label"> <label
															style="font-size: 15px">Total Amount Spent</label> <span
															class='require'>*</span>
														</label>
														<div class="input-group">
															<span class="input-group-addon"> </span> <form:input style="width:50%" type="text" path="total"
																class="form-control" placeholder="Total Amount Spent" />
														</div>
													</div>
												</form>
											</div>
										</div>

										<div class="form-actions text-right ">
											<button type="submit" class="btn btn-primary" name="submit">Submit</button>
											&nbsp;
											<button type="button" class="btn btn-default">Cancel</button>
											&nbsp; <input type="reset" class="btn btn-success"
												value="Reset">
										</div>
							</form:form>
							<br>
						</div>
					</div>
				</div>
			</section>
		</aside>


		<a id="back-to-top" href="resources/#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Return to top" data-toggle="tooltip" data-placement="left">
			<i class="livicon" data-name="plane-up" data-size="18"
			data-loop="true" data-c="#fff" data-hc="white"></i>
		</a>
		<!-- global js -->
		<script src="resources/resources/js/jquery-1.11.1.min.js"
			type="text/javascript"></script>
		<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
		<!--livicons-->
		<script src="resources/vendors/livicons/minified/raphael-min.js"
			type="text/javascript"></script>
		<script src="resources/vendors/livicons/minified/livicons-1.4.min.js"
			type="text/javascript"></script>
		<script src="resources/js/josh.js" type="text/javascript"></script>
		<script src="resources/js/metisMenu.js" type="text/javascript">
			
		</script>
		<script src="resources/vendors/holder-master/holder.js"
			type="text/javascript"></script>
		<!-- end of global js -->
		<!-- begining of page level js -->
		<!--  todolist-->
		<script src="resources/js/todolist.js"></script>
		<!-- EASY PIE CHART JS -->
		<script src="resources/vendors/charts/easypiechart.min.js"></script>
		<script src="resources/vendors/charts/jquery.easypiechart.min.js"></script>
		<!--for calendar-->
		<script src="resources/vendors/fullcalendar/fullcalendar.min.js"
			type="text/javascript"></script>
		<script src="resources/vendors/fullcalendar/calendarcustom.min.js"
			type="text/javascript"></script>
		<!--   Realtime Server Load  -->
		<script src="resources/vendors/charts/jquery.flot.min.js"
			type="text/javascript"></script>
		<script src="resources/vendors/charts/jquery.flot.resize.min.js"
			type="text/javascript"></script>
		<!--Sparkline Chart-->
		<script src="resources/vendors/charts/jquery.sparkline.js"></script>
		<!-- Back to Top-->
		<script type="text/javascript"
			src="resources/vendors/countUp/countUp.js"></script>
		<!--   maps -->
		<script
			src="resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script
			src="resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<script src="resources/vendors/jscharts/Chart.js"></script>
		<script src="resources/js/dashboard.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(
					function() {
						var composeHeight = $('#calendar').height() + 21
								- $('.adds').height();
						$('.list_of_items').slimScroll({
							color : '#A9B6BC',
							height : composeHeight + 'px',
							size : '5px'
						});
					});
		</script>
		<!-- end of page level js -->
</body>
</html>