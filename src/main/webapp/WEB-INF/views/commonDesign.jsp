<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<head>
	<meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- global css -->
    <link href="resources/css/Necessary.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->
    
    <!-- Added Scripts -->
    <!-- @Dashboard - for top buttons -->
    <link rel="stylesheet" href="resources/css/only_dashboard.css" />
    
    <!-- /Added Scripts -->
    <!-- global css -->

	<link href="resources/vendors/Simple-Line-Icons-Webfont/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!-- font Awesome -->
	<link href="resources/vendors/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- end of global css -->    
    <!-- Modal Components -->
    <link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
    <!--page level css -->
    <link href="resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="resources/vendors/animate/animate.min.css">

    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
      
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    
    <!--livicons-->
    <script src="resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <script src="resources/js/josh.js" type="text/javascript"></script>
    <script src="resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="resources/vendors/holder-master/holder.js" type="text/javascript"></script>
	<!-- global js -->
    
    <!--  todolist-->
    <script src="resources/js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="resources/vendors/charts/easypiechart.min.js"></script>
    <script src="resources/vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="resources/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="resources/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="resources/vendors/charts/jquery.sparkline.js"></script>
    <!-- Modal Effects -->
    <script src="resources/vendors/modal/js/classie.js"></script>
	<script src="resources/vendors/modal/js/modalEffects.js"></script>
    
    <!-- Back to Top-->
    <script type="text/javascript" src="resources/vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="resources/vendors/jscharts/Chart.js"></script>
    <script src="resources/js/dashboard.js" type="text/javascript"></script>
    
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <!--end of page level css-->
		
    <!-- begining of page level js -->
    <script type="text/javascript" src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
	<script src="resources/vendors/modal/js/classie.js"></script>
	<script src="resources/vendors/modal/js/modalEffects.js"></script>
	
    <script type="text/javascript">
    $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    });
    </script>
    <!-- end of global css -->
    
    <!-- Zeus Unfixed TransVoucher Links -->
    <meta charset="UTF-8">

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
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
<link href="resources/css/pages/tables.css" rel="stylesheet"
	type="text/css">
<!--end of page level css-->

<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
		<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
		<!--livicons-->
		<script src="resources/vendors/livicons/minified/raphael-min.js"
			type="text/javascript"></script>
		<script src="resources/vendors/livicons/minified/livicons-1.4.min.js"
			type="text/javascript"></script>
		<script src="resources/js/josh.js" type="text/javascript"></script>
		<script src="resources/js/metisMenu.js" type="text/javascript"> </script>
		<script src="resources/vendors/holder-master/holder.js"
			type="text/javascript"></script>
		<!-- end of global js -->
		<!-- begining of page level js -->
		<script type="text/javascript"
			src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
		<!-- <script type="text/javascript"
			src="resources/vendors/datatables/dataTables.tableTools.min.js"></script> -->
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
		<!-- <script type="text/javascript"
			src="resources/js/pages/table-advanced.js"></script> -->
		<!-- end of page level js -->
		
		<!-- End of Zeus TransVoucher -->
		
		
    
    

</head>

