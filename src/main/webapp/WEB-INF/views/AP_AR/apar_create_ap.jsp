
<html>
<head>
    <meta charset="UTF-8">
    <title>Advanced Datatables| Josh Admin Template</title>
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
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css">
	 <link href="resources/vendors/timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
    <link href="resources/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen" />
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
                        <li class="active">
                            <a href="resources/index.html">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
						<li>
                            <a href="resources/#">
                                <i class="livicon" data-name="table" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">System Setup</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/create_of_payable.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        Create Payable
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="table" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Payable</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/list_of_payable.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of Payables
                                    </a>
                                </li>
                            </ul>
                        </li>
						                        <li>
                            <a href="resources/#">
                                <i class="livicon" data-name="table" data-c="#418BCA" data-hc="#418BCA" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Receivable</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="resources/list_of_receivable.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of Receivables
                                    </a>
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
                <h1>List of Payable</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="resources/index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="resources/#">Accounts Payable</a>
                    </li>
                    <li class="active">List of Payables</li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
   <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Input Payable
                                </div>
                                    
                                </div>
                           

                            </div>
                            <div class="panel-body">
							
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Company Name</label>
                                                                <input type="text" class="form-control ">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Claimant Name</label>
                                                                <input type="text" class="form-control">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Responsibility Center</label>
                                                                <select  class="form-control select2">
																<option value="">AAAACK</option>
																</select>
														</div>
														<div class="form-group col-md-12">
														   <label>Voucher Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
														</div>
														   
													
                                                           <form class="form-horizontal">
														   
														<div class="form-group col-md-12">
														   <label>Due Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
													</div>
													
                                                        </form>
                                                    </div>
													
                                                    <div class="col-md-6">
                                                           <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Amount</label>
                                                                <input type="text" class="form-control">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Account Type</label>
                                                                <select  class="form-control select2">
																<option value="">Taxes and Licenses</option>
																<option value="">Utilities Expense</option>
																<option value="">Miscellaneous Expense</option>
																<option value="">Repair & Maintenance</option>
																</select>
														</div>
													<div class="form-group col-md-12">
                                                                <label for="">Particulars</label>
                                                                <textarea id="textarea" rows="4" class="form-control"style="resize:none" maxlength="1000" placeholder="Write something here..."></textarea>
													</div>
													<div class="form-group col-md-12">
                                                                <label for="">Status</label>
                                                                <select  class="form-control select2">
																<option value="">Unpaid</option>
																<option value="">Paid</option>
																</select>
														</div>
														
													</form>
                                                </div>
												<div class="row">
													<hr>
													<div style="float: right">
														<label class="col-md-4 control-label" for="CAPSaveButton"></label>
															<div class="col-md-4">
																<button id="CAPSaveButton" name="CAPSaveButton" class="btn btn-primary">Save</button>
															</div>
													</div>
												</div> 
                                            </div>
                                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Table Tools
                                </div>
                                    
                                </div>
                                <div class="tools pull-right"></div>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>

                                            <th>Transaction Number</th>
											<th>Company Name</th>
                                            <th>Voucher Date</th>
                                            <th>Due Date</th>
											<th>Amount</th>
											<th>Status</th>
											<th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
											<td>223131321</td>
                                            <td>Eureka's Furniture</td>
                                            <td>2017-04-15</td>
                                            <td>2017-12-30</td>
											<td>20,000.00</td>
                                            <td><span class="label label-sm label-warning">Overdue</span></td>
                                            <td>  
												<a href="resources/#full-width" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#full-width">
													<i class="fa fa-eye" ></i>
													View
                                                </a>
												<a href="resources/#stack1" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stack1">
													<i class="fa fa-edit" ></i>
													Edit
                                                </a>
												<a href="resources/#stackdelete" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stackdelete">
													<i class="fa fa-trash-o" ></i>
													Request Delete
                                                </a>
											</td>
                                        </tr>
                                        <tr>
											<td>20143242</td>
                                            <td>Wilcon</td>
                                            <td>2017-10-15</td>
                                            <td>2018-01-30</td>
											<td>50,000.00</td>
                                            <td> <span class="label label-sm label-success">Paid</span></td>
                                            <td>
												<a href="resources/#full-width" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#full-width">
													<i class="fa fa-eye" ></i>
													View
                                                </a>
												<a href="resources/#stack1" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stack1">
													<i class="fa fa-edit" ></i>
													Edit
                                                </a>
													<a href="resources/#stackdelete" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stackdelete">
													<i class="fa fa-trash-o" ></i>
													Request Delete
                                                </a>
											</td>
                                        </tr>
                                        
									</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
				<!-- MODAL PARA SA ARE YOU SURE CHENES!-->
				                <div class="modal fade in" id="full-width-notif" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Full Width</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                Are you sure all the data are correct?
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Proceed</button>
                            </div>
                        </div>
                    </div>
                </div>
				<!-- END OF MODAL PARA SA ARE YOU SURE CHENES!-->
                <!-- Third Basic Table Ends Here-->
				 <div class="modal fade in" id="full-width" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">20143242</h4>
                            </div>
                            
						 <div class="panel-body">
                                <div class="table-scrollable">
                                    <table id="user" class="table table-bordered table-striped" style="clear:both">
                                        <tbody>
                                            <tr>
                                                <td>Company Name</td>
                                                <td>Wilcon Hardware</td>
                                            </tr>
                                            <tr>
                                                <td>Claimant Name</td>
                                                <td>Song Joong Ki</td>
                                            </tr>
                                            <tr>
                                                <td>Responsibility Center</td>
                                                <td>Logistics</td>
                                            </tr>
                                            <tr>
                                                <td>Voucher Date</td>
                                                <td>2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Due Date</td>
                                                <td>2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Amount</td>
                                                <td>20,000.00</td>
                                            </tr>
                                            <tr>
                                                <td>Status</td>
                                                <td>Paid</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
							<div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
				   <div class="modal fade bs-example-modal-sm in" id="stack1" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">20143242</h4>
                            </div>
                           <div class="panel-body">
                                                <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Company Name</label>
                                                                <input type="text" class="form-control ">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Claimant Name</label>
                                                                <input type="text" class="form-control">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Responsibility Center</label>
                                                                <select  class="form-control select2">
																<option value="">AAAACK</option>
																</select>
														</div>
														<div class="form-group col-md-12">
														   <label>Voucher Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
														</div>
														   
													
                                                           <form class="form-horizontal">
														   
														<div class="form-group col-md-12">
														   <label>Due Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
													</div>
													
                                                        </form>
                                                    </div>
													
                                                    <div class="col-md-6">
                                                           <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Account Type</label>
                                                                <select  class="form-control select2">
																<option value="">Taxes and Licenses</option>
																<option value="">Utilities Expense</option>
																<option value="">Miscellaneous Expense</option>
																<option value="">Repair & Maintenance</option>
																</select>
														</div>
													<div class="form-group col-md-12">
                                                                <label for="">Particulars</label>
                                                                <textarea id="textarea" rows="4" class="form-control"style="resize:none" maxlength="1000" placeholder="Write something here..."></textarea>
													</div>
													<div class="form-group col-md-12">
                                                                <label for="">Status</label>
                                                                <select  class="form-control select2">
																<option value="">Unpaid</option>
																<option value="">Paid</option>
																</select>
														</div>
													</form>
                                                </div>
							
                                            </div>
                                        </div>
                        <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Save Changes</button>
                            </div>
                        </div>
                    </div>
                </div><!--- stack1 model -->
 <!--aaack-->
                <!-- stack2 modal-->
            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
	
			    <div class="modal fade bs-example-modal-sm in" id="stackdelete" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Request Delete: 2014ilovebea<3</h4>
                            </div>
                           <div class="panel-body">
						   
                                              <h4>Send request for deletion?</h4>
											
                                                
											
													
                                
                                                <div class="row">
												
                                                     
                                                           <form class="form-horizontal">
													<div class="form-group col-md-12">
                                                                <label for="">Reason for deletion</label>
                                                                <textarea id="textarea" rows="4" class="form-control"style="resize:none" maxlength="1000" placeholder="Write something here..."></textarea>
													</div>
													</form>
                           
							
                                            </div>
                                
                        <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Save Changes</button>
                            </div>
                        </div>
                    </div>
                </div><!--- stack1 model -->
 <!--aaack-->
                <!-- stack2 modal-->
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
    <!-- begining of page level js -->
    <script type="text/javascript" src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
	   <!--datetime picker-->
    <script type="text/javascript" src="resources/vendors/datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="resources/vendors/datetimepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	 <!--time picker-->
    <script src="resources/vendors/timepicker/js/bootstrap-timepicker.min.js"></script>
</body>
</html>
