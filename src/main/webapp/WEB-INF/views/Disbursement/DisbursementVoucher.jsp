<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<html>
<head>
<meta charset="UTF-8">
<title>Disbursement Voucher</title>
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
	href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"
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
								<li><a href="resources/disbursement_voucher.html">
										Disbursement </a></li>
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
					<h1>Disbursement Voucher</h1>
				</center>
			</section>
			<section class="content">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="livicon" data-name="doc-portrait" data-c="#fff"
									data-hc="#fff" data-size="18" data-loop="true"></i> Voucher
								Information
							</h3>
							<span class="pull-right"> <i
								class="fa fa-fw fa-chevron-up clickable"></i> <i
								class="fa fa-fw fa-times removepanel clickable"></i>
							</span>
						</div>
						<div class="panel-body">
							<form:form action="dv_save" modelAttribute="insert">
								<div class="form-body">
									<div class="form-group">
										<div class="form-group">
											<div class="form-group">
												<div class="form-group">
													<label for="inputEmail" class="control-label"> DV
														No. <span class='require'>*</span>
													</label>
													<div class="input-group">
														<span class="input-group-addon"> </span> <form:input
															type="text" placeholder="DV No." class="form-control" path="dv_no" />
													</div>
												</div>
												<div class="form-group">
													<label for="inputpassword" class="control-label">
														ORS/BURS No. <span class='require'>*</span>
													</label>

													<div class="input-group">
														<span class="input-group-addon"> </span> <form:input
															type="text" placeholder="ORS/BURS No."
															class="form-control" path="ors_burs_no" />
													</div>
												</div>
												<div class="form-group">
													<label>Disbursement Purpose</label> <span class='require'>*</span>
													<div class="input-group">
														<span class="input-group-addon"> </span> <form:select
															class="form-control col-md-12" path="purpose_name" name="purpose_name">
															<c:forEach var="purpose" items="${dropDown}">

																<option value="${purpose.purpose_name}">
          											<c:out value="${purpose.purpose_name}"/>
    												</option>
															</c:forEach>

														</form:select>
													</div>
												</div>
												<label>Mode of Payment</label><br> <form:select
													class="form-control col-md-12" path="mode_of_payment" name="payment_mode">
													<c:forEach var="mode" items="${dropDown2}">

														<option value="${mode.mode_of_payment}">
          											<c:out value="${mode.mode_of_payment}"/>
    												</option>
													</c:forEach>

												</form:select> <br>
												<div class="form-group">
													<br> <label>Institute Name</label> <span
														class='require'>*</span> <form:select
														class="form-control col-md-12" path="institute_name" name="institute_name">
														<c:forEach var="institute" items="${dropDown3}">

															<option value="${institute.institute_name}">
          											<c:out value="${institute.institute_name}"/>
    												</option>
														</c:forEach>

													</form:select> <br>
												</div>

												<br> <br> <label>Claimant Name</label> <span
													class='require'>*</span> <form:select
													class="form-control col-md-12" path="claimant_name" name="claimant_name">
													<c:forEach var="claimant" items="${dropDown4}">

														<option value="${claimant.claimant_name}">
          											<c:out value="${claimant.claimant_name}"/>
    												</option>
													</c:forEach>

												</form:select>
											</div>
											<br>
											<div class="form-group">
												<label for="inputAddress" class="control-label">
													Address <span class='require'>*</span>
												</label>

												<div class="input-group">
													<span class="input-group-addon"> </span> <form:input type="text"
														class="form-control" placeholder=" Address" path="address"></form:input>
												</div>
											</div>
											<div class="form-group">
												<label>Fund Cluster</label> <span class='require'>*</span> <form:select
													class="form-control col-md-12" path="fund_cluster" name="fund_cluster">
													<c:forEach var="fund" items="${dropDown5}">

														<option value="${fund.fund_cluster}">
          											<c:out value="${fund.fund_cluster}"/>
    												</option>
													</c:forEach>

												</form:select>
											</div>

											<div class="form-group">
												<label for="inputpassword" class="control-label">
													Date <span class='require'>*</span>
												</label>

												<div class="input-group">
													<span class="input-group-addon"> </span> <form:input type="text"
														placeholder="Date" path="date" class="form-control" />

												</div>
											</div>
											<div class="form-group">
												<label for="inputnumber" class="control-label">
													Employee Assigned<span class='require'>*</span>
												</label> <form:select class="form-control col-md-12" path="employee_assigned" name="employee_assigned">
													<c:forEach var="emp" items="${dropDown6}">

														<option value="${emp.employee_assigned}">
          											<c:out value="${emp.employee_assigned}"/>
    												</option>
													</c:forEach>

												</form:select>
											</div>


											<div class="input-group col-md-12">
												<table class="table table-hover">
													<thead>
														<tr>
															<th>Particulars</th>
															<th>Responsibility Center</th>
															<th>MFO/PAP</th>
															<th>Amount</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><form:input type="text" path="particulars" placeholder="Particulars"
																class="form-control" /></td>
															<td><form:select class="form-control col-md-12"
																path="responsibility_center" name="responsibility_center">
																	<c:forEach var="agency" items="${dropDown7}">

																		<option value="${agency.responsibility_center}">
          																<c:out value="${agency.responsibility_center}"/>
    																	</option>
																	</c:forEach>

															</form:select></td>
															<td><form:input type="text" path="mfo_pap" placeholder="MFO/PAP"
																class="form-control" /></td>
															<td><form:input type="text" path="amount" placeholder="Amount"
																class="form-control" /></td>
														</tr>
													</tbody>
												</table>
											</div>


											<div class="form-actions text-right ">
												<button name="submit" type="submit" class="btn btn-primary">Submit</button>
												&nbsp;
												<button type="cancel" class="btn btn-default">Cancel</button>
												&nbsp; <button type="reset" class="btn btn-success">Reset</button>
											</div>
							</form:form>
						</div>
					</div>
		</aside>


		<a id="back-to-top" href="resources/#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Return to top" data-toggle="tooltip" data-placement="left">
			<i class="livicon" data-name="plane-up" data-size="18"
			data-loop="true" data-c="#fff" data-hc="white"></i>
		</a>
		<!-- global js -->
		<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
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