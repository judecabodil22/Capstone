<html>

<head>
    <meta charset="UTF-8">
    <title>Financials System Project</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->    
    <!--page level css -->
    <link href="resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="resources/css/only_dashboard.css" />
    <!--end of page level css-->
    <!-- daterange picker -->
    <link href="vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!--select css-->
    <link href="vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
	    <!--page level css -->
    <!-- daterange picker -->
    <link href="vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!--select css-->
    <link href="vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
	    <!--page level css -->
	<link rel="stylesheet" type="text/css" href="vendors/datatables/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <header class="header">
        <a href="financials_dashboard" class="logo">
            <!-- <img src="resources/img/logo.png" alt="Logo"> -->
            FINANCIALS
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
                            <!--span class="label label-success"></span-->
                        </a>
                        
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title">Messages</li>
                            <li class="read message">
                                <a href="javascript:;" class="unread message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Unread">
                                <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Admin</strong>
                                        <br>Are you okay?
                                        <br>
                                        <small>1 minute ago</small>
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
                            <!--span class="label label-warning"></span-->
                        </a>
                        <ul class=" notifications dropdown-menu">
                            <li class="dropdown-title">Notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">Capstone deliverables</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">PM Deliverables</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="resources/#">BI/InfoSec Deliverables</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
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
                            <img data-src="resources/holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="F">
                            <div class="riot">
                                <div>
                                    User
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
                                <p class="topprofiletext">User</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="resources/#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    Profile
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
            <section class="sidebar ">
                     <div class="page-sidebar  sidebar-nav">
               
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
					
                    <ul id="menu" class="page-sidebar-menu">
                    
                  
                        
                        <!-- Dashboard -->
                        <li class="active">
                            <a href="financials_dashboard">
                                <i class="livicon" data-name="barchart" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                        
                        <!-- System Setup -->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="gear" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">System Setup</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                            <!-- System Setup sub-menu -->
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        1
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        2
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        3
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        4
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        5
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        <!-- Transaction-->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="laptop" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">Transaction</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                            <!-- Transaction sub-menu -->
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/#">
                                        <i class="livicon" data-name="notebook" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                        Journal Entry Voucher
                                    </a>
                                    	<ul class="sub-menu">
                                			<li>
                                    			<a href="resources/#">
                                        			<i class="fa fa-angle-double-right"></i>
                                        			Create JEV
                                    			</a>
                                			</li>
                                			<li>
                                    			<a href="resources/#">
                                        			<i class="fa fa-angle-double-right"></i>
                                        			Edit JEV
                                    			</a>
                                			</li>
                                		</ul>
                                </li>
                                
                             <!-- Accounts Receivable -->
                        		<li>
                           			 <a href="resources/#">
                                		<i class="livicon" data-name="sign-in" data-c="#F89A14" data-hc="#F89A14" data-size="18" data-loop="true"></i>
                               			 <span class="title">Accounts Receivable</span>
                          			  </a>
                        		</li>
                        
                        	<!-- Accounts Payable -->
                       			 <li>
                            		<a href="resources/#">
                               			 <i class="livicon" data-name="sign-out" data-c="#F89A14" data-hc="#F89A14" data-size="18" data-loop="true"></i>
                               			 <span class="title">Accounts Payable</span>
                           		    </a>
                      		    </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Collections
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Disbursement
                                    </a>
                                </li>
                        
                            </ul>
                        </li>
                        
                      <!-- Queries -->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">Queries</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                            <!-- Reports sub-menu -->
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Chart of Accounts
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Fund
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Institution Details
                                    </a>
                                </li>
                                
                            </ul>
                        </li>
                        
                        <!-- Reports -->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">Reports</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                            <!-- Reports sub-menu -->
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        General Journal
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        General Ledger
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="resources/#">
                                        <i class="fa fa-angle-double-right"></i>
                                        Trial Balance
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        <!-- Manage Users -->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">Manage Users</span>
                            </a>
                        </li>
                        
                        <!-- Help -->
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i>
                                <span class="title">Help</span>
                            </a>
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
                <h1>Journal Entry Voucher</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <!--a href="resources/#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a-->
                    </li>
                </ol>
            </section>
            
             <section class="content">
             
					
					<!--JEV start-->
					<!--Dont forget to copy top and end "page-level"-->
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Journal Entry Voucher
                                </h3>
                                <span class="pull-right clickable">
                                    <i class="glyphicon glyphicon-chevron-up"></i>
                                </span>
                            </div>
							
							<!--Entry Date-->
                            <div class="panel-body">
                                <div class="box-body">
                                    <!-- Date dd/mm/yyyy -->
                                    <div class="col-md-4 form-group">
                                        <label>
                                            Entry Date
                                        </label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                        </div>
                                        <!-- /.input group --> </div>
                                    <!-- /.form group -->
							   
							   
							   <!--Fund-->
                                <div class="col-md-12 form-group">
                                    <label>
                                        Fund
                                    </label>
                                    <select id="e1" class="form-control select2">
                                        <optgroup label="Sample">
                                            <option value="1">sample1</option>
                                            <option value="2">sample2</option>
											<option value="3">sample3</option>
                                        </optgroup>
                                        <optgroup label="Sample2">
                                            <option value="4">sample4</option>
                                            <option value="5">sample5</option>
                                            <option value="6">sample6</option>
                                        </optgroup>
                                    </select>
                                </div>    
								
								<!--Transaction Type-->
                                <div class="col-md-12 form-group">
                                    <label>
										Transaction Type
                                    </label>
                                    <select id="e1" class="form-control select2">
                                        <optgroup label="Sample">
                                            <option value="1">sample1</option>
                                            <option value="2">sample2</option>
											<option value="3">sample3</option>
                                        </optgroup>
                                        <optgroup label="Sample2">
                                            <option value="4">sample4</option>
                                            <option value="5">sample5</option>
                                            <option value="6">sample6</option>
                                        </optgroup>
                                    </select>
                                </div>    
								
								<!--Transaction Template-->
                                <div class="col-md-12 form-group">
                                    <label>
										Transaction Template
                                    </label>
                                    <select id="e1" class="form-control select2">
                                        <optgroup label="Sample">
                                            <option value="1">sample1</option>
                                            <option value="2">sample2</option>
											<option value="3">sample3</option>
                                        </optgroup>
                                        <optgroup label="Sample2">
                                            <option value="4">sample4</option>
                                            <option value="5">sample5</option>
                                            <option value="6">sample6</option>
                                        </optgroup>
                                    </select>
                                </div>  
								
								<!--Particulars-->
								 <div class="col-md-12 form-group">
                                    <label>Particulars</label>
                                    <textarea id="textarea" class="form-control" style="resize:none" maxlength="300" rows="3" placeholder="sample text....."></textarea>
                                </div>
								
								      
                        <!-- Table of Accounts-->
						<div class="col-md-12">
                        <div class="portlet box default">
                            <div class="portlet-title">
                                <div class="caption">
                                    Table of Accounts
                                </div>
                            </div>
                            <div class="portlet-body">
								 <!--<div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">-->

                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th class="col-md-2">
                                                    Responsibility Center
                                                </th >
                                                <th class="col-md-3">
                                                    Account
                                                </th>
                                                <th class="col-md-3">
                                                    Description
                                                </th>
                                                <th class="col-md-2">
													Debit
												</th>
												<th class="col-md-2">
													Credit
												</th>
												
                                            </tr>
                                        </thead>
										
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>

                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input type="numeric" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="numeric" class="form-control" rows="1"/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>
                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>
                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>
                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input type="numeric" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="numeric" class="form-control" rows="1"/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>
                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="number" class="form-control" rows="1"/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
												</td>
                                                <td>
                                                    <input type="text" class="form-control" maxlength="1000" rows="1"/>
                                                </td>
                                                <td>
                                                    <input name="number" required type="text" placeholder="" class="form-control" />

                                                </td>
												<td>
                                                    <input name="number" required type="number"  class="form-control" />

                                                </td>
												
												

												
                                            </tr>  
                                        </tbody>
                                    </table>
								</div>
							</div>
						</div>
						
						<!--Table of Supporting Documents-->
                        <div class="portlet box default">
                            <div class="portlet-title">
                                <div class="caption">
                                    Table of Supporting Documents
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th class="col-md-4">
                                                    Description 
                                                </th>
                                                <th class="col-md-4">
                                                    Reference Code
                                                </th>
                                                <th class="col-md-2">
                                                    Date
                                                </th>
                                            </tr>
                                        </thead>
										
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
													<input type="text" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                                </td>
                                            </tr>
											
											    <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                                </td>
                                            </tr>
											
										   <tr>
                                                <td>
                                                    <select id="e1" class="form-control select2">
														<optgroup label="Sample">
															<option value="1">sample1</option>
															<option value="2">sample2</option>
															<option value="3">sample3</option>
														</optgroup>
														<optgroup label="Sample2">
															<option value="4">sample4</option>
															<option value="5">sample5</option>
															<option value="6">sample6</option>
														</optgroup>
													</select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control" rows="1"/>
                                                </td>
												<td>
                                                    <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
								</div>
							</div>	
 						</div>							
    				</div>
	  			 </div>
	     
                           		 


							<div class="col-md-12 form-group">
                                        <div>
                                            <label for="disabledSelect">Prepared by</label>
                                            <input class="form-control" id="disabledInput" type="text" placeholder="User" disabled></div>
                                        
                                  
									<br>
									<div>
									<button type="submit" class="btn btn-responsive btn-custom">Submit</button>	
									<button type="submit" class="btn btn-responsive btn-custom">Reset</button>	
									<button type="submit" class="btn btn-responsive btn-custom">Submit</button>	
									</div>


							
                            </div>
                         
                      
					</div>
						
						


						
                        <!-- END SAMPLE TABLE PORTLET-->
                    </div>
                </div>

								
                            </div>
                        </div>
                
            </section>
            
            
            
        
        </aside>
        <!-- right-side -->
    </div>
    <a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
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
    <!-- InputMask -->
    <script src="vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="vendors/select2/select2.js" type="text/javascript"></script>
    <script src="vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <script src="vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <script src="vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <script src="vendors/card/jquery.card.js" type="text/javascript"></script>
    <script src="js/pages/formelements.js" type="text/javascript"></script>
    <!-- end of page level js -->
	    <!-- begining of page level js -->
    <!-- InputMask -->
    <script src="vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="vendors/select2/select2.js" type="text/javascript"></script>
    <script src="vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <script src="vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <script src="vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <script src="vendors/card/jquery.card.js" type="text/javascript"></script>
    <script src="js/pages/formelements.js" type="text/javascript"></script>
    <!-- end of page level js -->
	   <!--livicons-->
    <script src="vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"></script>
    <script src="vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
	    <!-- begining of page level js -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="js/pages/table-editable.js"></script>
    <!-- end of page level js -->
  
</body>
</html>
