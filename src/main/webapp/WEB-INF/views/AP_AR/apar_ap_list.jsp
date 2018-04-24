<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
<title>Financials System Project</title>

<!-- added -->
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
<!-- /added -->

<%@ include file = "../commonDesign.jsp" %>
</head>

<aside class="right-side">
	<section class="content-header">
		<h1>Accounts Payable - Disbursement</h1>
	</section>
	
	<section class="content">
	
	<div class="row">
		<div class="col-lg-12">
			
			<div class="panel panel-primary filterable">
				
				<div class="panel-heading clearfix">
					<div class="panel-title pull-left">
						<div class="caption">
							<i class="livicon" data-name="sign-out" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
							List of Payables
						</div>
					</div>
				</div>
				
				<div class="panel-body">
				
					<table class="table table-striped table-responsive">
						<thead>
							<tr>
								<th>Date</th>
								<th>JEV No.</th>
								<th>Payable Type</th>
								<th>Amount</th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="list" items="${aplist}" varStatus="vs">
							
							<tr data-id="${list.jev_id}"> 
								<td>
									<fmt:formatDate value="${list.jev_date}" type="date" />
								</td>
								<td>${list.jev_no}</td>
								<td>${list.crcoa_name}</td>
								<td>
									<fmt:formatNumber value="${list.jevd_cramt}" type="currency" />
								</td>
								<td>
									<!-- view -->
									<a type="button" class="btn info" data-toggle="modal" data-target="#g${vs.index}" id="viewDetailButton${vs.index}">
										<i class="livicon" data-name="eye-open" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="View" style="margin-bottom:10px;"></i>
									</a>
									
									<!-- Modal -->
									<div class="modal fade" id="g${vs.index}" role="dialog">
										<div class="modal-dialog">
										
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
														<h4 class="modal-title">Payable Information</h4>
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
																	<td>JEV No.</td>
																	<td>${list.jev_no}</td>
																</tr>         
																<tr>
																	<td>Payable Type</td>
																	<td>${list.crcoa_name}</td>
																</tr>
																<tr>
																	<td>Amount</td>
																	<td><fmt:formatNumber value="${list.jevd_cramt}" type="currency" /></td>
																</tr>
																<tr>
																	<td>Explanation</td>
																	<td>${list.jevd_expl}</td>
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
				                    <!-- /view -->
				                    
				                    <!-- disburse -->
				               		<a type="button" class="btn danger" data-toggle="modal" data-target="#cdv${vs.index}" id="viewDetailButton${vs.index}">
				               			<i class="livicon" data-name="upload" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Create Disb. Voucher" style="margin-bottom:10px;"></i>
				               		</a>
				               		
				               		<!-- Modal -->
				               		<div class="modal fade" id="cdv${vs.index}" role="dialog">
				               			<div class="modal-dialog">
				               			
				               				<!-- Modal content-->
				               				<div class="modal-content">
				               					<div class="modal-header">
				               						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				               							<h4 class="modal-title">Create Disbursement Voucher</h4>
				               					</div>
				               					
				               					<form:form action="ap_dsb_save" modelAttribute="dsb_save">
				               						<fieldset>
														<div class="panel-body">
														
															<div class="hidden">
															jev_id
																<form:input path="jev_id" value="${list.jev_id}"/>
															</div>
															
															<div class="col-md-12 form-group pull-left">
															Mode of Payment
																<form:select path="dv_mop" id="e1" class="form-control select2">
			                                                		<option value="MDS Check">MDS Check</option>
			                                                		<option value="Commercial Check">Commercial Check</option>
			                                                		<option value="ADA">ADA</option>
			                                                		<option value="Others">Others</option>
			                                                	</form:select>
															</div>
															
															<div class="col-md-12 form-group pull-left">
															Payee Name
																<form:input path="dv_payee" class="form-control" type="text" />
															</div>
															
															<div class="col-md-12 form-group pull-left">
															Address
																<form:input path="dv_address" class="form-control" type="text" />
															</div>
															
															<div class="col-md-12 form-group pull-left">
															Explanation
																<input class="form-control" type="text" value="${list.jevd_expl}" disabled /> 	
															</div>
															
															<div class="col-md-12 form-group pull-left">
															Responsibility Center
																<input class="form-control" type="text" value="${list.resp_name}" disabled /> 	
															</div>
															<div class="col-md-12 form-group pull-left">
															Amount
																<form:input path="dv_amount" class="form-control" type="text" value="${list.jevd_cramt}" readonly="true" /> 	
															</div>
														</div>
														
														<div class="modal-footer">
															<button name="submit" type="submit" class="btn btn-primary">Submit</button>
															<button type="button" data-dismiss="modal" class="btn">Close</button>
														</div>
													</fieldset>
												</form:form>
											</div>
										</div>
									</div>
									<!-- /disburse -->
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

<!-- added -->
<script src="resources/vendors/modal/js/classie.js"></script>
<script src="resources/vendors/modal/js/modalEffects.js"></script>
<!-- /added -->

</body>
</html>