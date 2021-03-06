<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Responsibility Centers</title>

<%@ include file = "../commonDesign.jsp" %>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Types of Responsibility Centers</h1>
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
                                    Responsibility Center
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
                                                    <i class="fa fa-sort-alpha-desc"></i>
                                                 Code
                                                </th>
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Acronym
                                                </th>
                                                
                                                 <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-user"></i>
												Description
                                                </th>
                                                
                                                <th  style="text-align:center" class="hidden-xs">
                                                    <i class="fa fa-trash-o"></i>
											    Action
                                                </th>
                                               
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="center" items="${rCenters}">
                                        	 <tr data-uid="${center.resp_center_uid}" data-code="${center.resp_center_code}" data-desc="${center.resp_center_description}" data-acronym="${center.resp_center_acronym}" >
                                                
                                              <form:form action="admin_rcenters_delete" modelAttribute="rcDelete">
                                                <td class="highlight" class="info">
                                                     <div class="info"></div>

                                                   <a  type="button" data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="ToModal">${center.resp_center_code}</a>
                                                </td>
                                                <td class="hidden-xs">${center.resp_center_acronym}</td>
                                                 <td class="hidden-xs alignment">${center.resp_center_description}</td>
                                                 <td>
                                                 
                                                   	<form:input  type="hidden" id="uid" path="resp_center_uid" value="${center.resp_center_uid}"/>
                                              		<div class="spring">
                                                    	<a  type="button"  data-toggle="modal" id="modal" data-href="#edit" href="#edit" class="btn btn-info btn-sm ToModal nature">Edit</a>
													</div>													
												 	<div class="spring"> 
                                                     	<input type="submit" value="Delete" name="Delete" class="btn btn-danger btn-sm">
                                                 	</div>                      	                                       
                                                </td>
                                                
                                                </form:form>
                                                
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
	
		 
 
		 
		 
 <!--Add-->  
<div class="modal fade in" id="add" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                                <h4 class="modal-title">New Responsibility Center</h4>
                            </div>
                            <div class="modal-body">


                  
<form:form class="form-horizontal" action="admin_rcenters_save" modelAttribute="RCenterSave" name="RCForm">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="code">Code</label>  
  <div class="col-md-5">
  <form:input id="code" name="code" type="text"  class="form-control input-md" path="resp_center_code"/>
  <span class="help-block">numbers only</span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="code">Acronym</label>  
  <div class="col-md-5">
  <form:input id="acronym" name="acronym" type="text"  class="form-control input-md" path="resp_center_acronym"/>
  <span class="help-block">Shortened Name of the Office</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>  
  <div class="col-md-5">
  <form:input id="description" name="description" type="text"  class="form-control input-md" path="resp_center_description"/>
  <span class="help-block">Fund Description</span>  
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
 <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-12">
   <input type="submit" class="btn btn-success" value="Submit" style="width:100%;">
 </div>
</div>

</fieldset>
</form:form>
			</div>	
		</div>
	</div>							
</div>
	 <!-- End of Add -->	
	
 <!--Edit-->

<div class="modal fade in" id="edit" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                                <h4 class="modal-title">Edit Fund</h4>
                            </div>
                            <div class="modal-body">
                    
<form:form class="form-horizontal" action="admin_rcenters_update" modelAttribute="RCUpdate" name="RCForm">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="code">Code</label>  
  <div class="col-md-5">
   <form:input  id="modal_uid" type="hidden" class="form-control input-md" path="resp_center_uid"/>
  <form:input  id="modal_code" type="text" class="form-control input-md" path="resp_center_code"/>
  <span class="help-block">numbers only</span>  
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="code">Acronym</label>  
  <div class="col-md-5">
  <form:input id="modal_acronym" type="text"  class="form-control input-md" path="resp_center_acronym"/>
  <span class="help-block">Shortened Name of the Office</span>  
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>  
  <div class="col-md-8">
  <form:input  id="modal_description" type="text" class="form-control input-md" path="resp_center_description"/>
  <span class="help-block">Office Description</span>  
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <input type="submit"  name="submit" class="btn btn-success">
    <input type="reset"   name="reset" class="btn btn-danger">
  </div>
</div>

</fieldset>
</form:form>
			</div>	
		</div>
	</div>							
</div>
	 <!-- End of Edit -->	
		
		
		
		
		
		
	
	
	
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
		 document.getElementById("modal_acronym").value = data.acronym;
		// put to modal ----------------------- ends
	});
});



</script>
	
  
  
  
</body>
</html>
