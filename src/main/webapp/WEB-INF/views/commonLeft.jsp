<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<aside class="left-side sidebar-offcanvas">
    <section class="sidebar">
        <div class="page-sidebar sidebar-nav">
            <div class="clearfix"></div>
            
            <!-- Sidebar -->
            <ul id="menu" class="page-sidebar-menu">
            
            <!-- Dashboard -->
            <li>
                <a href="${ctx}/financials_dashboard">
                    <!--  <i class="livicon" data-name=" " data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i> -->
                        <span class="title">Dashboard</span>
                </a>
            </li>
            
            <!-- System Setup -->
            <li>
                <a href="#">
                    <!-- <i class="livicon" data-name=" " data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i> -->
                        <span class="title">System Setup</span>
                        <span class="fa arrow"></span>
                </a>
                
                <!-- System Setup sub-menu -->
                <ul class="sub-menu">
                    <li id="admin_accountTypes">
                        <a href="${ctx}/admin_accountTypes">
                            <i class="fa fa-angle-double-right"></i>
                            Account Types
                        </a>
                     </li>
                     
                     <li>
                        <a href="${ctx}/admin_rCenters">
                            <i class="fa fa-angle-double-right"></i>
                            Responsibility Centers
                        </a>
                     </li>
                     
                     <li>
                        <a href="${ctx}/admin_CoA">
                            <i class="fa fa-angle-double-right"></i>
                            Chart of Accounts
                        </a>
                     </li>
                     
                     <li>
                        <a href="${ctx}/admin_transaction">
                            <i class="fa fa-angle-double-right"></i>
                            Transaction Type
                        </a>
                     </li>
                     
                     <li>
                        <a href="${ctx}/admin_funds">
                            <i class="fa fa-angle-double-right"></i>
                            Fund
                        </a>
                     </li>
                </ul>     
            </li>
            
            <!-- Transaction-->
            <li>
                <a href="#">
                    <!--i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i-->
                        <span class="title">Transaction</span>
                        <span class="fa arrow"></span>
                </a>
                
                <!-- Transaction sub-menu -->
                <ul class="sub-menu">
                    
                    <!-- Journal Entry Voucher -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="notebook" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Journal Entry Voucher</span>
                        </a>
                        
                        <ul class="sub-menu">
                            <li id="JEV_create">
                                <a href="${ctx}/JEV/create">
                                    <i class="fa fa-angle-double-right"></i>
                                    Create JEV
                                </a>
                            </li>
                            
                            <li id="JEV_list">
                                <a href="${ctx}/JEV/list">
                                    <i class="fa fa-angle-double-right"></i>
                                    Review JEV
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- Accounts Receivable -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="sign-in" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Receivable</span>
                        </a>
                    </li>
                    
                    <!-- Accounts Payable -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="sign-out" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Payable</span>
                        </a>
                    </li>
                    
                    <!-- Collections -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="piggybank" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Collections</span>
                                <span class="fa arrow"></span>
                        </a>
                        
                    <ul class="sub-menu">
                            
                                <li>
                                    <a href="${ctx}/financials_ctransac">
                                        <i class="fa fa-angle-double-right"></i>
                                        Cashier                 
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="${ctx}/financials_ctransac2">
                                        <i class="fa fa-angle-double-right"></i>
                                        Accounts Receivable                 
                                    </a>
                                </li>
                            
                            
                       
                            </ul>
                        
                        
                    </li>
                    
                    <!-- Disbursement -->
                    <li>
                    	<a href="${ctx}/voucher_transaction">
                    		<i class="livicon" data-name="money" data-c="#FFFFFF" data-hc="#FFFFFF" data-size="18" data-loop="true"></i>
                            <span class="title">Disbursement</span>     
                        </a>
                    </li>
                </ul>        
            </li>
            
            <!-- Queries -->
            <li>
                <a href="#">
                    <!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                            <span class="title">Queries</span>
                            <span class="fa arrow"></span>
                </a>
                
                <!-- Queries sub-menu -->
                <ul class="sub-menu">
                    
                    <!-- Journal Entry Voucher -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="notebook" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Journal Entry Voucher</span>
                        </a>
                    </li>
                    
                    <!-- Accounts Receivable -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="sign-in" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Receivable</span>
                        </a>
                    </li>
                    
                    <!-- Accounts Payable -->
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="sign-out" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                                <span class="title">Accounts Payable</span>
                        </a>
                    </li>
                    
                    <!-- Chart of Accounts -->
                    <li>
                        <a href="#">
                            <i class="fa fa-angle-double-right"></i>
                            Chart of Accounts
                        </a>
                    </li>
                    
                    <!-- Responsibility Center -->
                    <li>
                        <a href="#">
                            <i class="fa fa-angle-double-right"></i>
                            Responsibility Center
                        </a>
                    </li>
                    
                    <!-- Fund -->
                    <li>
                        <a href="#">
                            <i class="fa fa-angle-double-right"></i>
                            Fund
                        </a>
                    </li>
                </ul>
            </li>
            
            <!-- Reports -->
            <li>
                <a href="#">
                    <!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                        <span class="title">Reports</span>
                        <span class="fa arrow"></span>
                </a>
                
                <!-- Reports sub-menu -->
                <ul class="sub-menu">
                    
                    <!-- Financial Statements -->
                    <li>
                        <a href="#">
                            <i class="fa fa-angle-double-right"></i>
                            Financial Statements
                        </a>
                        
                        <!-- Financial Statement sub-menu -->
                        <ul class="sub-menu">
                            
                            <!-- Trial Balance -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    Trial Balance
                                </a>
                                
                                <!-- Trial Balance sub-menu -->
                                <ul class="sub-menu">
                                    
                                    <!-- Unadjusted Trial Balance -->
                                    <li>
                                        <a href="#">
                                        Unadjusted Trial Balance
                                        </a>
                                    </li>
                                    
                                    <!-- Pre-Closing Trial Balancee -->
                                    <li>
                                        <a href="#">
                                        Pre-Closing Trial Balance
                                        </a>
                                    </li>
                                    
                                    <!-- Post-Closing Trial Balance -->
                                    <li>
                                        <a href="#">
                                        Post-Closing Trial Balance
                                        </a>
                                    </li>
                                </ul>       
                            </li>
                            
                            <!-- Statement of Financial Position -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    Statement of Financial Position
                                </a>
                            </li>
                            
                            <!-- Statement of Financial Performance -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    Statement of Financial Performance
                                </a>
                            </li>
                            
                            <!-- Statement of Cash Flows -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    Statement of Cash Flows
                                </a>
                            </li>
                            
                            <!-- Statement of Changes in Assets/Equity -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    Statement of Changes in Assets/Equity
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- Journals and Ledgers -->
                    <li>
                        <a href="#">
                            <i class="fa fa-angle-double-right"></i>
                            Journal/Ledgers
                        </a>
                        
                        <!-- Journals and Ledgers sub-menu -->
                        <ul class="sub-menu">
                        
                            <!-- General Journal -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    General Journal
                                </a>
                            </li>
                            
                            <!-- General Ledger -->
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-double-right"></i>
                                    General Ledger
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                    <a href="${ctx}/financials_invoice">
                            <i class="fa fa-angle-double-right"></i>
                            Invoice
                        </a>
                    
                    </li>
                    
                </ul>
                
                <!-- Manage Users -->
                <li>
                    <a href="#">
                        <!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                            <span class="title">Manage Users</span>
                    </a>
                </li>
                
                <!-- Settings -->
                <li>
                    <a href="#">
                        <!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                            <span class="title">Settings</span>
                            <span class="fa arrow"></span>
                    </a>
                    
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-angle-double-right"></i>
                                Institution Details
                            </a>
                        </li>
                    </ul>
                </li>
                
                <!-- Help -->
                <li>
                    <a href="#">
                        <!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                        <span class="title">Help</span>
                    </a>
                </li>
            </ul>
            <!-- /Sidebar -->
        </div>
    </section>
</aside>
<script>
$(document).ready(function(){
    $.each($('.sidebar li'), function(k, v){
        $(v).removeClass("active");
    });
    $('#' + "${module}").addClass("active");
    $.each($('#' + "${module}").parents('li'), function(k, v){
        $(v).addClass("active");
    });
    $.each($('#' + "${module}").parents('ul'), function(k, v){
        $(v).addClass("collapse in").attr("aria-expanded", true);
    });
});
</script>