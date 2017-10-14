<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <title>Account Types</title>


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
                <h1>Account Types</h1>
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
                                    Accounts
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
                                                    <i class="fa fa-sort-numeric-asc"></i>
													
                                                 ID
                                                </th>
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Code
                                                </th>
												 <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Description
                                                </th>
												 <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Parent
                                                </th>
												
												 <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-trash-o"></i>
											    		Delete
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                         <c:forEach var="list" items="${accounts}">
                                        	 <tr data-uid="${list.acc_uid}" data-code="${list.acc_code}" data-desc="${list.acc_description}" data-parent="${list.acc_parent_uid}" >
                                                
                                            
                                                <td class="highlight" class="info">
                                                     <div class="info"></div>

                                                   <a  type="button" data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="ToModal">${list.acc_uid}</a>
                                                   
                                                </td>
                                                
                                                <td class="hidden-xs">${list.acc_code}</td>
                                                
                                                 <td class="hidden-xs">${list.acc_description}</td>
                                                 
                                                  <td class="hidden-xs">${list.parent}</td>
                                                
                                                 <td>
                                                 	<form:form action="admin_accountType_delete" modelAttribute="accountType_delete">
                                                   	<form:input type="hidden" id="uid" path="acc_uid" value="${list.acc_uid}"/>
                                                    <input type="submit" value="Delete" name="Delete" class="btn btn-danger btn-sm">  
                                                     </form:form>    	                                       
                                                </td>
                                                
                                               
                                                
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
	
		 
 	<!-- add -->

	 <div class="modal fade in" id="add" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">New Account Type</h4>
                            </div>
                            <div class="modal-body">
                                
								<form:form action="admin_AccountType_save" modelAttribute="ATSave" class="form-horizontal">
<fieldset>

<!-- Form Name -->


<!-- Select Basic -->

<div class="form-group">
  <label class="col-md-4 control-label" for="">Parent Type</label>
  <div class="col-md-4">
   
   <form:select id="" name="" class="form-control" path="acc_parent_uid">

	<c:forEach var="list" items="${types}">  
   	 
   	<form:option value="${list.acc_uid}">
           <c:out value="${list.acc_description}"/>
 	</form:option>
     
	</c:forEach>
	<form:option value="99" path="acc_parent_uid">null (Is a Parent)</form:option>
 </form:select>
 
 
 
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Code</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Account Code" class="form-control input-md" path="acc_code"/>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Account Description" class="form-control input-md" path="acc_description"/>
    
  </div>
</div>


<!-- Button (Double) -->

  <label class="col-md-4 control-label" for="button1id"></label>
  
   <input type="submit" class="btn btn-success" value="Submit" style="width:100%;">
   
  



</fieldset>

</form:form>
								
									
		
							</div>	
						</div>
					</div>
					
							
		</div>
		
	<!-- end of add -->
	
	

			<!-- edit -->

	 <div class="modal fade in" id="edit" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Edit Account Type</h4>
                            </div>
                            <div class="modal-body">
                                
								<form:form action="admin_accountType_update" modelAttribute="accountType_update" class="form-horizontal">
<fieldset>

<!-- Form Name -->


<!-- Select Basic -->

<div class="form-group">
  <label class="col-md-4 control-label" for="">Parent Type</label>
  <div class="col-md-4">
   
   <form:select id="" name="" class="form-control" path="acc_parent_uid">

	<c:forEach var="list" items="${accounts}">  
   	 
   	<form:option value="${list.acc_uid}">
           <c:out value="${list.acc_description}"/>
 	</form:option>
     
	</c:forEach>
	<form:option value="99" path="acc_parent_uid">null (Is a Parent)</form:option>
 </form:select>
 
 
 
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Code</label>  
  <div class="col-md-5">
  <form:input id="modal_code" name="textinput" type="text" class="form-control input-md" path="acc_code"/>
  <form:input id="modal_uid" name="textinput" type="hidden"  class="form-control input-md" path="acc_uid"/>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-5">
  <form:input id="modal_description" name="textinput" type="text"  class="form-control input-md" path="acc_description"/>
    
  </div>
</div>


<!-- Button (Double) -->

  <label class="col-md-4 control-label" for="button1id"></label>
  
   <input type="submit" class="btn btn-success" value="Submit" style="width:80%;">
   
  



</fieldset>

</form:form>
								
											
							</div>	
						</div>
					</div>
					
							
		</div>
		
	<!-- end of edit -->
		 
	
  
  
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
