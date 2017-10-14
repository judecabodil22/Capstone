<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Disbursement</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<!-- global css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="vendors/font-awesome-4.2.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="css/styles/black.css" rel="stylesheet" type="text/css"
	id="colorscheme" />
<link href="css/panel.css" rel="stylesheet" type="text/css" />
<link href="css/metisMenu.css" rel="stylesheet" type="text/css" />
<!-- end of global css -->
<!--page level css -->
<link href="vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet"
	type="text/css" />
<link href="css/pages/calendar_custom.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" media="all"
	href="vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet" href="vendors/animate/animate.min.css">
<link rel="stylesheet" href="css/only_dashboard.css" />
<!--end of page level css-->
</head>

<body class="skin-josh">
	<header class="header">
		<a href="index.html" class="logo"> <img src="img/logo.png"
			alt="Logo">
		</a>
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<div>
				<a href="#" class="navbar-btn sidebar-toggle"
					data-toggle="offcanvas" role="button">
					<div class="responsive_nav"></div>
				</a>
			</div>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<li class="dropdown messages-menu"></li>
					<li class="dropdown notifications-menu"></li>
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							data-src="holder.js/35x35/#fff:#000" width="35"
							class="img-circle img-responsive pull-left" height="35"
							alt="riot">
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
								data-src="holder.js/90x90/#fff:#000"
								class="img-responsive img-circle" alt="User Image">
								<p class="topprofiletext">Zeus Marzon</p></li>
							<!-- Menu Body -->
							<li><a href="#"> <i class="livicon" data-name="user"
									data-s="18"></i> My Profile
							</a></li>
							<li role="presentation"></li>
							<li><a href="#"> <i class="livicon" data-name="gears"
									data-s="18"></i> Account Settings
							</a></li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="lockscreen.html"> <i class="livicon"
										data-name="lock" data-s="18"></i> Lock
									</a>
								</div>
								<div class="pull-right">
									<a href="login.html"> <i class="livicon"
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
						<li><a href="index.html"> <i class="livicon"
								data-name="home" data-size="18" data-c="#418BCA"
								data-hc="#418BCA" data-loop="true"></i> <span class="title">Dashboard</span>
						</a></li>
						<li><a href="#"> <span class="title">Transactions</span>
								<span class="fa arrow"></span>
						</a>
							<ul class="sub-menu">
								<li><a href="Disbursement_for_Payroll.html">
										Disbursement </a></li>
							</ul>
						<li><a href=""> Reports </a></li>
						</li>
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Main content -->
			<section class="content-header">
				<h1>Welcome to Dashboard</h1>
				<ol class="breadcrumb">
					<li class="active"><a href="#"> <i class="livicon"
							data-name="home" data-size="16" data-color="#333"
							data-hovercolor="#333"></i> Home
					</a></li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div
						class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
						<!-- Trans label pie charts strats here-->
						<div class="lightbluebg no-radius">
							<div class="panel-body squarebox square_boxs">
								<div class="col-xs-12 pull-left nopadmar">
									<div class="row">
										<div class="square_box col-xs-7 text-right">
											<span>Views Today</span>
											<div class="number" id="myTargetElement1">90</div>
										</div>
										<i class="livicon  pull-right" data-name="eye-open"
											data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
									</div>
									<div class="row">
										<div class="col-xs-6">
											<small class="stat-label">Last Week</small>
											<h4 id="myTargetElement1.1"></h4>
										</div>
										<div class="col-xs-6 text-right">
											<small class="stat-label">Last Month</small>
											<h4 id="myTargetElement1.2"></h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInUpBig">
						<!-- Trans label pie charts strats here-->
						<div class="redbg no-radius">
							<div class="panel-body squarebox square_boxs">
								<div class="col-xs-12 pull-left nopadmar">
									<div class="row">
										<div class="square_box col-xs-7 pull-left">
											<span>Today's Sales</span>
											<div class="number" id="myTargetElement2"></div>
										</div>
										<i class="livicon pull-right" data-name="piggybank"
											data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
									</div>
									<div class="row">
										<div class="col-xs-6">
											<small class="stat-label">Last Week</small>
											<h4 id="myTargetElement2.1"></h4>
										</div>
										<div class="col-xs-6 text-right">
											<small class="stat-label">Last Month</small>
											<h4 id="myTargetElement2.2"></h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-lg-3 col-sm-6 col-md-6 margin_10 animated fadeInDownBig">
						<!-- Trans label pie charts strats here-->
						<div class="goldbg no-radius">
							<div class="panel-body squarebox square_boxs">
								<div class="col-xs-12 pull-left nopadmar">
									<div class="row">
										<div class="square_box col-xs-7 pull-left">
											<span>Subscribers</span>
											<div class="number" id="myTargetElement3"></div>
										</div>
										<i class="livicon pull-right" data-name="archive-add"
											data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
									</div>
									<div class="row">
										<div class="col-xs-6">
											<small class="stat-label">Last Week</small>
											<h4 id="myTargetElement3.1"></h4>
										</div>
										<div class="col-xs-6 text-right">
											<small class="stat-label">Last Month</small>
											<h4 id="myTargetElement3.2"></h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
						<!-- Trans label pie charts strats here-->
						<div class="palebluecolorbg no-radius">
							<div class="panel-body squarebox square_boxs">
								<div class="col-xs-12 pull-left nopadmar">
									<div class="row">
										<div class="square_box col-xs-7 pull-left">
											<span>Registered Users</span>
											<div class="number" id="myTargetElement4"></div>
										</div>
										<i class="livicon pull-right" data-name="users" data-l="true"
											data-c="#fff" data-hc="#fff" data-s="70"></i>
									</div>
									<div class="row">
										<div class="col-xs-6">
											<small class="stat-label">Last Week</small>
											<h4 id="myTargetElement4.1"></h4>
										</div>
										<div class="col-xs-6 text-right">
											<small class="stat-label">Last Month</small>
											<h4 id="myTargetElement4.2"></h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/row-->


				<!-- BEGIN Percentage monitor -->
				<br>
				<div class="col-sm-6 col-sm-offset-3">
					<div class="panel green_gradiante_bg ">
						<div class="panel-heading">
							<a href="all_transactions.html">
								<h3 class="panel-title">
									<i class="livicon" data-name="spinner-five" data-size="16"
										data-loop="false" data-c="#fff" data-hc="white"></i> Payables
								</h3>
							</a>
						</div>
						<div class="panel-body nopadmar">
							<div class="row">
								<div class="col-sm-6 text-center">
									<h4 class="small-heading">Paid</h4>
									<a href="paid_transactions.html"> <span
										class="chart cir chart-widget-pie widget-easy-pie-1"
										data-percent="50"> <span class="percent">50</span>
											<canvas height="110" width="110"></canvas>
									</span>
									</a>
								</div>
								<!-- /.col-sm-4 -->
								<div class="col-sm-6 text-center">
									<h4 class="small-heading">Pending</h4>
									<a href="paid_transactions.html"> <span
										class="chart cir chart-widget-pie widget-easy-pie-3"
										data-percent="50"> <span class="percent">50</span>
											<canvas height="110" width="110"></canvas>
									</span>
									</a>
								</div>
								<!-- /.col-sm-4 -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<!-- Main content -->
				<div class="col-md-12">
					<div class="box">
						<div class="box-body">
							<div id="calendars"></div>
						</div>
					</div>
					<!-- END BEGIN Percentage monitor-->
				</div>
	</div>

	<!-- To do list -->


	</section>
	</aside>
	<!-- right-side -->
	</div>
	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top"
		role="button" title="Return to top" data-toggle="tooltip"
		data-placement="left"> <i class="livicon" data-name="plane-up"
		data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
	</a>
	<!-- global js -->
	<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!--livicons-->
	<script src="vendors/livicons/minified/raphael-min.js"
		type="text/javascript"></script>
	<script src="vendors/livicons/minified/livicons-1.4.min.js"
		type="text/javascript"></script>
	<script src="js/josh.js" type="text/javascript"></script>
	<script src="js/metisMenu.js" type="text/javascript"> </script>
	<script src="vendors/holder-master/holder.js" type="text/javascript"></script>
	<!-- end of global js -->
	<!-- begining of page level js -->
	<!--  todolist-->
	<script src="js/todolist.js"></script>
	<!-- EASY PIE CHART JS -->
	<script src="vendors/charts/easypiechart.min.js"></script>
	<script src="vendors/charts/jquery.easypiechart.min.js"></script>
	<!--for calendar-->
	<script src="vendors/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<script src="vendors/fullcalendar/calendarcustom.min.js"
		type="text/javascript"></script>
	<!--   Realtime Server Load  -->
	<script src="vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
	<script src="vendors/charts/jquery.flot.resize.min.js"
		type="text/javascript"></script>
	<!--Sparkline Chart-->
	<script src="vendors/charts/jquery.sparkline.js"></script>
	<!-- Back to Top-->
	<script type="text/javascript" src="vendors/countUp/countUp.js"></script>
	<!--   maps -->
	<script src="vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="vendors/jscharts/Chart.js"></script>
	<script src="js/dashboard.js" type="text/javascript"></script>
	<script src="vendors/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<script src="vendors/fullcalendar/calendarcustom.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
        
     $(document).ready(function() {
     /* initialize the external events
                 -----------------------------------------------------------------*/
      

        /* initialize the calendar
                 -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
            m = date.getMonth(),
            y = date.getFullYear();
        $('#calendars').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            buttonText: {
                prev: "<span class='fa fa-caret-left'></span>",
                next: "<span class='fa fa-caret-right'></span>",
                today: 'today',
                month: 'month',
                week: 'week',
                day: 'day'
            },
            //Random events
            events: [{
                title: 'Client Meeting',
                start: new Date(y, m, 10),
                backgroundColor: "#5bc0de"
            }],
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }
        });

        /* ADDING EVENTS */
        var currColor = "#418BCA"; //default
        //Color chooser button
        var colorChooser = $("#color-chooser-btn");
        $("#color-chooser > li > a").click(function(e) {
            e.preventDefault();
            //Save color
            currColor = $(this).css("background-color");
            //Add color effect to button
            colorChooser
                .css({
                    "background-color": currColor,
                    "border-color": currColor
                })
                .html($(this).text() + ' <span class="caret"></span>');
        });
        $("#add-new-event").click(function(e) {
            e.preventDefault();
            //Get value and make sure it is not null
            var val = $("#new-event").val();
            if (val.length == 0) {
                return;
            }

            //Create event
            var event = $("<div />");
            event.css({
                "background-color": currColor,
                "border-color": currColor,
                "color": "#fff"
            }).addClass("external-event");
            event.html(val);
            $('#external-events').prepend(event);

            //Add draggable funtionality
            ini_events(event);

            //Remove event from text input
            $("#new-event").val("");
        });
    });
    </script>
	<!-- end of page level js -->

</body>
</html>
