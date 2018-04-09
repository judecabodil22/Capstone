<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <title>Chart of Accounts</title>
<%@ include file = "../commonDesign.jsp" %>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Chart of Accounts</h1>
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
                                  List of Accounts
                                </h3>
                                <div class="pull-right">
									
									<a type="button" class="btn btn-success btn-sm buttonSize" data-toggle="modal" data-href="#add" href="#add"><span class="glyphicon glyphicon-check"></span>Add</a>
                                  
                                   </div>
                                   
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                               
									<table  class="table table-striped table-hover" id="sample_5" style="text-align:center">
                                        <thead>
                                            <tr>
                                            	 
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
                                                    <i class="fa fa-user"></i>
												Active
                                                </th>
                                                
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Nature
                                                </th>
												
												 <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-trash-o"></i>
											    		Action
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                          <c:forEach var="list" items="${CoA}">
                                        	 <tr data-uid="${list.coa_account_uid}" data-code="${list.coa_code}" data-desc="${list.coa_description}" data-account="${list.coa_account_flag}" data-active="${list.coa_active_flag}" data-parent="${list.acc_parent_uid}" >
                                                
                                         
                                                <td class="hidden-xs">${list.coa_code}</td>
                                                
                                                 <td class="hidden-xs alignment">${list.coa_description}</td>
                                                 
                                                   <td class="hidden-xs">${list.parent}</td>
                                             
                                              <td>   
                                                 <c:choose>
                                                 	<c:when test="${list.coa_account_flag == '0'}">
                                                 	
                                                 	 <a href="#" class="label label-sm label-info" style="padding:1em">
                                                        <i class="fa fa-check-circle-o"></i>
                                                        Debit
                                                    </a>
                                                 	
                                                 	
                                                 	</c:when>
                         							
                         							<c:otherwise>
                         							
                         							  <a href="#" class="label label-sm label-warning" style="padding:1em">
                                                        <i class="fa fa-sign-in"></i>
                                                        Credit
                                                    </a>
                         							
                         							
                         							</c:otherwise>
                                                 </c:choose>
                                                 </td>
                                                 
                                                
                                                
                                                 <td>
							                      <c:choose>
                            	                     	<c:when test="${list.coa_active_flag == '0'}">
                                	                 	
                                    	             	 <a href="#" class="label label-sm label-info" style="padding:1em">
                                        	                <i class="fa fa-check-circle-o"></i>
                                            	            Active
                                                    </a>
                                                 	
                                                 	
                                                 	</c:when>
                         							
                         							<c:otherwise>
                         							
                         							  <a href="#" class="label label-sm label-warning" style="padding:1em">
                                                        <i class="fa fa-sign-in"></i>
                                                       Inactive
                                                    </a>
                         							
                         							
                         							</c:otherwise>
                                                 </c:choose>
                                                 </td>
                                                 
                                                
                                                
                                                 <td>
                                                 
                                                 	<form:form action="admin_CoA_delete" modelAttribute="CoA_delete">
                                                   	<form:input type="hidden" id="uid" path="coa_account_uid" value="${list.coa_account_uid}"/>
                                                   												
												 	
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
                                <h4 class="modal-title">New Account</h4>
                            </div>
                            <div class="modal-body">
                                
								<form:form action="admin_CoA_save" modelAttribute="CoASave" class="form-horizontal">
<fieldset>

<!-- Form Name -->


<!-- Select Basic -->

<div class="form-group">
  <label class="col-md-4 control-label" for="">Parent Type</label>
  <div class="col-md-4">
   
   <form:select id="" name="" class="form-control" path="acc_parent_uid">

	<c:forEach var="list" items="${types}">  
   	 
   
   	 
   	 
   	<form:option value="${list.acc_parent_uid}">
           <c:out value="${list.acc_description}"/>   
 	</form:option>
     
	</c:forEach>
	
 </form:select>
 
 
 

 
 
 
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Code</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Account Code" class="form-control input-md" path="coa_code"/>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Account Description" class="form-control input-md" path="coa_description"/>
    
  </div>
</div>


<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="radios">Account Status</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="radios-0">
      <form:radiobutton name="radios" id="radios-0" value="0" path="coa_active_flag"/>
      Active
    </label> 
    <label class="radio-inline" for="radios-1">
      <form:radiobutton name="radios" id="radios-1" value="1" path="coa_active_flag"/>
      Inactive
    </label>
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