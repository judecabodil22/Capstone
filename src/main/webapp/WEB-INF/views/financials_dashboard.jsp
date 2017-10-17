<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<%@ include file = "commonDesign.jsp" %>

<title>Financials System Project</title>

<aside class="right-side">
	<!-- Main Content -->
	<section class="content-header">
		<h1>Dashboard</h1>
	</section>
		
<<<<<<< HEAD
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
  					<li class="active">
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
                    <li>
                    	<a href="resources/#">
                    		<!--i class="livicon" data-name="laptop" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i-->
                    			<span class="title">Transaction</span>
                    			<span class="fa arrow"></span>
                    	</a>
                    	
                    	<!-- Transaction sub-menu -->
                    	<ul class="sub-menu">
                    		<li>
                    			<a href="resources/#">
                    				<i class="livicon" data-name="notebook" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                                    Journal Entry Voucher
                                </a>	
                                	<ul class="sub-menu">
                                		<li>
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
                            	<a href="voucher_transaction">
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
=======
	<section class="content">
		<div class="row">
>>>>>>> fd8c1e1fc9b746518d1b18cff6babcdca12afc92
		
			<!-- shortcut buttons -->
			<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
				<a href="#" type="button" class="btn btn-lg btn-success">
					<strong class="livicon" data-name="piggybank" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
						<label style="position:relative; top:2em">COLLECTIONS</label>
				</a>
			</div>
			
			<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
				<a href="#" type="button" class="btn btn-lg btn-danger">
					<strong class="livicon" data-name="money" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
						<label style="position:relative; top:2em">DISBURSEMENT</label>
				</a>
			</div>
			
			<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
				<a href="financials_createjev" type="button" class="btn btn-lg btn-primary">
					<strong class="livicon" data-name="notebook" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
						<label style="position:relative; top:1.5em">JOURNAL ENTRY <br> VOUCHER</label>
				</a>
			</div>
			
			<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
				<a href="#" type="button" class="btn btn-lg">
					<strong class="livicon" data-name="plus" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
						<label style="position:relative; top:2em">ADD</label>
				</a>
			</div>
			
		</div>
			
			<br>

	</section>
</aside>
</div>
	
	<!-- Added Scripts -->
	
	<!-- /Added Scripts -->

</body>	
</html>