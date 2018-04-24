<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
	<meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->
    
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
    
    <!-- added -->
    <link href="resources/css/Necessary.css" rel="stylesheet" type="text/css" />
    <!-- /added -->

</head>
   
<body class="skin-josh">
	<header class="header">
	
		<!-- Logo -->
		<a href="#" class="logo">
			<img src="resources/img/logo/logo-goldwhite.png" alt="Logo">
		</a>
		<!-- /Logo -->
		
		<!-- Top Bar -->
		<nav class="navbar navbar-static-top" role="navigation" >
		
			<!-- Sidebar Icon -->
			<div>
				<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
					<div class="responsive_nav"></div>
				</a>
			</div>
			<!-- /Sidebar Icon -->
			
			<div class="navbar-right">
				<ul class="nav navbar-nav">
				
				<!-- Messages -->
				<li class="dropdown messages-menu">
					<a href=" " class="dropdown-toggle" data-toggle="dropdown">
						<i class="livicon" data-name="message-flag" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
							<!-- <span class="label label-success">No. of Messages</span> -->
					</a>
					
					<ul class="dropdown-menu dropdown-messages pull-right">
						<li class="dropdown-title">Messages</li>
							<li class="read message">
								<a href="javascript:;" class="read message">
									<i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Unread">
										<span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
									</i>
									<img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
										<div class="message-body">
											<strong>Administrator</strong>
											<br>Can you?<br>
											<small>1 hour ago</small>
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
					<a href=" " class="dropdown-toggle" data-toggle="dropdown">
						<i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
                			<!-- <span class="label label-warning">No. of Notifications</span> -->
                	</a>
                	
                	<ul class="notifications dropdown-menu">
                		<li class="dropdown-title">Notifications</li>
                			<li>
                				<ul class="menu">
                					<li>
                						<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                							<a href="#">Capstone Project - System</a>
                								<small class="pull-right">
                									<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                									Just Now
                								</small>
                					</li>
                					<li>
                						<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                							<a href="#">Capstone Project - Docu</a>
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
                	<a href=" " class="dropdown-toggle" data-toggle="dropdown">
                		<img src="resources/img/vitas.png" width="35" class="img-responsive img-circle pull-left" height="35" alt="V">
                			<div class="riot">
                				<div>Vitaliy
                					<span>
                						<i class="caret"></i>
                					</span>
                				</div>
                			</div>
                	</a>
                	
                	<ul class="dropdown-menu">
                		<li class="user-header bg-light-blue">
                			<img src="resources/img/vitas.png" class="img-responsive img-circle" alt="V">
                				<p class="topprofiletext">System Admin</p>
                		</li>
                		<li>
                			<a href="#">
                				<i class="livicon" data-name="user" data-s="18"></i>
                				Profile
                			</a>
                		</li>
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
                <!-- /User Information -->
                </ul>
            </div>
		</nav>
	</header>
	
	<!-- Sidebar -->
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<aside class="left-side sidebar-offcanvas offcanvas-left">
			<section class="sidebar">
				<div class="page-sidebar sidebar-nav">
					<div class="clearfix"></div>
					&nbsp;
					<center>
						<img src="resources/img/vitas.png" class="img-responsive img-circle" width="70px" height="70px" alt="V">
							<h5 class="topprofiletext" style="color:white; padding-left:15px;">Vitaliy Grachov</h5>
								<span class="topprofiletext" style="color:white; font-size:11px; padding-left:15px;">System Admin</span>
					</center>
					
					&nbsp;
					<h6 style="color:white">&nbsp;&nbsp;General</h6>
					
					<ul id="menu" class="page-sidebar-menu">
						<li>
							<a href=" ">
								<i class="livicon" data-name="gears" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
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
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;Centers</span>
											</a>
										</li>
										<li>
											<a href="admin_funds">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Fund Clusters</span>
											</a>
										</li>
									</ul>
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
						
						<!-- Human Resource -->
						<li>
							<a href="#">
								<i class="livicon" data-name="users" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
									<span class="title">Human Resource</span>
									<span class="fa arrow"></span>
							</a>
							<ul class="sub-menu">
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Core HR</span>
									</a>
									<ul class="sub-menu">
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
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Time and Attendance</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Time and Attendance</span>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Leave Management</span>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Shift and Scheduling</span>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Claims and Reimbursements</span>
											</a>
										</li>
										<li>
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
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Payroll</span>
									</a>
									<ul class="sub-menu">
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
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Talent Management</span>
									</a>
									<ul class="sub-menu">
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
											<a href="#">
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
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Recruitment</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Recruitment</span>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Applicant Management</span>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">New Hire on Board</span>
											</a>
										</li><li>
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
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Planning and Analytics</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="#">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Succession Planning</span>
											</a>
										</li>
										<li>
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
						<!-- /Human Resource -->
						
						<!-- Logistics -->
						<li>
							<a href="#">
								<i class="livicon" data-name="truck" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
									<span class="title">Logistics</span>
									<span class="fa arrow"></span>
							</a>
							<ul class="sub-menu">
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Procurement</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="../wms/purchase-request">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Purchase Request Form</span>
											</a>
										</li>
										<li>
											<a href="../wms/P-R-Approve">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Approved Purchase Request</span>
											</a>
										</li>
										<li>
											<a href="../wms/bidding">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Bidding</span>
											</a>
										</li>
										<li>
											<a href="../wms/bids">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Bids</span>
											</a>
										</li>
										<li>
											<a href="../wms/notice-of-award">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Notice of Awards</span>
											</a>
										</li>
										<li>
											<a href="../wms/purchase-order">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Purchase Order Form</span>
											</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="sub-menu">
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Warehouse Management</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="../wms/warehouse-list">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Warehouse Items</span>
											</a>
										</li>
										<li>
											<a href="../wms/transaction-receive">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Item Delivery</span>
											</a>
										</li>
										<li>
											<a href="../wms/transaction-inspect">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Item Inspection</span>
											</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="sub-menu">
								<li>
									<a href="#">
										<i class="fa fa-angle-double-right"></i>
											<span class="title">Asset Management</span>
									</a>
									<ul class="sub-menu">
										<li>
											<a href="../wms/adding-asset">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Add Asset</span>
											</a>
										</li>
										<li>
											<a href="../wms/assets-trp">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Assets</span>
											</a>
										</li>
										<li>
											<a href="../wms/assign-asset">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Request Asset</span>
											</a>
										</li>
										<li>
											<a href="../wms/receive-asset">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Request for Inspection</span>
											</a>
										</li>
										<li>
											<a href="../wms/for-inspections">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">For Inspection</span>
											</a>
										</li>
										<li>
											<a href="transfer-asset">
												<i class="fa fa-angle-double-right"></i>
													<span class="title">Transfer Asset</span>
                                            </a>
                                        </li>
                                        <li>
                                        	<a href="repair-asset">
                                        		<i class="fa fa-angle-double-right"></i>
                                        			<span class="title">Repair Asset</span>
                                        	</a>
                                       	</li>
                                       	<li>
                                       		<a href="pullout-asset">
                                       			<i class="fa fa-angle-double-right"></i>
                                       				<span class="title">Pull Out Asset</span>
                                       		</a>
                                       	</li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="sub-menu">
                            	<li>
                            		<a href="#">
                            			<i class="fa fa-angle-double-right"></i>
                            				<span class="title">Queries</span>
                            		</a>
                            		<ul class="sub-menu">
                            			<li>
                            				<a href="../wms/list-of-purchase-request">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Purchase Request</span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="../wms/List-of-Biddings">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Bidding</span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="../wms/list-of-purchase-order">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Purchase Order </span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="../wms/List-of-Supplier">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Supplier</span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="../wms/assetinventory">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">Asset Inventory</span>
                            				</a>
                            			</li>
                            		</ul>
                            	</li>
                            </ul>
                            <ul class="sub-menu">
                            	<li>
                            		<a href="#">
                            			<i class="fa fa-angle-double-right"></i>
                            				<span class="title">Reports</span>
                            		</a>
                            		<ul class="sub-menu">
                            			<li>
                            				<a href="../wms/pr-report">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Purchase Request</span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="../wms/report">
                            					<i class="fa fa-angle-double-right"></i>
                            						<span class="title">List of Purchase Order</span>
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
                            						<span class="title">Slow-Moving Items</span>
                            				</a>
                            			</li>
                            			<li>
                            				<a href="#">
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
                        <!-- /Logistics -->
                        
                        <!-- Financials --> 
                        <li>
                        	<a href="#">
                        		<i class="livicon" data-name="money" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                        			<span class="title">Financials</span>
                        			<span class="fa arrow"></span>
                        	</a>
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="financials_jevlist">
                        				<i class="fa fa-angle-double-right"></i>
                        					<span class="title">Journal Entry Voucher</span>
                        			</a>
                        		</li>
                        	</ul>
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="#">
                        				<i class="fa fa-angle-double-right"></i>
                        					<span class="title">Collection</span>
                        			</a>
                        			<ul class="sub-menu">
		                        		<li>
		                        			<a href="ar_list">
		                        				<i class="fa fa-angle-double-right"></i>
		                        					<span class="title">Accounts Receivable 
		                        					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                        					&nbsp;&nbsp;&nbsp;&nbsp; - Collection</span>
		                        			</a>
		                        		</li>
		                        		<li>
		                        			<a href="#">
		                        				<i class="fa fa-angle-double-right"></i>
		                        					<span class="title">Cashiering</span>
		                        			</a>
		                        		</li>
		                        	</ul>
                        		</li>
                        	</ul>
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="#">
                        				<i class="fa fa-angle-double-right"></i>
                        					<span class="title">Disbursement</span>
                        			</a>
                        			<ul class="sub-menu">
		                        		<li>
		                        			<a href="ap_list">
		                        				<i class="fa fa-angle-double-right"></i>
		                        					<span class="title">Accounts Payable 
		                        					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                        					 - Disbursement</span>
		                        			</a>
		                        		</li>
		                        	</ul>	
                        		</li>
                        	</ul>
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="#">
                        				<i class="fa fa-angle-double-right"></i>
                        					<span class="title">Queries</span>
                        			</a>
                        			<ul class="sub-menu">
		                        		<li>
		                        			<a href="financials_collection_list">
		                        				<i class="fa fa-angle-double-right"></i>
		                        					<span class="title">Collection List</span>
		                        			</a>
		                        		</li>
		                        		<li>
		                        			<a href="financials_disbursement_list">
		                        				<i class="fa fa-angle-double-right"></i>
		                        					<span class="title">Disbursement List</span>
		                        			</a>
		                        		</li>
		                        	</ul>
                        		</li>
                        	</ul>
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="#">
                        				<i class="fa fa-angle-double-right"></i>
                        					<span class="title">Reports</span>
                        			</a>
                        			<ul class="sub-menu">
                        				<li>
                        					<a href="#">
                        						<i class="fa fa-angle-double-right"></i>
                        							<span class="title">Journal and Ledger</span>
                        					</a>
                        					<ul class="sub-menu">
		                        				<li>
		                        					<a href="#">
		                        						<i class="fa fa-angle-double-right"></i>
		                        							<span class="title">General Journal</span>
		                        					</a>
		                        				</li>
		                        				<li>
		                        					<a href="financials_general_ledger">
		                        						<i class="fa fa-angle-double-right"></i>
		                        							<span class="title">General Ledger</span>
		                        					</a>
		                        				</li>
		                        			</ul>
                        				</li>
                        				<li>
                        					<a href="#">
                        						<i class="fa fa-angle-double-right"></i>
                        							<span class="title">Trial Balance</span>
                        					</a>
                        					<ul class = "sub-menu">
                        						<li>
                        							<a href="#">
                        								<i class="fa fa-angle-double-right"></i>
                        									<span class="title">Unadjusted Trial Balance</span>
                        							</a>
                        						</li>
                        						<li>
                        							<a href="#">
                        								<i class="fa fa-angle-double-right"></i>
                        									<span class="title">Pre-Closing Trial Balance</span>
                        							</a>
                        						</li>
                        						<li>
                        							<a href="#">
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
                        <!-- /Financials -->
           			</ul>
				</div>
			</section>
		</aside>
		
		
	<!-- /Sidebar -->