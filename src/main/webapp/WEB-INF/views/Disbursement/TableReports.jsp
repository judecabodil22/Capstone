<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Advanced Datatables| Josh Admin Template</title>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/styles/black.css" rel="stylesheet" type="text/css"
	id="colorscheme" />
<link href="resources/css/panel.css" rel="stylesheet" type="text/css" />
<link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css" />
<!-- end of global css -->
<!--page level css -->
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css">
<!--end of page level css-->
</head>

<body class="skin-josh">
	<header class="header">
		<a href="resources/index.html" class="logo">
		<h1>Financials</h1>
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
							class="img-circle img-responsive pull-left" height="35"
							alt="riot">
							<div class="riot">
								<div>
									Riot <span> <i class="caret"></i>
									</span>
								</div>
							</div>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								data-src="resources/holder.js/90x90/#fff:#000"
								class="img-responsive img-circle" alt="User Image">
								<p class="topprofiletext">Riot Zeast</p></li>
							<!-- Menu Body -->
							<li><a href="resources/#"> <i class="livicon" data-name="user"
									data-s="18"></i> My Profile
							</a></li>
							<li role="presentation"></li>
							<li><a href="resources/#"> <i class="livicon" data-name="gears"
									data-s="18"></i> Account Settings
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

					<div class="clearfix"></div>
					<!-- BEGIN SIDEBAR MENU -->
					<ul class="page-sidebar-menu" id="menu">
						<li><a href="resources/index.html"> <i class="livicon"
								data-name="home" data-size="18" data-c="#418BCA"
								data-hc="#418BCA" data-loop="true"></i> <span class="title">Dashboard</span>
						</a></li>
						<li><a href="resources/#"> <span class="title">Transactions</span>
								<span class="fa arrow"></span>
						</a>
							<ul class="sub-menu">
								<li><a href="resources/Disbursement_for_Payroll.html">
										Disbursement </a></li>
							</ul>
						<li><a href="resources/"> Reports </a></li>
						</li>
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<!--section starts-->
				<h1>List</h1>
			</section>
			<!--section ends-->
			<section class="content">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-primary filterable">
							<div class="panel-heading clearfix  ">
								<div class="panel-title pull-left">
									<div class="caption">
										<i class="livicon" data-name="camera-alt" data-size="16"
											data-loop="true" data-c="#fff" data-hc="white"></i>
										Paid Transactions
									</div>

								</div>
								<div class="tools pull-right"></div>

							</div>
							<div class="panel-body">
								<table class="table table-striped table-responsive">
									<thead>
										<tr>

											<th>DV No.</th>
											<th>Purpose Name</th>
											<th>Mode of Payment</th>
											<th>Institute Name</th>
											<th>Responsibility Center</th>
											<th>Amount</th>
											<th>Officer Assigned</th>
											<th>Status</th>
										</tr>
										
										<c:forEach var="dv" items="${dvList}">

											<tr>
												<td>${dv.dv_no}</td>
												<td>${dv.purpose_name}</td>
												<td>${dv.mode_of_payment}</td>
												<td>${dv.institute_name}</td>
												<td>${dv.responsibility_center}</td>
												<td>${dv.amount}</td>
												<td>${dv.employee_assigned}</td>
												<td><span class="label label-sm label-primary">${dv.status}</span></td>
							
											</tr>
										</c:forEach>
									</thead>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- row-->

				<!-- Third Basic Table Ends Here-->
				<!--delete modal starts here-->
				<div class="modal fade" id="delete" tabindex="-1" role="dialog"
					aria-labelledby="edit" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title custom_align" id="Heading">Delete
									this entry</h4>
							</div>
							<div class="modal-body">
								<div class="alert alert-warning">
									<span class="glyphicon glyphicon-warning-sign"></span> Are you
									sure you want to delete this Record?
								</div>
							</div>
							<div class="modal-footer ">
								<button type="button" class="btn btn-warning">
									<span class="glyphicon glyphicon-ok-sign"></span> Yes
								</button>
								<button type="button" class="btn btn-warning"
									data-dismiss="modal">
									<span class="glyphicon glyphicon-remove"></span> No
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /.modal ends here -->
			</section>
			<!-- content -->
		</aside>
		<!-- right-side -->
	</div>
	<!-- ./wrapper -->
	<a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top"
		role="button" title="Return to top" data-toggle="tooltip"
		data-placement="left"> <i class="livicon" data-name="plane-up"
		data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
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
	<script src="resources/vendors/holder-master/holder.js" type="text/javascript"></script>
	<!-- end of global js -->
	<!-- begining of page level js -->
	<script type="text/javascript"
		src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="resources/vendors/datatables/dataTables.tableTools.min.js"></script>
	<script type="text/javascript"
		src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
	<script type="text/javascript"
		src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
	<script type="text/javascript"
		src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
	<!-- end of page level js -->
</body>
</html>

</html>