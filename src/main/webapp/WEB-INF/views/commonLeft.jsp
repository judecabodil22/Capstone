<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">
	<section class="sidebar ">
		<div class="page-sidebar sidebar-nav">
			<div class="clearfix"></div>
			
			<!-- BEGIN SIDEBAR MENU -->
			
			<ul id="menu" class="page-sidebar-menu">
			
			<!-- Dashboard -->
			<li class="active">
				<a href="${ctx}/financials_dashboard">
					<!--i class="livicon" data-name="barchart" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i-->
						<span class="title">Dashboard</span>
                </a>
            </li>
                
            <!-- System Setup -->
            <li>
            	<a href="${ctx}/resources/#">
            		<!--i class="livicon" data-name="gear" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i-->
            			<span class="title">System Setup</span>
            			<span class="fa arrow"></span>
                </a>
                
                <!-- System Setup sub-menu -->
                    <ul class="sub-menu">
                    	 <li>
                    		<a href="${ctx}/resources/#">
                    			<i class="fa fa-angle-double-right"></i>
                    			Account Types
                            </a>
                         </li>
                         
                         <li>
                    		<a href="${ctx}/admin_rCenters">
                    			<i class="fa fa-angle-double-right"></i>
                    			Chart of Accounts
                            </a>
                         </li>
                         
                         <li>
                    		<a href="${ctx}/resources/#">
                    			<i class="fa fa-angle-double-right"></i>
                    			Responsibility Center
                            </a>
                         </li>
                         
                         <li>
                    		<a href="${ctx}/resources/#">
                    			<i class="fa fa-angle-double-right"></i>
                    			Transaction Type
                            </a>
                         </li>
                         
                         <li>
                    		<a href="${ctx}/resources/#">
                    			<i class="fa fa-angle-double-right"></i>
                    			Fund
                            </a>
                         </li>
                    </ul>        
                </li>
                
                <!-- Transaction-->
            <li>
            	<a href="${ctx}/resources/#">
            		<!--i class="livicon" data-name="laptop" data-c="#5bc0de" data-hc="#5bc0de" data-size="18" data-loop="true"></i-->
            			<span class="title">Transaction</span>
            			<span class="fa arrow"></span>
            	</a>
            	
            	<!-- Transaction sub-menu -->
            	<ul class="sub-menu">
            		<li>
            			<a href="${ctx}/resources/#">
            				<i class="livicon" data-name="notebook" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            	<span class="title">Journal Entry Voucher</span>
                        </a>	
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="${ctx}/JEV/create">
                        				<i class="fa fa-angle-double-right"></i>
                             			Create JEV
                            		</a>
                        		</li>
                        		<li>
                        			<a href="${ctx}/JEV/list">
                        				<i class="fa fa-angle-double-right"></i>
                             			Review JEV
                            		</a>
                        		</li>
                        	</ul>
                    </li>
                        
                    <!-- Accounts Receivable -->
                    <li>
                    	<a href="${ctx}/resources/#">
                    		<i class="livicon" data-name="sign-in" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                    			<span class="title">Accounts Receivable</span>
                  		</a>
                	</li>
                	
                	<!-- Accounts Payable -->
                	<li>
                		<a href="${ctx}/resources/#">
                			<i class="livicon" data-name="sign-out" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                			<span class="title">Accounts Payable</span>
                   		</a>
              		</li>
                        
                    <!-- Collections -->
                    <li>
                    	<a href="${ctx}/resources/#">
                    		<i class="livicon" data-name="piggybank" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            <span class="title">Collections</span>       
                         </a>
                    </li>
                    
                    <!-- Disbursement -->
                    <li>
                    	<a href="${ctx}/resources/#">
                    		<i class="livicon" data-name="money" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            <span class="title">Disbursement</span>     
                         </a>
                    </li>
                </ul>        
			</li>
		
			<!-- Queries -->	
			<li>
				<a href="${ctx}/resources/#">
					<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
						<span class="title">Queries</span>
						<span class="fa arrow"></span>
            	</a>                        
            
            	<!-- Queries sub-menu -->
            	<ul class="sub-menu">
            		<li>
            			<a href="${ctx}/resources/#">
            				<i class="livicon" data-name="notebook" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            <span class="title">Journal Entry Voucher</span>
                        </a>
                    </li>
                    
                    <!-- Accounts Receivable -->
                    <li>
                    	<a href="${ctx}/resources/#">
                    		<i class="livicon" data-name="sign-in" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                    		<span class="title">Accounts Receivable</span>
                  		</a>
                	</li>
                	
                	<!-- Accounts Payable -->
                	<li>
                		<a href="${ctx}/resources/#">
                			<i class="livicon" data-name="sign-out" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                			<span class="title">Accounts Payable</span>
                   		</a>
              		</li>
                    
            		<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Chart of Accounts
                    	</a>
                	</li>
                
                	<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Responsibility Center
                    	</a>
                	</li>
                
                	<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Fund
                    	</a>
                	</li>
            	</ul>
        	</li>       
                        
        	<!-- Reports -->                
        	<li>
        		<a href="${ctx}/resources/#">
        			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
        				<span class="title">Reports</span>
        				<span class="fa arrow"></span>
            	</a>
            
            	<!-- Reports sub-menu -->
            	<ul class="sub-menu">
            		
            		<!-- Financial Statements -->
            		<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Financial Statements
                     	</a>
                     	
                     	<!-- Financial Statement sub-menu -->
                     	<ul class="sub-menu">
                     		<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			Trial Balance
                     			</a>
                     
                     			<ul class="sub-menu">
                     				<li>
                     					<a href="${ctx}/resources/#">
                     						<i class="fa fa-angle-double-right"></i>
                        					Unadjusted Trial Balance	
                     					</a>
                					</li>
                		
                					<li>
                     					<a href="${ctx}/resources/#">
                     						<i class="fa fa-angle-double-right"></i>
                        					Pre-Closing Trial Balance	
                     					</a>
                					</li>
                		
                					<li>
                     					<a href="${ctx}/resources/#">
                     						<i class="fa fa-angle-double-right"></i>
                        					Post-Closing Trial Balance	
                     					</a>
                					</li>
                				</ul>         
                			</li>
                			
                			<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			Statement of Financial Position
                     			</a>
                     		</li>
                     		
                     		<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			Statement of Financial Performance
                     			</a>
                     		</li>
                     		
                     		<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			Statement of Cash Flows
                     			</a>
                     		</li>
                     		
                     		<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			Statement of Changes in Assets/Equity
                     			</a>
                     		</li>	
                     	</ul>	
                	</li>
                	
                	<!-- Journals and Ledgers -->
                	<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Journal/Ledgers
                     	</a>
                     	
                     	<!-- Journals and Ledgers sub-menu -->
                     	<ul class="sub-menu">
                     		<li>
                     			<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			General Journal
                     			</a>
                			</li>
                
                			<li>
            					<a href="${ctx}/resources/#">
            						<i class="fa fa-angle-double-right"></i>
                         			General Ledger
                     			</a>
                			</li>
                		</ul>
                	 </li>
				</ul>   		
        
        	<!-- Manage Users -->
        	<li>
        		<a href="${ctx}/resources/#">
        			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
        			<span class="title">Manage Users</span>
            	</a>
        	</li>
        
        	<!-- Settings -->
        	<li>
        		<a href="${ctx}/resources/#">
        			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
        			<span class="title">Settings</span>
        			<span class="fa arrow"></span>
            	</a>
            
            	<ul class="sub-menu">
            		<li>
            			<a href="${ctx}/resources/#">
            				<i class="fa fa-angle-double-right"></i>
                         	Institution Details
                     	</a>
                	</li>
            	</ul>
        	</li>
        
        	<!-- Help -->
        	<li>
        		<a href="${ctx}/resources/#">
        			<!--i class="livicon" data-name="doc-portrait" data-c="#EF6F6C" data-hc="#EF6F6C" data-size="18" data-loop="true"></i-->
        			<span class="title">Help</span>
            	</a>
        	</li>
 			</ul>
 			<!-- END SIDEBAR MENU -->
		</div>
	</section>
</aside>
