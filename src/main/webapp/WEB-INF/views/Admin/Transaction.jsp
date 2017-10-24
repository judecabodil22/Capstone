<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <title>Transactions</title>
 <%@ include file = "../commonDesign.jsp" %>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Transactions Types</h1>
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
                                    Transactions
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
											   	Action
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="list" items="${transaction}">
                                        	 <tr data-uid="${list.trans_transaction_type_uid}" data-code="${list.trans_code}" data-desc="${list.trans_description}" data-parent="${list.trans_transaction_parent_uid}" >
                                                
                                            
                                                <td class="highlight" class="info">
                                                     <div class="info"></div>

                                                   <a  type="button" data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="ToModal">${list.trans_transaction_type_uid}</a>
                                                   
                                                </td>
                                                
                                                <td class="hidden-xs">${list.trans_code}</td>
                                                
                                                 <td class="hidden-xs alignment">${list.trans_description}</td>
                                                 
                                                  <td class="hidden-xs alignment">${list.parent}</td>
                                                
                                                 <td>
                                                 	<form:form action="admin_transactions_delete" modelAttribute="transaction_delete">
                                                   	<form:input type="hidden" id="uid" path="trans_transaction_type_uid" value="${list.trans_transaction_type_uid}"/>
                                                <div class="spring">
                                                    	<a  type="button"  data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="btn btn-info btn-sm ToModal nature">Edit</a>
													</div>													
												 	<div class="spring"> 
                                                     	<input type="submit" value="Delete" name="Delete" class="btn btn-danger btn-sm">
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
                                <h4 class="modal-title">New Transaction Type</h4>
                            </div>
                            <div class="modal-body">
                                
								<form:form action="admin_transaction_save" modelAttribute="ModelBindSave" class="form-horizontal">
<fieldset>

<!-- Form Name -->


<!-- Select Basic -->

<div class="form-group">
  <label class="col-md-4 control-label" for="">Parent Type</label>
  <div class="col-md-4">
   
   <form:select id="" name="" class="form-control" path="trans_transaction_parent_uid">

	<c:forEach var="list" items="${types}">  
   	 
   	<form:option value="${list.trans_transaction_type_uid}">
           <c:out value="${list.trans_description}"/>
 	</form:option>
     
	</c:forEach>
	<form:option value="99" path="trans_transaction_parent_uid">null (Is a Parent)</form:option>
 </form:select>
 
 
 
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Code</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Transaction Code" class="form-control input-md" path="trans_code"/>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-5">
  <form:input id="textinput" name="textinput" type="text" placeholder="Transaction Description" class="form-control input-md" path="trans_description"/>
    
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
                                <h4 class="modal-title">Edit Transaction Type</h4>
                            </div>
                            <div class="modal-body">
                                
								<form:form action="admin_transaction_update" modelAttribute="transaction_update" class="form-horizontal">
<fieldset>

<!-- Form Name -->


<!-- Select Basic -->

<div class="form-group">
  <label class="col-md-4 control-label" for="">Parent Type</label>
  <div class="col-md-4">
   
   <form:select id="" name="" class="form-control" path="trans_transaction_parent_uid">

	<c:forEach var="list" items="${types}">  
   	 
   	<form:option value="${list.trans_transaction_type_uid}">
           <c:out value="${list.trans_description}"/>
 	</form:option>
     
	</c:forEach>
	<form:option value="99" path="trans_transaction_parent_uid">null (Is a Parent)</form:option>
 </form:select>
 
 
 
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Code</label>  
  <div class="col-md-5">
  <form:input id="modal_code" name="textinput" type="text" class="form-control input-md" path="trans_code"/>
  <form:input id="modal_uid" name="textinput" type="hidden"  class="form-control input-md" path="trans_transaction_type_uid"/>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-5">
  <form:input id="modal_description" name="textinput" type="text"  class="form-control input-md" path="trans_description"/>
    
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
		
	<!-- end of edit -->
		
	
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
