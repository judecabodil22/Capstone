<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Accounts Receivables | Financials</title>
<head>
    <meta charset="UTF-8">
    
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
        <a href="resources/index.html" class="logo">
            <img src="resources/img/logo.png" alt="logo">
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
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Airi Satou as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="image">
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
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Airi Satou as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="image">
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
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Airi Satou as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="image">
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
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Airi Satou as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="image">
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
                            <li role="presentation" class="divider"></li>
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
                            <li role="presentation" class="divider"></li>
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
                        
                        
                        <li>
                            <a href="financials_ctransac">
                                <i class="livicon" data-name="doc-portrait" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i>
                                <span class="title">Cashier</span>
                                
                            </a>
							</li>
                            
                        
                        <li class="active">
                            <a href="resources/C_AR.html">
                                <i class="livicon" data-name="table" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Receivable</span>
                                
                            </a>
                            
                        </li>
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="barchart" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">Reports</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="financials_invoice">
                                        <i class="fa fa-angle-double-right"></i>
                                        Invoice
                                    </a>
                                
                            </ul>
                        </li>
                        
                            </ul>
                        </li>
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Accounts Receivables/Collections</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="resources/index.html">
                            <i class="livicon" data-name="home" data-size="20" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="resources/#">Accounts Receivable</a>
                    
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                
                
                    <div class="col-md-12">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box primary">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="fa-folder-o" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Collections
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <i class="fa fa-user"></i>
                                                    Payee
                                                </th>
												<th>
                                                    <i class="fa fa-info-circle"></i>
                                                    Type
                                                </th>
                                                <th class="hidden-xs">
                                                    <i class="fa fa-money"></i>
                                                    Balance
                                                </th>
                                                <th>
                                                    <i class="fa fa-rub"></i>
                                                    Total
                                                </th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <a href="resources/#">PUPQC</a>
                                                </td>
                                                <td class="hidden-xs">Tuition Fees</td>
                                                <td>
                                                    <span>&#8369;</span>52560.10
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="resources/#">Aling Bebang</a>
                                                </td>
                                                <td class="hidden-xs">Canteen</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
													
                                                </td>
                                            </tr>
                                            
											<tr>
                                                <td>
                                                    <a href="resources/#">COA</a>
                                                </td>
                                                <td class="hidden-xs">Seminars</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
                                                </td>
                                            </tr>
											<tr>
                                                <td>
                                                    <a href="resources/#">Job Quest Fair</a>
                                                </td>
                                                <td class="hidden-xs">Job Fairs</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
                                                </td>
                                            </tr>
											<tr>
                                                <td>
                                                    <a href="resources/#">Magnus Eventus</a>
                                                </td>
                                                <td class="hidden-xs">Job Fairs</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
                                                </td>
                                            </tr>

											
                                            <tr>
                                                <td>
                                                    <a href="resources/#">WaterPure Ltd</a>
                                                </td>
                                                <td class="hidden-xs">Seminars</td>
                                                <td>
                                                    <span>&#8369;</span>610.50
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Pay</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
						<div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h4 class="modal-title">Cashering</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4>Form</h4>
                                        <div>
                                                    <label for="input-text-1">OR Number</label>
                                                    <input class="form-control" id="disabledInput" type="text" placeholder="CV0012017" disabled>
													<p class="help-block"></p>
													
						 
                                                </div>
												
												<div>
												<label for="input-text-1">Type</label>
												<select id="e1" class="form-control select2" disabled>
                                        <optgroup label="Income Generating Projects">
                                            <option value="CT">Canteen</option>
                                            <option value="HI">Job Fair</option>
											<option value="HI">Seminars</option>
                                        </optgroup>
                                        
                                            <option value="CA">Tuition Fees</option>
                                            <option value="NV">Government Fund</option>
												</select>
											<p class="help-block"></p>
												</div>
											
                                                <div>
                                                    <label for="input-text-1">Payee</label>
                                                    <input type="name" class="form-control" placeholder="Name" disabled>
                                                    <p class="help-block">Name of Payer</p>
                                                </div>
                                                <div>
                                                    <label for="input-password-1">Description</label>
                                                    <input type="desc" class="form-control" id="input-password-1" placeholder="Description">
													<p class="help-block">Transaction Purposes</p>
                                                    
                                                </div>
                                                <div>
                                                    <label for="select-1">Payment</label>
                                                    <input type="float" class="form-control" id="input-password-1" placeholder="&#8369; 000.00">
                                                    <p class="help-block">Please enter amount in Peso.</p>
                                                </div>
                                                <div class="form-group draggable">
                                                    <label for="select-1">Date</label>
                                                    <input type="date" class="form-control" id="input-password-1">
                                                    <p class="help-block"></p>
													
													</div>
												
													
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="close" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
					</div>
					
					<!--modal for view!-->
					
					<div class="modal fade in" id="view" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h4 class="modal-title">Collections</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Details</h4>
										
                                        <div class="panel-body">
											<div class="table-scrollable">
												<table id="user" class="table table-bordered table-striped" style="clear:both">
												<tbody>
												<tr>
                                                <td>Payee Name</td>
                                                <td>PUPCQ</td>
												</tr>
												<tr>
													<td>Type</td>
                                                <td>Tuition Fee</td>
												</tr>

												<tr>
                                                <td>Date</td>
                                                <td>2017-04-15</td>
												</tr>
												<tr>
                                                <td>Due Date</td>
                                                <td>2017-04-15</td>
												</tr>
												<tr>
                                                <td>Amount</td>
                                                <td><span>&#8369;</span>52,560.10</td>
												</tr>
												<tr>
                                                <td>Status</td>
                                                <td>Unpaid</td>
												</tr>
												<tr>
                                                <td>Official Receipt(OR) Number</td>
                                                <td>CV0012017</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
							
												
													
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                
                            </div>
                        </div>
                    </div>
				
				
				
				
                    </div>
                </div>
                
                </div>
				
				
				
            </section>
			
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
    <!-- ./wrapper -->
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
</body>
</html>
