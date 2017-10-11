<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	 <link href="resources/vendors/Simple-Line-Icons-Webfont/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!-- font Awesome -->
    <link href="resources/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>   
	<link href="resources/vendors/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	
    <!-- end of global css -->    
    <!--page level css -->
    <link href="resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="resources/css/only_dashboard.css" />
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    
    <!-- end of global css -->
    <!-- page level css -->
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
	
	
	
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <header class="header">
        <a href="admin_dashboard" class="logo">
            <h1>Financials</h1>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title">4 New Messages</li>
                            <li class="unread message">
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Riot Zeast</strong>
                                        <br>Hello, You there?
                                        <br>
                                        <small>8 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>John Kerry</strong>
                                        <br>Can we Meet ?
                                        <br>
                                        <small>45 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Jenny Kerry</strong>
                                        <br>Dont forgot to call...
                                        <br>
                                        <small>An hour ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Ronny</strong>
                                        <br>Hey! sup Dude?
                                        <br>
                                        <small>3 Hours ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="livicon" data-name="bell" data-loop="true" data-color="#e9573f" data-hovercolor="#e9573f" data-size="28"></i>
                            <span class="label label-warning">7</span>
                        </a>
                        <ul class=" notifications dropdown-menu">
                            <li class="dropdown-title">You have 7 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">after a long time</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Jef's Birthday today</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Few seconds ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">out of space</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            8 minutes ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">New friend request</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            An hour ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">On sale 2 products</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            3 Hours ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Lee Shared your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Yesterday
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">David liked your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            2 July 2014
                                        </small>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    Riot
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">Riot Zeast</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="lockscreen.html">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="login.html">
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
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar style="width:40%"">
                <div class="page-sidebar  sidebar-nav">
                    <div class="nav_icons">
                        <ul class="sidebar_threeicons">
                            <li>
                                <a href="form_builder.html">
                                    <i class="livicon" data-name="hammer" title="Form Builder 1" data-loop="true" data-color="#42aaca" data-hc="#42aaca" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="form_builder2.html">
                                    <i class="livicon" data-name="list-ul" title="Form Builder 2" data-loop="true" data-color="#e9573f" data-hc="#e9573f" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="buttonbuilder.html">
                                    <i class="livicon" data-name="vector-square" title="Button Builder" data-loop="true" data-color="#f6bb42" data-hc="#f6bb42" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="gridmanager.html">
                                    <i class="livicon" data-name="new-window" title="Page Builder" data-loop="true" data-color="#37bc9b" data-hc="#37bc9b" data-s="25"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul id="menu" class="page-sidebar-menu">
                        <li class="active">
                            <a href="admin_dashboard">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                        
                        <li> <!--forms -->
                            <a href="#">
                                <i class="livicon" data-name="gear" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">System Setup</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
										
								<li>
                                    <a href="Institution.jsp">
                                       <i class="livicon" data-name="home" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                        Institution Details						
                                    </a>																									
                                </li>	

							   <li>
                                    <a href="form_examples.jsp">
                                       <i class="livicon" data-name="biohazard" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                         <span class="title">Accounts</span>
										 <span class="fa arrow"></span>					
                                    </a>
									
									<ul class="sub-menu">
									
										<li>
											<a href="accountTypes">
											<i class="livicon" data-name="chevron-right" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
												Account Types					
											</a>
										</li>
									
										<li>
											<a href="admin_CoA">
											<i class="livicon" data-name="chevron-right" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
												Chart of Accounts					
											</a>
										</li>
                               
									</ul>
									
                                </li>

								<li>
                                    <a href="form_examples.html">
                                       <i class="livicon" data-name="biohazard" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                         <span class="title">JEV Components</span>
										 <span class="fa arrow"></span>					
                                    </a>
									
									<ul class="sub-menu">
										
										<li>
											<a href="admin_funds">
											<i class="livicon" data-name="chevron-right" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
												Funds		
											</a>
										</li>
										
										<li>
											<a href="admin_transaction">
											<i class="livicon" data-name="chevron-right" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
												Transaction Type				
											</a>
										</li>
									
										<li>
											<a href="admin_rCenters">
											<i class="livicon" data-name="chevron-right" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true" style="text-align:center"></i>
												Responsibility Center				
											</a>
										</li>
										
										
                               
									</ul>
									
                                </li>	
								
                            </ul>
                        </li>
                        
                    <!-- END SIDEBAR MENU -->
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Welcome to Dashboard</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div style="margin:0">
                        <div class="portlet box primary">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Audit Trail
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <i class="fa fa-sort-numeric-desc"></i>
                                                    ID
                                                </th>
                                                <th class="hidden-xs">
                                                    <i class="fa fa-user"></i>
                                                   User
                                                </th>
                                                <th>
                                                    <i class="fa ion-ios7-time"></i>
                                                    Transaction Time
                                                </th>
                                                <th>
													 <i class="fa fa-clipboard"></i>
													Transaction
												</th>
												
												<th>
													 <i class="fa fa-asterisk"></i>
													Status
												</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">4</a>
                                                </td>
                                                <td class="hidden-xs">Collecting Officer</td>
                                                <td>Today, 12:32:42</td>
												<td>
												Journal Entry Voucher Submission
												</td>
                                                <td>
                                                    <a href="#" class="label label-sm label-success" style="padding:1em">
                                                        <i class="fa fa-check-circle-o"></i>
                                                        Approved
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="info"></div>
                                                    <a href="#">3</a>
                                                </td>
                                                <td class="hidden-xs">Collecting Officer</td>
                                                <td>9:15:23</td>
												<td>
												User Validation
												</td>
                                                  <td>
                                                    <a href="#" class="label label-sm label-info" style="padding:1em">
                                                        <i class="fa fa-sign-in"></i>
                                                        Logged In
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="success"></div>
                                                    <a href="#">2</a>
                                                </td>
                                                <td class="hidden-xs">Disbursement Officer</td>
                                                <td>8:30:23</td>
												<td>
												Journal Entry Voucher Submission
												</td>
                                                <td>
                                                    <a href="#" class="label label-sm label-warning" style="padding:1em">
                                                        <i class="fa fa-circle-o"></i>
                                                        Pending
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="highlight">
                                                    <div class="warning"></div>
                                                    <a href="#">1</a>
                                                </td>
                                                <td class="hidden-xs">Collecting Officer</td>
                                                <td>9-17-17, 2:23:15</td>
												<td>Query for New Entries for Collections</td>
                                                <td>
                                                    <a href="#" class="label label-sm label-danger" style="padding:1em">
                                                        <i class="fa fa-ban"></i>
                                                        Cancelled
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
        </aside>
        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="resources/js/josh.js" type="text/javascript"></script>
    <script src="resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
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
    <!-- Back to Top-->
    <script type="text/javascript" src="resources/vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="resources/vendors/jscharts/Chart.js"></script>
    <script src="resources/js/dashboard.js" type="text/javascript"></script>
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
    <!-- end of page level js -->
  
</body>
</html>
