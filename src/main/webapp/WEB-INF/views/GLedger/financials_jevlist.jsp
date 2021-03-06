<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
<meta charset="UTF-8">
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
		<h1>Journal Entry Voucher</h1>
	</section>
	
	<section class="content">
	
	<div class="col-md-12">
		<div class="portlet box primary">
		
			<div class="portlet-title">
				<div class="caption">
					<i class="livicon" data-name="notebook" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
					Journal Entry Voucher
				</div>
			</div>
			
			<div class="portlet-body">
			
				<div class="table-toolbar">
					<div class="btn-group pull-left">
						<a href="financials_createjev">
							<button class=" btn btn-success">
								<i class="livicon pull-left" data-name="plus-alt" data-size="20" data-c="#fff" data-hc="#fff"></i>
									<span>&nbsp;Create JEV</span>
							</button>
						</a>
					</div>
					
					<div class="col-md-4 form-group pull-right">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-search"></i>
							</div>
							<input type="text" id="searchInput" onkeyup="searchFunction()" class="form-control pull-right" placeholder="Search by: JEV No." />
						</div>
					</div>
				</div>
				
				<br>
				
				<div class="table-scrollable">
					<table id="jevTable" class="table table-striped table-bordered table-advance table-hover">
						<thead>
							<tr>
								<th class="col-md-2">Date</th>
								<th class="col-md-3">JEV No.</th>
								<th class="col-md-3">Prepared by</th>
								<th class="col-md-1">Status</th>
								<th class="col-md-2"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${jev_info}" varStatus="vs">
							<tr>
								<td>
									<fmt:formatDate value="${list.jev_date}" type="date" />
								</td>
								<td>
									<a data-toggle="modal" data-target="#j${vs.index}" id="viewDetailButton${vs.index}">${list.jev_no}</a>
									
									<div class="modal fade" id="j${vs.index}" role="dialog">
										<div class="modal-dialog">
										
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
														<h4 class="modal-title">JEV Information</h4>
												</div>
												
												<div class="panel-body">
													<div class="table-scrollable">
														<table id="tbl1" class="table table-bordered table-striped" style="clear:both">
															<tbody> 
																<tr>
																	<td>Date</td>
																	<td><fmt:formatDate value="${list.jev_date}" type="date" /></td>
																</tr>
																<tr>
																	<td>JEV No</td>
																	<td>${list.jev_no}</td>
																</tr>
																<tr>
																	<td>Transaction Type</td>
																	<td>${list.jev_trans_type}</td>
																</tr>
																<tr>
																	<td>Total Debit</td>
																	<td><fmt:formatNumber value="${list.tot_db}" type="currency" /></td>
																</tr>
																<tr>
																	<td>Total Credit</td>
																	<td><fmt:formatNumber value="${list.tot_cr}" type="currency" /></td>
																</tr>
																<tr>
																	<td>Status</td>
																	<td>${list.tstat_name}</td>
																</tr>
																<tr>
																	<td>Prepared by</td>
																	<td>${list.jev_creator}</td>
																</tr>
																<tr>
																	<td>Remarks</td>
																	<td>${list.jev_remarks}</td>
																</tr>
																<tr>
																	<td>Reviewed by</td>
																	<td>${list.jev_checker}</td>
																</tr>
																<tr>
																	<td>Reviewer's Remarks</td>
																	<td>${list.jev_checker_remarks}</td>
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
								</td>
								<td>${list.jev_creator}</td>
								<td>
									<c:choose>
										<c:when test="${list.tstat_name eq 'Pending'}">
											<span class="label label-sm label-warning">${list.tstat_name}</span>
										</c:when>
										<c:when test="${list.tstat_name eq 'Approved'}">
											<span class="label label-sm label-success">${list.tstat_name}</span>
										</c:when>
										<c:when test="${list.tstat_name eq 'Disapproved'}">
											<span class="label label-sm label-danger">${list.tstat_name}</span>
										</c:when>
										<c:otherwise>${list.tstat_name}</c:otherwise>
									</c:choose>
								</td>
								<td>
									<button href="financials_reviewjev" class="btn btn-responsive info btn"> 
										<i class="livicon" data-name="eye-open" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="View" style="margin-bottom:10px;"></i> 
									</button>
									
									<button class="btn danger btn" data-toggle="modal" data-href="#staticremove" href="#staticremove">
										<i class="livicon" data-name="trash" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Remove" style="margin-bottom:10px;"></i> 
									</button>
									<button class="btn default btn" data-toggle="modal" data-href="#staticpost" href="#staticpost">
										<i class="livicon" data-name="columns" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Post" style="margin-bottom:10px;"></i> 
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<!-- static modal (remove)-->
				<div class="modal fade in" id="staticremove" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<div class="modal-body">
								<p>Do you want to remove this JEV from the list?</p>
							</div>
							<div class="modal-footer">
								<button type="button" data-dismiss="modal" class="btn btn-primary">Yes</button>
								<button type="button" data-dismiss="modal" class="btn">No</button>
							</div>
						</div>
					</div>
				</div>
				
				<!-- static modal (post)-->
				<div class="modal fade in" id="staticpost" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<div class="modal-body">
								<p>Do you want to post this JEV to General Ledger?</p>
								<br>
								<div class="alert alert-warning">
									<p>Note: You cannot undo this action once posted.</p>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" data-dismiss="modal" class="btn btn-primary">Yes</button>
								<button type="button" data-dismiss="modal" class="btn">No</button>
							</div>
						</div>
					</div>
				</div>
			
			</div>
		</div>
	</div>
</div>
</section>
</aside>

</div>

<%--Search Script (JEV No) --%>
<script>
function searchFunction() {
	// Declare variables 
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("jevTable");
	tr = table.getElementsByTagName("tr");
	
	// Loop through all table rows, and hide those who don't match the search query
	for (i = 1; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[1];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				}
				else {
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