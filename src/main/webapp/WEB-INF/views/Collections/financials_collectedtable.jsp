<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
<title>Financials System Project</title>

<!-- added -->
<link rel="stylesheet" href="resources/css/pages/buttons.css" />
<link href="resources/css/pages/icon.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
<link href="resources/css/pages/formelements.css" rel="stylesheet" />
<!-- /added -->

<%@ include file="../commonDesign.jsp"%>
</head>

<aside class="right-side">

	<!-- Main Content -->
	<section class='content-header'>
		<h1>Collections</h1>
	</section>
	
	<section class="content">
	
	<div class="col-md-12">
		<div class="portlet box primary">
		
			<div class="portlet-title">
				<div class="caption">
					<i class="livicon" data-name="piggybank" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
					List of Collections
				</div>
			</div>
			
			<div class="portlet-body">
				
				<div class="table-toolbar">
					<div class="col-md-4 form-group pull-right">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-search"></i>
							</div>
							<input type="text" id="searchInput" onkeyup="searchFunction()" class="form-control pull-right" placeholder="Search by: Code" />
						</div>
					</div>
				</div>
				
				<br>
				
				<div class="table-scrollable">
					<table id="DisbTable" class="table table-striped table-bordered table-advance table-hover">
						<thead>
							<tr>
								<th class="col-md-1">Date</th>
								<th class="col-md-2">Code</th>
								<th class="col-md-2">Name</th>
								<th class="col-md-1">Amount</th>
								<th class="col-md-1"></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="list" items="${col_list}" varStatus="vs">
							<tr>
								<td>
									<fmt:formatDate value="${list.col_date}" type="date" />
								</td>
								<td>${list.col_no}</td>
								<td>${list.col_payer}</td>
								<td>
									<fmt:formatNumber value="${list.col_amt}" type="currency" />
								</td>
								<td>
									<!-- view  -->
									<a type="button" class="btn info" data-toggle="modal" data-target="#col${vs.index}" id="viewDetailButton${vs.index}">
										<i class="livicon" data-name="eye-open" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="View" style="margin-bottom:10px;"></i>
									</a>
									
									<!-- Modal -->
									<div class="modal fade" id="col${vs.index}" role="dialog">
										<div class="modal-dialog">
										
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
														<h4 class="modal-title">Collection Information</h4>
												</div>
												
												<div class="panel-body">
													<div class="table-scrollable">
														<table id="tbl1" class="table table-bordered table-striped" style="clear:both">
															<tbody>
																<tr>
																	<td>Date</td>
																	<td><fmt:formatDate value="${list.col_date}" type="date" /></td>
																</tr>   
																<tr>
																	<td>Code</td>
																	<td>${list.col_no}</td>
																</tr>
																<tr>
																	<td>Collection Type</td>
																	<td>${list.col_type}</td>
																</tr>
																<tr>
																	<td>Payer Name</td>
																	<td>${list.col_payer}</td>
																</tr>
																<tr>
																	<td>Amount</td>
																	<td><fmt:formatNumber value="${list.col_amt}" type="currency" /></td>
																</tr>
																<tr>
																	<td>Description</td>
																	<td>${list.col_desc}</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												
												<div class="modal-footer">
													<button type="button" data-dismiss="modal" class="btn">Close</button>
												</div>
												
											</div>
										</div>
									</div>
									<!-- /view  -->
									
									<button href="#" class="btn btn-responsive success" data-toggle="modal" data-href="#" href="#">
										<i class="livicon" data-name="printer" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Print Receipt" style="margin-bottom:10px;"></i> 
									</button>
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

<%--Search Script (Code) --%>
<script>
function searchFunction() {
	// Declare variables 
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("DisbTable");
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

<!-- added -->
<script src="resources/vendors/modal/js/classie.js"></script>
<script src="resources/vendors/modal/js/modalEffects.js"></script>
<script src="resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="resources/js/pages/formelements.js" type="text/javascript"></script>
<!-- /added -->	

</body>
</html>