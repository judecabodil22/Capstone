<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Funds</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	 <link href="resources/vendors/Simple-Line-Icons-Webfont/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>   
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
                <a href="resources/#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="resources/#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title">4 New Messages</li>
                            <li class="unread message">
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
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
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
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
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
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
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Ronny</strong>
                                        <br>Hey! sup Dude?
                                        <br>
                                        <small>3 Hours ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="footer">
                                <a href="resources/#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="resources/#" class="dropdown-toggle" data-toggle="dropdown">
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
                                        <a href="resources/#">after a long time</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">Jef's Birthday today</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Few seconds ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">out of space</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            8 minutes ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">New friend request</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            An hour ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">On sale 2 products</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            3 Hours ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">Lee Shared your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Yesterday
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">David liked your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            2 July 2014
                                        </small>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="resources/#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="resources/#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="resources/holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
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
                                <img data-src="resources/holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">Riot Zeast</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="resources/#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="resources/#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="resources/lockscreen.html">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="resources/login.html">
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
                                <a href="resources/form_builder.html">
                                    <i class="livicon" data-name="hammer" title="Form Builder 1" data-loop="true" data-color="#42aaca" data-hc="#42aaca" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="resources/form_builder2.html">
                                    <i class="livicon" data-name="list-ul" title="Form Builder 2" data-loop="true" data-color="#e9573f" data-hc="#e9573f" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="resources/buttonbuilder.html">
                                    <i class="livicon" data-name="vector-square" title="Button Builder" data-loop="true" data-color="#f6bb42" data-hc="#f6bb42" data-s="25"></i>
                                </a>
                            </li>
                            <li>
                                <a href="resources/gridmanager.html">
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
                            <a href="resources/#">
                                <i class="livicon" data-name="gear" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">System Setup</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
										
								<li>
                                    <a href="resources/Institution.html">
                                       <i class="livicon" data-name="home" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                        Institution Details						
                                    </a>																									
                                </li>	

							   <li>
                                    <a href="resources/form_examples.html">
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
                                    <a href="resources/form_examples.html">
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
                <h1>Types of Funds</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="resources/#">
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
                                <h3 class="caption">
                                     <i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Funds
                                </h3>
                                <div class="pull-right">
									
									<a type="button" class="btn btn-success btn-sm" data-toggle="modal" data-href="#add" href="#add"><span class="glyphicon glyphicon-check"></span>Add</a>
                                  
                                   </div>
                                   
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                               
									<table  id="dashboard_table" style="text-align:center" class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th style="text-align:center">
                                                    <i class="fa fa-sort-alpha-desc"></i>
                                                 Code
                                                </th>
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Description
                                                </th>
                                                
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-trash-o"></i>
											    Delete
                                                </th>
                                               
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="MyOneAndOnly" items="${list}">
                                        	 <tr data-uid="${MyOneAndOnly.fund_uid}" data-code="${MyOneAndOnly.fund_code}" data-desc="${MyOneAndOnly.fund_description}" >
                                                
                                              <form:form action="admin_funds_delete" modelAttribute="fundingHappiness">
                                                <td class="highlight" class="info">
                                                     <div class="info"></div>

                                                   <a  type="button" data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="ToModal">${MyOneAndOnly.fund_code}</a>
                                                </td>
                                                <td class="hidden-xs">${MyOneAndOnly.fund_description}</td>
                                                 <td>
                                                   	<form:input type="hidden" id="uid" path="fund_uid" value="${MyOneAndOnly.fund_uid}"/>
                                                    <input type="submit" value="Delete" name="Delete" class="btn btn-danger btn-sm">
                                                  
                                                  	                                       
                                                </td>
                                                
                                                </form:form>
                                                
                                            </tr>
										</c:forEach>		
                                                
										
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
	
		 
 <!--Add-->  
<div class="modal fade in" id="add" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">New Fund</h4>
                            </div>
                            <div class="modal-body">


                  
<form:form class="form-horizontal" action="admin_funds_save" modelAttribute="fundingHappiness" name="FundForm">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="code">Code</label>  
  <div class="col-md-5">
  <form:input id="code" name="code" type="text"  class="form-control input-md" path="fund_code"/>
  <span class="help-block">numbers only</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>  
  <div class="col-md-8">
  <form:input id="description" name="description" type="text"  class="form-control input-md" path="fund_description"/>
  <span class="help-block">Fund Description</span>  
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <input type="submit"  name="submit" class="btn btn-success">
    <input type="reset"   name="reset" class="btn btn-danger">
  </div>
</div>

</fieldset>
</form:form>
			</div>	
		</div>
	</div>							
</div>
	 <!-- End of Add -->	
	
<!--Edit-->

<div class="modal fade in" id="edit" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Edit Fund</h4>
                            </div>
                            <div class="modal-body">
                    
<form:form class="form-horizontal" action="admin_funds_update" modelAttribute="fundingHappiness" name="FundForm">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="code">Code</label>  
  <div class="col-md-5">
   <form:input  id="modal_uid" type="hidden" class="form-control input-md" path="fund_uid"/>
  <form:input  id="modal_code" type="text" class="form-control input-md" path="fund_code"/>
  <span class="help-block">numbers only</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>  
  <div class="col-md-8">
  <form:input  id="modal_description" type="text" class="form-control input-md" path="fund_description"/>
  <span class="help-block">Fund Description</span>  
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <input type="submit"  name="submit" class="btn btn-success">
    <input type="reset"   name="reset" class="btn btn-danger" onClick="ClearForm()">
  </div>
</div>

</fieldset>
</form:form>
			</div>	
		</div>
	</div>							
</div>
	 <!-- End of Edit -->		
		
		
		
		
		
		
	
	
	
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
  
  <script>
$(document).ready(function(){
	// code to read selected table row cell data (values).
	$(".ToModal").on('click',function(){
		// get data
		var data = $(this).closest('tr').data();

		// put to modal ----------------------- start
		// using jquery codes
		/* $('#modal_code').val(data.code);
		$('#modal_description').val(data.desc); */
		
		// using native javascript codes
		 document.getElementById("modal_code").value = data.code;
		 document.getElementById("modal_description").value = data.desc;
		 document.getElementById("modal_uid").value = data.uid;
		// put to modal ----------------------- ends
	});
});



</script>
	
  
  
  
</body>
</html>
