<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <title>Account Types</title>
<%@ include file = "../commonDesign.jsp" %>

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
                <div class="col-md-12">
                        <div class="portlet box primary">
                           <div class="portlet-title">
                                <h3 class="caption">
                                     <i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Accounts
                                </h3>
                                <div class="pull-right">
									
									<a type="button" class="btn btn-success btn-sm buttonSize" data-toggle="modal" data-href="#add" href="#add"><span class="glyphicon glyphicon-check"></span>Add</a>
                                  
                                   </div>
                                   
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                               
									<table  class="table table-striped table-hover" id="sample_5" style="text-align:center">
                                        <thead>
                                            <tr >
                                            	 
                                                <th class="hidden-xs center-align">
                                                    <i class="fa fa-user center-align"></i>
												Code
                                                </th>
												 <th class="hidden-xs center-align">
                                                    <i class="fa fa-user"></i>
												Account Name
                                                </th>
												 <th class="hidden-xs center-align">
                                                    <i class="fa fa-user"></i>
												Account Title
                                                </th>
												
												 <th class="hidden-xs center-align">
                                                    <i class="fa fa-trash-o"></i>
											    		Action
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                         <c:forEach var="list" items="${accounts}">
                                        	 <tr data-uid="${list.acc_uid}" data-code="${list.acc_code}" data-desc="${list.acc_description}" data-parent="${list.acc_parent_uid}" >
                                                
                                            
                                               <%--  <td class="highlight" class="info">
                                                     <div class="info"></div>
                                                    <a  type="button" data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="ToModal">${list.acc_uid}</a>
                                                    
                                                </td> --%>
                                                
                                                <td class="hidden-xs">${list.acc_code}</td>
                                                
                                                 <td class="hidden-xs alignment">${list.acc_description}</td>
                                                 
                                                  <td class="hidden-xs">${list.parent}</td>
                                                
                                                 <td>
                                                 	<form:form action="admin_accountType_delete" modelAttribute="accountType_delete" id ="formDel">
                                                   	<form:input type="hidden" id="uid" path="acc_uid" value="${list.acc_uid}"/>
                                                   <div class="spring">
                                                    	<a  type="button"  data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="btn btn-info btn-sm ToModal nature">Edit</a>
													</div>													
												 	<div class="spring"> 
                                                     <!-- 	<input type="button" value="Delete" name="Delete" id="del" ">  -->
                                                     	<button type="button"  data-toggle="modal" id="del" class="btn btn-danger btn-sm">Delete</button> 
                                                     	</div>
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
  
   <input type="submit" class="btn btn-success btn-sm" value="Submit" style="width:100%;">
   
  



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
		
		$('#del').click(function()
				{
					$('#formDel').submit();
				})		
		
		
		
	});
});
</script>
  
</body>
</html>