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
    
    <!-- Added Scripts -->
	<!--page level css -->
    <!-- daterange picker -->
    <link href="resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!--select css-->
    <link href="resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="resources/vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="resources/css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
    
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="resources/2css/pages/tables.css" rel="stylesheet" type="text/css">
    <!--end of page level css-->
    
	<!--page level css -->
	<link rel="stylesheet" href="resources/css/pages/tab.css" />
    <!--end of page level css-->
    <!-- /Added Scripts -->
   
</head>

<body class="skin-josh">
	<header class="header">
		
		<!-- Logo -->
		<a href="financials_dashboard" class="logo">
			<!-- <img src="resources/img/logo.png" alt="Logo"> -->
            FINANCIALS
        </a>       
        <!-- /Logo -->
        
        <!-- Navigation Icon -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
 			<div>
 				<a href="resources/#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">	
 					<div class="responsive_nav"></div>
 				</a>	
 			</div>
 		<!-- /Navigation Icon -->	
 			
 			<div class="navbar-right">
 				<ul class="nav navbar-nav">
 				
 					<!-- Messages -->
 					<li class="dropdown messages-menu">
 						<a href="resources/#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
 							<!--span class="label label-success"></span-->
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
 									<a href="resources/#">View all</a>
                            	</li>
                  		</ul>
                   </li>
                   <!-- /Messages -->
                   
                   <!-- Notifications -->
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
                   							<a href="resources/#">PM deliverables</a>
                   							<small class="pull-right">
                   								<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                   								Just Now
                   							</small>
                                    </li>
                                    <li>
                   						<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                   							<a href="resources/#">BI/InfoSec deliverables</a>
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
                   <!-- /Notifications -->
                   
                   <!-- User Information -->
                   <li class="dropdown user user-menu">
                   		<a href="resources/#" class="dropdown-toggle" data-toggle="dropdown">
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
                            <!-- li role="presentation"></li -->
                            <li>
                            	<a href="resources/#">
                            		<i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                            <div class="pull-left">
                            	<a href="resources/#">
                            		<i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                 </a>
                            </div>
                            <div class="pull-right">
                            	<a href="resources/#">
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
  				<div class="page-sidebar sidebar-nav">
  					<div class="clearfix"></div>
  					
  					<!-- BEGIN SIDEBAR MENU -->
  					
  					<ul id="menu" class="page-sidebar-menu">
  					
  					<!-- Dashboard -->
  					<li>
  						<a href="financials_dashboard">
  							<!--i class="livicon" data-name="barchart" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i-->
  								<span class="title">Dashboard</span>
                        </a>
                    </li>
                        
                    <!-- System Setup -->
                    <li>
                    	<a href="resources/#">
                    		<!--i class="livicon" data-name="gear" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i-->
                    			<span class="title">System Setup</span>
                    			<span class="fa arrow"></span>
                        </a>
                        
                        <!-- System Setup sub-menu -->
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
                        			Responsibility Center
                                </a>
                             </li>
                             
                             <li>
                        		<a href="resources/#">
                        			<i class="fa fa-angle-double-right"></i>
                        			Transaction Type
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
                        			Template 
                                </a>
                             </li>
                        </ul>        
                    </li>
                    
                    <!-- Transaction-->
                    <li class="active">
                    	<a href="resources/#">
                    		<!--i class="livicon" data-name="laptop" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i-->
                    			<span class="title">Transaction</span>
                    			<span class="fa arrow"></span>
                    	</a>
                    	
                    	<!-- Transaction sub-menu -->
                    	<ul class="sub-menu">
                    		<li class="active">
                    			<a href="resources/#">
                    				<i class="livicon" data-name="notebook" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                                    Journal Entry Voucher
                                </a>	
                                	<ul class="sub-menu">
                                		<li class="active">
                                			<a href="financials_createjev">
                                				<i class="fa fa-angle-double-right"></i>
                                     			Create JEV
                                    		</a>
                                		</li>
                                		<li>
                                			<a href="financials_reviewjev">
                                				<i class="fa fa-angle-double-right"></i>
                                     			Review JEV
                                    		</a>
                                		</li>
                                	</ul>
                            </li>
                                
                            <!-- Accounts Receivable -->
                            <li>
                            	<a href="resources/#">
                            		<i class="livicon" data-name="sign-in" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            			<span class="title">Accounts Receivable</span>
                          		</a>
                        	</li>
                        	
                        	<!-- Accounts Payable -->
                        	<li>
                        		<a href="resources/#">
                        			<i class="livicon" data-name="sign-out" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                        			<span class="title">Accounts Payable</span>
                           		</a>
                      		</li>
                                
                            <!-- Collections -->
                            <li>
                            	<a href="resources/#">
                            		<i class="livicon" data-name="piggybank" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                                    <span class="title">Collections</span>       
                                 </a>
                            </li>
                            
                            <!-- Disbursement -->
                            <li>
                            	<a href="resources/#">
                            		<i class="livicon" data-name="money" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                                    <span class="title">Disbursement</span>     
                                 </a>
                            </li>
                        </ul>        
					</li>
				
					<!-- Queries -->	
					<li>
						<a href="resources/#">
							<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
								<span class="title">Queries</span>
								<span class="fa arrow"></span>
                    	</a>                        
                    
                    	<!-- Queries sub-menu -->
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
                                 	Responsibility Center
                            	</a>
                        	</li>
                        
                        	<li>
                    			<a href="resources/#">
                    				<i class="fa fa-angle-double-right"></i>
                                 	Fund
                            	</a>
                        	</li>
                    	</ul>
                	</li>       
                                
                	<!-- Reports -->                
                	<li>
                		<a href="resources/#">
                			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
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
                             
                             	<ul class="sub-menu">
                             		<li>
                             			<a href="resources/#">
                             				<i class="fa fa-angle-double-right"></i>
                                			Unadjusted Trial Balance	
                             			</a>
                        			</li>
                        		
                        			<li>
                             			<a href="resources/#">
                             				<i class="fa fa-angle-double-right"></i>
                                			Pre-Closing Trial Balance	
                             			</a>
                        			</li>
                        		
                        			<li>
                             			<a href="resources/#">
                             				<i class="fa fa-angle-double-right"></i>
                                			Post-Closing Trial Balance	
                             			</a>
                        			</li>
                        		</ul>         
                        	</li>
                        
                        	<li>
                    			<a href="resources/#">
                    				<i class="fa fa-angle-double-right"></i>
                                 	Statement of Income and Expense
                             	</a>
                        	</li>
                        
                        	<li>
                    			<a href="resources/#">
                    				<i class="fa fa-angle-double-right"></i>
                                	Statement of Changes in Equity
                             	</a>
                        	</li>
                        
                        	<li>
                    			<a href="resources/#">
                    				<i class="fa fa-angle-double-right"></i>
                                	Statement of Cash Flows
                             	</a>
                        	</li>
                    	</ul>
                	</li>
                
                	<!-- Manage Users -->
                	<li>
                		<a href="resources/#">
                			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
                			<span class="title">Manage Users</span>
                    	</a>
                	</li>
                
                	<!-- Settings -->
                	<li>
                		<a href="resources/#">
                			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
                			<span class="title">Settings</span>
                			<span class="fa arrow"></span>
                    	</a>
                    
                    	<ul class="sub-menu">
                    		<li>
                    			<a href="resources/#">
                    				<i class="fa fa-angle-double-right"></i>
                                 	Institution Details
                             	</a>
                        	</li>
                    	</ul>
                	</li>
                
                	<!-- Manage Users -->
                	<li>
                		<a href="resources/#">
                			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
                			<span class="title">Help</span>
                    	</a>
                	</li>
         			</ul>
         			<!-- END SIDEBAR MENU -->
      			</div>
   			</section>
		</aside>
		
        <aside class="right-side">
        	<!-- Main Content -->
        	<section class="content-header">
        		<h1>Create Journal Entry Voucher</h1>
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
			<!-- JEV start -->
				<div class="col-md-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Journal Entry Voucher</h3>
                         </div>
                         
                         <div class="panel-body">
                         	<div class="bs-example">
                         		<ul class="nav nav-tabs">
                         			<li>
                         				<a data-toggle="tab">Part I</a>
                                    </li>
                                    <li>
                         				<a data-toggle="tab">Part II</a>
                                    </li>
                                    <li>
                         				<a data-toggle="tab">Part III</a>
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
                                        <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                        </div>
                                 </div>
                         
                         		 <!-- Fund -->
                         		 <div class="col-md-12 form-group">
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
                         		 
                         		 <!-- Particulars -->								
                         		 <div class="col-md-12 form-group">
                         		 	<label>Particulars</label>
                         		 	<textarea id="textarea" class="form-control" style="resize:none" maxlength="1000" rows="3" placeholder="Write something here..."></textarea>
                                 </div>         
                                 
                                 <!-- Buttons -->
                                 <div class="form-group pull-right">
                                 	<a data-toggle="tab" href="#page2">
                                 		<button type="submit" class="btn btn-responsive btn-primary">Next</button>	
                                 	</a>
										<button type="submit" class="btn btn-responsive btn-default">Clear</button>	
								 </div>
 
                                 </div>
                                 
                                 <!-- Page II -->
                                 <div class="tab-pane fade" id="page2">
                                 
                                 <!-- Table of Accounts -->
                                 <div class="row">
                                 	<div class="col-md-12">
                                 		<div class="panel panel-primary filterable">
                                 			<div class="panel-heading clearfix">
                                 				<h2 class="panel-title pull-left">
                                 				Table of Accounts
                                 				</h2>
                                			<div class="pull-right">
                                    			<button type="button" class="btn btn-success btn-sm" id="addButton">Add</button>
                                    			<button type="button" class="btn btn-danger btn-sm" id="delButton">Delete</button>
                             				</div>
                             				</div>
                             			
                             			<div class="panel-body">
                             				<table class="table" id="table3">
                             					<thead>
                             						<tr>
                             							<th class="col-md-2">Responsibility <br> Center</th>
                             							<th class="col-md-3">Accounts</th>
                             							<th class="col-md-3">Description</th>
                             							<th class="col-md-2">Debit</th>
                             							<th class="col-md-2">Credit</th>
                             						</tr>
                             					</thead>
                             					
                             					<tbody>
                             						<tr>
                             							<td>
                             								<select id="e1" class="form-control select2">
                             										<option value="1">IT Department</option>
                             										<option value="2">HR Department</option>
                             										<option value="3">Faculty Department</option>
                             								</select>
                             							</td>
                             							
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
                             								<input type="text" class="form-control" maxlength="100"/>
                             							</td>
                             							
                             							<td>
                             								<input type="number" class="form-control" />
                             							</td>
                             							
                             							<td>
                             								<input type="number" class="form-control" />
                             							</td>
                             						</tr>
                             						
                             						<tr>
                             							<td>
                             								<!--select id="e1" class="form-control select2">
                             										<option value="1">IT Department</option>
                             										<option value="2">HR Department</option>
                             										<option value="3">Faculty Department</option>
                             								</select-->
                             							</td>
                             							
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
                             								<input type="text" class="form-control" maxlength="100"/>
                             							</td>
                             							
                             							<td>
                             								<input type="number" class="form-control" />
                             							</td>
                             							
                             							<td>
                             								<input type="number" class="form-control" />
                             							</td>
                             						</tr>		
                             						
												</tbody>
											</table>
										</div>
										</div>
									</div>
								 </div>
								 
								 <!-- Table of Supporting Documents -->
                                 <div class="row"> 	
                                 	<div class="col-md-12">
                                 		<div class="panel panel-primary filterable">
                                 			<div class="panel-heading clearfix">
                                 				<h2 class="panel-title pull-left">
                                 				Table of Supporting Documents
                                 				</h2>
                                			<div class="pull-right">
                                    			<button type="button" class="btn btn-success btn-sm" id="addButton">Add</button>
                                    			<button type="button" class="btn btn-danger btn-sm" id="delButton">Delete</button>
                             				</div>
                             				</div>
                             			
                             			<div class="panel-body">
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
                             								<option value="1">Voucher</option>
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
								</div>
								
								<!-- Buttons -->
                                <div class="form-group pull-right">
                                	<a data-toggle="tab" href="#page3">
                                 		<button type="submit" class="btn btn-responsive btn-primary">Next</button>	
                                 	</a>
										<button type="submit" class="btn btn-responsive btn-default">Clear</button>	
								</div>
								
								</div>
								
								<!-- Page III -->
								<div class="tab-pane fade" id="page3">
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
                         			<textarea id="textarea" class="form-control" style="resize:none" maxlength="300" rows="3" placeholder="Write something here..."></textarea>
                                </div>
                                
                                <!-- Buttons -->
                                <div class="form-group pull-right">
									<button type="submit" class="btn btn-responsive btn-primary">Submit</button>	
									<button type="submit" class="btn btn-responsive btn-default">Cancel</button>	
								</div>
                                </div>

                                </div> 
                            </div>

                    </div>
                  </div>
        
			</section>		
		</aside>		
	</div>			
	
	
	<!-- End Scripts -->
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
    <!-- beginning of page level js -->
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
    
    <!-- Added Scripts -->
	<!-- beginning of page level js -->
    <!-- InputMask -->
    <script src="resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <script src="resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <script src="resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <script src="resources/vendors/card/jquery.card.js" type="text/javascript"></script>
    <script src="resources/js/pages/formelements.js" type="text/javascript"></script>
    <!-- end of page level js -->
    
    <!-- beginning of page level js -->
    <script type="text/javascript" src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
    <!-- /Added Scripts -->
    
</body>
</html>