<body class="skin-josh">
	<header class="header">
	
		<!-- Logo -->
		<a href="financials_dashboard" class="logo">
			<!-- <img src="resources/img/logo.png" alt="Logo"> -->
			<h1>FINANCIALS</h1>
        </a>       
        <!-- /Logo -->
        
        <!-- Navigation Icon -->
        <nav class="navbar navbar-static-top" role="navigation" style="background:rgb(81,87,99);">
        	<!-- Sidebar toggle button-->
        	<div>
        		<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background:rgb(81,87,99);">	
        			<div class="responsive_nav"></div>
 				</a>	
 			</div>
 		<!-- /Navigation Icon -->
 		
 		<div class="navbar-right">
 			<ul class="nav navbar-nav">
 				
 				<!-- Messages -->
 				<li class="dropdown messages-menu">
 					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
 						<i class="livicon" data-name="message-flag" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
 							<!-- <span class="label label-success">Number of Messages</span> -->
 					</a>
 					
 					<ul class="dropdown-menu dropdown-messages pull-right">
 						<li class="dropdown-title">Messages</li>
 							<li class="read message">
 								<a href="javascript:;" class="read message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Unread">
 									<span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i>
 										<img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
 											<div class="message-body">
 												<strong>Administrator</strong>
 												<br>Are you okay?<br>
 												<small>1 minute ago</small>
 											</div>
 								</a>
 							</li>
 							
 							<li class="footer">
 								<a href="#">View all</a>
 							</li>
 					</ul>
                </li>
                <!-- /Messages -->
                
                <!-- Notifications -->
                <li class="dropdown notifications-menu">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                		<i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
                			<!-- <span class="label label-warning">Number of Notifications</span> -->
                   	</a>
                   	
                   	<ul class=" notifications dropdown-menu">
                   		<li class="dropdown-title">Notifications</li>
                   			<li>
                   				<ul class="menu">
                   					<li>
                   						<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                   							<a href="#">Capstone deliverables</a>
                   								<small class="pull-right">
                   									<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                   									Just Now
                   								</small>
                                    </li>
                                    
                                    <li>
                                    	<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                    		<a href="#">PM deliverables</a>
                                    			<small class="pull-right">
                                    				<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                   									Just Now
                   								</small>
                                    </li>
                                    
                                    <li>
                                    	<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                    		<a href="#">BI/InfoSec deliverables</a>
                                    			<small class="pull-right">
                                    				<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                    				Just Now
                                    			</small>
                                    </li>
                                </ul>
                            </li>
                            
                            <li class="footer">
                            	<a href="#">View all</a>
                            </li>
                    </ul>
                </li>
                <!-- /Notifications -->
                
                <!-- User Information -->
                <li class="dropdown user user-menu">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                		<img data-src="resources/holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="F">
                			<div class="riot">
                				<div> User
                					<span>
                						<i class="caret"></i>
                   					</span>
                   				</div>
                   			</div>
                   	</a>
                   	
                   	<ul class="dropdown-menu">
                   		<!-- user image -->
                   		<li class="user-header bg-light-blue">
                   			<img data-src="resources/holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                   				<p class="topprofiletext">Accountant</p>
                   		</li>
                   		
                   		<!-- user information sub-menu -->
                   		<li>
                   			<a href="#">
                   				<i class="livicon" data-name="user" data-s="18"></i>
                   				Profile
                            </a>
                        </li>
                        
                        <!-- <li role="presentation"></li> -->
                        
                        <li>
                        	<a href="#">
                        		<i class="livicon" data-name="gears" data-s="18"></i>
                        		Account Settings
                            </a>
                         </li>
                         
                         <li class="user-footer">
                         	<div class="pull-left">
                         		<a href="#">
                         			<i class="livicon" data-name="lock" data-s="18"></i>
                         			Lock
                                </a>
                            </div>
                            
                            <div class="pull-right">
                         		<a href="#">
                         			<i class="livicon" data-name="sign-out" data-s="18"></i>
                         			Logout
                                </a>
                            </div>
                         </li>
                	</ul> 
                </li>
            </ul>
        </div>
        </nav>
	</header>
	
	<!-- left side (logo and sidebar) -->
	<div class="wrapper row-offcanvas row-offcanvas-left">
		 <aside class="left-side sidebar-offcanvas offcanvas-left">
            <section class="sidebar">
             <div class="page-sidebar  sidebar-nav">
                    <div class="clearfix">
                    </div>
                    &nbsp;
					<center>
                    <img src="resources/img/jmari.jpg" class="img-responsive img-circle" width="70px" height="70px" alt="User Image">
                    <h5 class="topprofiletext" style="color:white; padding-left:15px;">Vitas</h5>
                    <p>
                    <span class="topprofiletext" style="color:white; font-size:11px; padding-left:15px;">Super Admin</span>
                    </center>
                  
                    &nbsp;  
                    <h6 style="color:white">&nbsp;&nbsp;General</h6>
                    
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul id="menu" class="page-sidebar-menu">
    
                        
                        <li>
                            <a href="">
                                <i  class="livicon"  data-name="gears" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">System Configuration</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Human Resource</span>
                                        </a>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Logistics</span>
                                        </a>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Financials</span>
                                         <span class="fa arrow"></span>
                                        </a>
                                        
                                        <ul class="sub-menu">
                                        
                                         <li>
                                        <a href="admin_accountTypes">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Account Types</span>
                                        </a>
                                        </li>
                                        
                                         <li>
                                        <a href="admin_CoA">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Chart of Accounts</span>
                                        </a>
                                        </li>
                                        
                                         <li>
                                        <a href="admin_rCenters">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Responsibility &nbsp; 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;Centers</span>
                                        </a>
                                        </li>
                                        
                                         <li>
                                        <a href="admin_transaction">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Transaction Types</span>
                                        </a>
                                        </li>
                                        
                                         <li>
                                        <a href="admin_funds">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Funds</span>
                                        </a>
                                        </li>
                                        
                                        
                                        </ul>
                                        
                                        </li>
                                        </ul>
                        </li>
                        
                            
                        <li>
                             <a href="">
                                <i class="livicon"  data-name="settings" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">User Management</span>
                            </a>
                        </li>

                        
                        <li>
                             <a href="">
                                <i class="livicon" data-name="wrench" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Settings</span>
                            </a>
                        </li>

                        <br>
                        <h6 style="color:white">&nbsp;&nbsp;Modules</h6>

                        <li>
                            <a href="">
                                <i class="livicon" data-name="users" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Human Resource</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="ss_manage evaluators.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Core HR</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Core Human Capital Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        
                                        </ul>

                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Time and Attendance</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Time and Attendance</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Leave Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Shift and Scheduling</span>
                                            </a>
                                            </li>

                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Claims and Reimbursements</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Timesheet Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Payroll</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Payroll</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Compensation Planning and Administration</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Talent Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Competency Management</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Training Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Performance Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Social Recognition</span>
                                            </a>
                                            </li>
                                            
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Recruitment</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Recruitment</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Applicant Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">New Hire on Board</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Planning and Analytics</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">HR Analytics</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                       
                        
                       <li>
                            <a href="">
                                <i class="livicon" data-name="truck" data-size="18"  data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Logistics</span>
                                <span class="fa arrow"></span>
                            </a>
                             <ul class="sub-menu">
                                    <li class="">
                                        <a href="ss_manage evaluators.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Procurement</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Request Form</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Order Form</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Approved Purchase Request</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Request Form Quotation</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Bids</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Notice of Awards</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Warehouse Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Delivery</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Asset Management</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Acquisition</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Maintenance Work Order</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disposal</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Retirement</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                    </li>                                       
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Reports</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Request</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Order</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Fast-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Slowing-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item History</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Acquisition Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Work Order Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disposal Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Retirement Summary</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                       
                            
                        <li>
                            <a href="">
                                <i class="livicon" data-name="money" data-size="18"  data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Financials</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                               <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Journal Entry Voucher</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <!-- <a href="${ctx}/JEV/create"> -->
                                                <a href="financials_createjev">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Create JEV</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="${ctx}/JEV/list">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Review JEV</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                                 <ul class="sub-menu">
                                 

                                      
                                           
                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Collection</span>
                                            </a>
                                            
                                             <ul class = "sub-menu">
                                             
                                                <li>
                                                <a href="financials_ctransac2">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Accounts Receivable (Collections)</span>
                                            </a>
                                            </li>
                                            
                                               <li>
                                                <a href="financials_ctransac">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Casheiring</span>
                                            </a>
                                            </li>
                                             
                                             <li>
                                                <a href="financials_Collected">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Collected Accounts</span>
                                            </a>
                                            </li>
                                             </ul>
                                             
                                            
                                            </li>
                                       
                                    </li>
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="voucher_transaction">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Disbursement</span>
                                        </a>
                     
                                    </li>
                                </ul>
                                
                                <!-- start of ap ar -->
                                  <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">AP / AR</span>
                                        </a>

                                        <ul class = "sub-menu">
                                              <li>
                                           		     <a href="ap_create">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Create Accounts &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Payable</span>
                                           		 </a>
                                           		  </li>

                                            <li>
                                                <a href="ar_list">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List(Accounts Receivable)</span>
                                            </a>
                                            </li>
                                            
                                              <li>
                                                <a href="ap_list">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List(Accounts Payable)</span>
                                            </a>
                                            </li>
                                         </ul>
                                    </li>
                                </ul>
                                <!-- end of ap ar -->
                                
                                
                                
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                    </li>
                                 </ul>
                                
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Reports</span>
                                        </a>

                                        <ul class="sub-menu">   
                                            <li class="">
                                            <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Trial Balance</span>
                                            </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="${ctx}/PDFUATB" target="_blank">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Unadjasted Trial Balance</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Pre-Closing Trial Balance</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Post-Closing Trial Balance</span>
                                            </a>
                                            </li>
                                         </ul>
                                    </li>
                                </ul>
                                    </li>
                                </ul>      
                            
                       </li>
                        </ul>
                       
                        
                        
                       
                        <!--Requests Menu-->
                        
                       
                     <!-- END SIDEBAR MENU -->
                    
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>

<script>
$(document).ready(function(){
    $.each($('.sidebar li'), function(k, v){
        $(v).removeClass("active");
    });
    $('#' + "${module}").addClass("active");
    $.each($('#' + "${module}").parents('li'), function(k, v){
        $(v).addClass("active");
    });
    $.each($('#' + "${module}").parents('ul'), function(k, v){
        $(v).addClass("collapse in").attr("aria-expanded", true);
    });
});
</script>