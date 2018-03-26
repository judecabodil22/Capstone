<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <meta charset="UTF-8">
    <title>Financials System Project</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->

    <!-- Added Scripts -->
    
    <!-- form elements scripts -->
    <!-- daterange picker -->
    <link href="resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!--select css-->
    <link href="resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="resources/vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="resources/css/pages/formelements.css" rel="stylesheet" />
    <!-- form elements scripts -->
    
    <!-- responsive tables scripts -->
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!-- responsive tables scripts -->
    
    <!-- advanced modal scripts  -->
    <link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
    <!-- advanced modal scripts  -->

    <!-- /Added Scripts -->
</head>
    
<body class="skin-josh">
    <header class="header">
        
        <!-- Logo -->
        <a href="#" class="logo">
            <img src="#" height="38px" width="150px">
        </a>
        
        <!-- Navigation Bar -->
        <nav class="navbar navbar-static-top" role="navigation">
            
            <!-- Sidebar Button -->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            
            <!-- Search -->
            <input type="text" name="search" style="margin-left: 550px; width: 300px; height: 30px; margin-top: 10px; text-align: right;" placeholder="Search">
                <button style="margin-top: 7px; background-color: transparent;">
                    <span class="livicon" data-name="search"></span>
                </button>
            
            <!-- User -->
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    
                    <!-- User Account -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="#" width="35" class="img-circle img-responsive pull-left" height="35" alt="F">
                                <div class="riot">
                                    <div>User
                                        <span>
                                            <i class="caret"></i>
                                        </span>
                                    </div>
                                </div>
                        </a>
                        
                        <!-- User Account sub-menu-->
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img src="#" class="img-responsive img-circle" alt="F">
                                    <p class="topprofiletext">User</p>
                            </li>
                            
                            <!-- Profile -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    Profile
                                </a>
                            </li>
                            
                            <!--?-->
                            <li role="presentation"></li>
                            
                            <!-- Account Settings -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            
                            <!-- Footer -->
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
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas offcanvas-left">
                <section class="sidebar">
                    <div class="page-sidebar sidebar-nav">
                    <div class="clearfix">
                    </div>
                    &nbsp;
                    <center>
                    <img src="#" class="img-responsive img-circle" width="70px" height="70px" alt="User Image">
                    <h5 class="topprofiletext" style="color:white; padding-left:15px;">User</h5>
                    <p>
                    <span class="topprofiletext" style="color:white; font-size:11px; padding-left:15px;">User</span>
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
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Human Resource</span>
                                        </a>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Logistics</span>
                                        </a>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Financials</span>
                                        </a>
                                        </li>
                                        </ul>
                        </li>
                        
                            
                        <li>
                             <a href="#">
                                <i class="livicon"  data-name="settings" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">User Management</span>
                            </a>
                        </li>

                        
                        <li>
                             <a href="#">
                                <i class="livicon" data-name="wrench" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Settings</span>
                            </a>
                        </li>

                        <br>
                        <h6 style="color:white">&nbsp;&nbsp;Modules</h6>

                        <li>
                            <a href="#">
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
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Core Human Capital Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        
                                        </ul>

                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Time and Attendance</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Time and Attendance</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Leave Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="#l">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Shift and Scheduling</span>
                                            </a>
                                            </li>

                                            <li >
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Claims and Reimbursements</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Timesheet Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Payroll</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Payroll</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Compensation Planning and Administration</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Talent Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Competency Management</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Training Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Performance Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#l">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Social Recognition</span>
                                            </a>
                                            </li>
                                            
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Recruitment</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Recruitment</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="#l">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Applicant Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">New Hire on Board</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Planning and Analytics</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">HR Analytics</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                       
                        
                       <li>
                            <a href="#">
                                <i class="livicon" data-name="truck" data-size="18"  data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Logistics</span>
                                <span class="fa arrow"></span>
                            </a>
                             <ul class="sub-menu">
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Procurement</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Request Form</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Order Form</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Approved Purchase Request</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Request Form Quotation</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Bids</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Notice of Awards</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Warehouse Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Delivery</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Asset Management</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="#l">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Acquisition</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Maintenance Work Order</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disposal</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Retirement</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                    </li>                                       
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Reports</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Request</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Order</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Fast-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Slowing-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#l">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item History</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Acquisition Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Work Order Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disposal Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Retirement Summary</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                        
                        <li class="active">
                            <a href="#">
                                <i class="livicon" data-name="money" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Financials</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                               <ul class="sub-menu">   
                                    <li class="active">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Journal Entry Voucher</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li class="active">
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Create JEV</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Review JEV</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                                 <ul class="sub-menu">
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Collections</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Accounts Receivable</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Collection</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Disbursement</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Accounts Payable</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disbursement</span>
                                            </a>
                                            </li>
                                         </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="#">
                                        <a href="#">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                         
                                        <ul class="sub-menu">   
                                            <li class="#">
                                                <a href="#">
                                                    <i class="fa fa-angle-double-right"></i>
                                                        <span class="title">Journal Entry Voucher</span>
                                                </a>
                                            </li>
                                            <li class="#">
                                                <a href="#">
                                                    <i class="fa fa-angle-double-right"></i>
                                                        <span class="title">Accounts Receivable</span>
                                                </a>
                                            </li>
                                            <li class="#">
                                                <a href="#">
                                                    <i class="fa fa-angle-double-right"></i>
                                                        <span class="title">Accounts Payable</span>
                                                </a>
                                            </li>
                                            
                                        </ul>
                                        
                                    </li>
                                 </ul>
                                
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="#">
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
                                                <a href="">
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
                        </div></section></aside>
                       
                        
                        <aside class="right-side">
        
        	<!-- Main Content -->
        	<section class="content-header">
        		<h1>Create Journal Entry Voucher</h1>
        	</section>
        	
        	<section class="content">
        	
        		<!-- JEV Start -->
        		<div class="col-md-12">
        			<div class="panel panel-primary">
        			
        				<div class="panel-heading">
        					<h3 class="panel-title">Journal Entry Voucher</h3>
        				</div>
        				
        				<div class="panel-body">
        					<div class="bs-example">
        						<ul class="nav nav-pills">
        							<li class="active">
        								<a href="#page1" data-toggle="tab">Particulars</a>
        							</li>
        							<li>
        								<a href="#page2" data-toggle="tab">Accounting Entries</a>
        							</li>
        							<li>
        								<a href="#page3" data-toggle="tab">Supporting Documents</a>
        							</li>
        						</ul>
        					</div>
        					
        					<br>
        					
        					<div id="myTabContent" class="tab-content">
        					
        						<!-- Page I -->
                             	<div class="tab-pane fade active in" id="page1">
                             	
                             	<!-- Entry Date -->
                             	<div class="col-md-4 form-group">
                             		<label>Entry Date</label>
                             			<div class="input-group">
                             				<div class="input-group-addon">
                             					<i class="fa fa-calendar"></i>
                             				</div>
                             				<input type="text" class="form-control required" placeholder="mm/dd/yyyy" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                             			</div>
                             	</div>
                             	
                             	<!-- Fund -->
                             	<div class="col-md-12 form-group required">
                             		<label>Fund</label>
                             			<select id="e1" class="form-control select2">
                             				<optgroup label="Fund Sample">
                             					<option value="1">Fund Sample 1</option>
                             					<option value="2">Fund Sample 2</option>
                             					<option value="3">Fund Sample 3</option>
                             					<option value="4">Fund Sample 4</option>
                             					<option value="5">Fund Sample 5</option>
                             				</optgroup>
                             			</select>
                             	</div>
                             	
                             	<!-- Transaction Type -->
                             	<div class="col-md-12 form-group">
                             		<label>Transaction Type</label>
                             			<select id="e1" class="form-control select2">
                             				<option value="1">Collection</option>
                             				<option value="2">Disbursement</option>
                             			</select>
                             	</div>
                             	
                             	<!-- Transaction Template -->
                             	<div class="col-md-12 form-group">
                             		<label>Transaction Template</label>
                             			<select id="e1" class="form-control select2">
                             				<option value="1">Template 1</option>
                             				<option value="2">Template 2</option>
                             				<option value="3">Template 3</option>
                             				<option value="4">Template 4</option>
                             				<option value="5">Template 5</option>
                             			</select>
                             	</div>
                             	
                             	<!-- Responsibility Center -->
                             	<div class="col-md-12 form-group">
                             		<label>Responsibility Center</label>
                             			<select id="e1" class="form-control select2">
                             				<option value="1">IT Department</option>
		                             		<option value="2">HR Department</option>
		                   					<option value="3">Faculty</option>
		                   				</select>
                             	</div>
                             	
                             	<!-- Particulars -->								
                             	<div class="col-md-12 form-group required">
                             		<label>Particulars</label>
                             		<textarea id="textarea" class="form-control" style="resize:none" maxlength="1000" rows="3" placeholder="Write something here..."></textarea>
                             	</div>
                             	
                             	<!-- Buttons -->
                             	<div class="form-group pull-right">
                             		<button type="submit" class="btn btn-responsive btn-default disabled">Back</button>
                             		<a href="#page2" data-toggle="tab">
                             			<button type="submit" class="btn btn-responsive btn-primary">Next</button>
                             		</a>
                             	</div>
                             	
                             	</div>
                             	
                             	<!-- Page II -->
                             	<div class="tab-pane fade" id="page2">
                             	
                             	<div class="portlet box primary">
                             		
                             		<div class="portlet-title">
                             			<div class="caption" style="position:relative; top:0.25em">
                             				Table of Accounts
                             			</div>
                             			<div class="pull-right">
                             				<button type="button" class="btn btn-success btn-sm" id="addButton">
                             				Add
                             				<i class="fa fa-plus"></i>
                             				</button>
                             				<button type="button" class="btn btn-danger btn-sm" id="delButton">Remove</button>
                             			</div>
                             		</div>
                             		
                             		<div class="portlet-body">
                             		
                             			<div class="table-responsive">
                             				<table class="table table-striped table-bordered table-hover">
                             					<thead>
                             						<tr>
		                                                <th class="col-md-2">Accounts</th>
		                             					<th class="col-md-2">Description</th>
		                             					<th class="col-md-2">Name</th>
		                             					<th class="col-md-2">Debit</th>
		                             					<th class="col-md-2">Credit</th>	         
		                             				</tr>
		                             			</thead>
		                             			
		                             			<tbody>
		                             				<tr>
		                             					<td>
		                             						<select id="e1" class="form-control select2">
		                             							<optgroup label="Assets">
		                             								<option value="1">Cash</option>
                             										<option value="2">Accounts Receivable</option>
                             										<option value="3">Notes Receivable</option>
                             									</optgroup>
                             									<optgroup label="Liabilities">
                             										<option value="1">Accounts Payable</option>
                             										<option value="1">Notes Payable</option>
                           										</optgroup>
                           									</select>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="500"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="100"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           							</tr>
                           							
                           							<tr>
		                             					<td>
		                             						<select id="e1" class="form-control select2">
		                             							<optgroup label="Assets">
		                             								<option value="1">Cash</option>
                             										<option value="2">Accounts Receivable</option>
                             										<option value="3">Notes Receivable</option>
                             									</optgroup>
                             									<optgroup label="Liabilities">
                             										<option value="1">Accounts Payable</option>
                             										<option value="1">Notes Payable</option>
                           										</optgroup>
                           									</select>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="500"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="100"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           							</tr>
                           							
                           							<tr>
		                             					<td>
		                             						<select id="e1" class="form-control select2">
		                             							<optgroup label="Assets">
		                             								<option value="1">Cash</option>
                             										<option value="2">Accounts Receivable</option>
                             										<option value="3">Notes Receivable</option>
                             									</optgroup>
                             									<optgroup label="Liabilities">
                             										<option value="1">Accounts Payable</option>
                             										<option value="1">Notes Payable</option>
                           										</optgroup>
                           									</select>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="500"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="100"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           							</tr>
                           							
                           							<tr>
		                             					<td>
		                             						<select id="e1" class="form-control select2">
		                             							<optgroup label="Assets">
		                             								<option value="1">Cash</option>
                             										<option value="2">Accounts Receivable</option>
                             										<option value="3">Notes Receivable</option>
                             									</optgroup>
                             									<optgroup label="Liabilities">
                             										<option value="1">Accounts Payable</option>
                             										<option value="1">Notes Payable</option>
                           										</optgroup>
                           									</select>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="500"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="100"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           							</tr>
                           							
                           							<tr>
		                             					<td></td>
		                             					<td></td>
		                             					<td>
		                             						<div class="pull-right" style="position:relative; top:0.5em">
		                             							<strong>Total</strong>
		                             						</div>		
		                             					</td>	
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           								
                           								<td>
                           									<input type="text" class="form-control" maxlength="19"/>
                           								</td>
                           							</tr>
                           						</tbody>
                           					</table>
                           				</div>
                           			
	                           			<!-- Buttons -->
		                           		<div class="form-group pull-right">
		                           			<a href="#page1" data-toggle="tab">
		                           				<button type="submit" class="btn btn-responsive btn-default">Back</button>
		                           			</a>
		                           			<a href="#page3" data-toggle="tab">
		                           				<button type="submit" class="btn btn-responsive btn-primary">Next</button>
		                           			</a>
		                           		</div>
	                           		
                           		</div>
                           		</div>
                           		</div>
                           		
                           		<!-- Page III -->
                             	<div class="tab-pane fade" id="page3">
                             	
                             	<!-- Table of Supporting Documents -->
                             	<div class="row">
                             		<div class="col-md-12">
                             			<div class="portlet box primary">
                             			
                             				<div class="portlet-title">
		                             			<div class="caption" style="position:relative; top:0.25em">
		                             				Table of Supporting Documents
		                             			</div>
		                             			<div class="pull-right">
		                             				<button type="button" class="btn btn-success btn-sm" id="addButton">
		                             				Add
		                             				<i class="fa fa-plus"></i>
		                             				</button>
		                             				<button type="button" class="btn btn-danger btn-sm" id="delButton">Remove</button>
		                             			</div>
		                             		</div>
                             				
                             				<div class="portlet-body">
                             					<table class="table" id="table3">
                             						<thead>
                             							<tr>
                             								<th class="col-md-4">Description</th>
                             								<th class="col-md-4">Value</th>
                             								<th class="col-md-2">Date</th>
                             							</tr>
                             						</thead>
                             						
                             						<tbody>
                             							<tr>
                             								<td>
                             									<select id="e1" class="form-control select2">
                             										<option value="1">Receipt</option>
                             										<option value="2">Voucher</option>
                             									</select>
                             								</td>
                             								
                             								<td>
                             									<input type="text" class="form-control"/>
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
                             		
                             		<!-- Prepared by -->
                             		<div class="col-md-6 form-group">
                             			<div>
                             				<label for="disabledSelect">Prepared by</label>
                             					<input class="form-control" id="disabledInput" type="text" placeholder="User Accountant" disabled>
                             			</div>
                             		</div>
								
									<!-- Remarks -->
									<div class="col-md-12 form-group">
										<label>Remarks</label>
											<textarea id="textarea" class="form-control" style="resize:none" maxlength="1000" rows="3" placeholder="Write something here..."></textarea>
									</div>
								
									<!-- Buttons -->
									<div class="form-group pull-right">
										<a href="#page1" data-toggle="tab">
		                           			<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
		                           		</a>
										<a class="btn btn-responsive btn-default" data-toggle="modal" data-href="#pg3cancel" href="#pg3cancel">Cancel</a>
									</div>
									
									<!-- Modals -->
									<!-- Cancel Modal pg3 -->
									<div class="modal fade in" id="pg3cancel" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
										<div class="modal-dialog modal-md">
											<div class="modal-content">
												<div class="modal-body">
													<p>Do you want to cancel Create JEV?</p>
												</div>
												<div class="modal-footer">
													<a>
													<button type="button" data-dismiss="modal" class="btn btn-default" href="#page1" data-toggle="tab">Yes</button>
													</a>
													<button type="button" data-dismiss="modal" class="btn btn-default">No</button>
												</div>
											</div>
										</div>
									</div>
										
	                                </div>
	                          </div>
	                          
	                        </div>
							</div>
						</div>
	                </div>

			</section>                  
		</aside>
                        
                       
                        <!--Requests Menu-->
                        
                       
                     <!-- END SIDEBAR MENU -->
                    
                </div>



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
    <!-- Added Scripts -->
    
    <!-- form elements scripts -->
    <script src="resources/js/pages/formelements.js" type="text/javascript"></script>
    <!-- input mask -->
    <script src="resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date range picker -->
    <script src="resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- select 2 -->
    <script src="resources/vendors/select2/select2.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <!-- autogrow -->
    <script src="resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <!-- maxlength -->
    <script src="resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <!-- card -->
    <script src="resources/vendors/card/jquery.card.js" type="text/javascript"></script>
    <!-- /form elements scripts -->
    
    <!-- advanced modal scripts -->
    <script src="resources/vendors/modal/js/classie.js"></script>
    <script src="resources/vendors/modal/js/modalEffects.js"></script>
    <!-- /advanced modal scripts -->

    <!-- /Added Scripts -->
</body>
</html>