<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Financials System Project</title>

<!-- Added -->
<link rel="stylesheet" href="resources/css/pages/buttons.css" />
<link href="resources/css/pages/icon.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
<link href="resources/css/pages/formelements.css" rel="stylesheet" />

<%@ include file = "../commonDesign.jsp" %>

</head>

<aside class="right-side">

	<section class="content-header">
		<h1>Chart of Accounts</h1>
	</section>
	
	<section class="content">
		<div class="col-md-12">
			
			<div class="portlet box primary">
				<div class="portlet-title">
					<div class="caption" style="position: relative; top: 0.25em">
						<i class="livicon" data-name="edit" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
						List of Accounts
					</div>
					
					<div class="pull-right">
						<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-href="#add" href="#add">
							<span class="glyphicon glyphicon-plus"></span> Add
						</button>
					</div>
				</div>
				
				<div class="portlet-body">
					<div class="table-toolbar">
						
						<div class="col-md-4 form-group pull-right">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-search"></i>
								</div>
								<input type="text" id="searchInput" onkeyup="searchFunction()" class="form-control pull-right" placeholder="Search by: Account Name" />
							</div>
						</div>
					</div>
					
					<div class="table-scrollable">
						<table id="coaTable" class="table table-striped table-bordered table-advance table-hover">
							<thead>
								<tr>
									<th style="text-align:center">UACS Object Code</th>
									<th style="text-align:center">Account Name</th>
									<th style="text-align:center">Account Type Parent</th>
									<th style="text-align:center">Db/Cr</th>
									<th style="text-align:center">Status</th>
									<th style="text-align:center" colspan="2"></th>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach var="list" items="${CoA}" varStatus="vs">
									<tr>
									    <td style="text-align:center">${list.coa_code}</td>
									    <td style="text-align:center">${list.coa_description}</td>
                                 	    <td style="text-align:center">${list.parent}</td>
									    <td style="text-align:center">
									    	<c:choose>
									    		<c:when test="${list.coa_account_flag == '0'}">
									    			<span class="label label-success">Debit</span>
                                                </c:when>
                                                <c:otherwise>
                                                	<span class="label label-warning">Credit</span>
                                                </c:otherwise>
                                             </c:choose>
                                        </td>
                                        <td style="text-align:center">
                                        	<c:choose>
                                        		<c:when test="${list.coa_active_flag == '0'}">
                                        			<span class="label label-primary">
                                        				<i class="fa fa-check-circle-o"></i>
                                        				Active
                                        			</span>	
                                        		</c:when>
                                        		<c:otherwise>
                                        			<span class="label label-default">
                                        				<i class="fa fa-ban"></i>
                                        			Inactive
                                        			</span>
                                        		</c:otherwise>
                                        	</c:choose>
                                        </td>                       
                                        <td>
                                        	<button href="#" class="btn btn-responsive warning btn-xs"> 
                                        		<i class="livicon" data-name="edit" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Edit" style="margin-bottom:10px;"></i> 
                                        	</button>
                                        </td>	
                                        <td>
                                        	<form:form action="admin_CoA_delete" modelAttribute="CoA_delete">
                                        		<form:input type="hidden" id="uid" path="coa_account_uid" value="${list.coa_account_uid}" />
                                        			<button type="submit" value="" class="btn btn-responsive danger btn-xs"> 
                                        				<i class="livicon" data-name="trash" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Remove" style="margin-bottom:10px;"></i> 
                                        			</button>
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
       
</div>

<!-- Add -->
<div class="modal fade in" id="add" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">New Account</h4>
			</div>
			<div class="modal-body">
				<form:form action="admin_CoA_save" modelAttribute="CoASave" class="form-horizontal">
					<fieldset>
					
						<!-- Account Type -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Parent Type</label>
								<div class="col-md-4">x
									<form:select id="" name="" class="form-control" path="acc_parent_uid">
										<c:forEach var="list" items="${types}">  
											<form:option value="${list.acc_parent_uid}">
												<c:out value="${list.acc_description}"/>   
											</form:option>
										</c:forEach>
									</form:select>
								</div>
						</div>
						
						<!-- Code -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="textinput">Code</label>  
								<div class="col-md-5">
									<form:input id="textinput" name="textinput" type="text" placeholder="Account Code" class="form-control input-md" path="coa_code"/>
								</div>
						</div>
						
						<!-- Account Name -->
						<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Account Name</label>  
							<div class="col-md-5">
								<form:input id="textinput" name="textinput" type="text" placeholder="Account Description" class="form-control input-md" path="coa_description"/>
							</div>
						</div>
						
						<!-- Active/Inactive RadioButton -->
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
							
						<!-- Submit Button -->
						<label class="col-md-4 control-label" for="button1id"></label>
						<input type="submit" class="btn btn-success" value="Submit">
				</fieldset>
			</form:form>
		</div>
		</div>
	</div>
</div>
<!-- /Add -->

<%--Search Script (Accounts) --%>
<script>
function searchFunction() {
	// Declare variables 
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("coaTable");
	tr = table.getElementsByTagName("tr");
	
	// Loop through all table rows, and hide those who don't match the search query
	for (i = 1; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[1];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
				}
			} 
		}
	}
</script>

<!-- global js -->
<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<!--livicons-->
<script src="resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
<script src="resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
<script src="resources/js/josh.js" type="text/javascript"></script>
<script src="resources/js/metisMenu.js" type="text/javascript"></script>
<script src="resources/vendors/holder-master/holder.js" type="text/javascript"></script>
<!-- end of global js -->

<!-- Added Scripts -->
<script src="resources/vendors/modal/js/classie.js"></script>
<script src="resources/vendors/modal/js/modalEffects.js"></script>

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
