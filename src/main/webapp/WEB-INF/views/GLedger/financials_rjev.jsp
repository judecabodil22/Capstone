<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta charset="UTF-8">
<title>Financials System Project</title>

<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!-- global css -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
<link href="resources/css/panel.css" rel="stylesheet" type="text/css" />
<link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css" />
<!-- end of global css -->

<!-- start add row -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->

<!-- Added -->
<link href="resources/vendors/wizard/acc-wizard-master/css/acc-wizard.min.css" rel="stylesheet" />
<link href="resources/css/pages/accordionformwizard.css" rel="stylesheet" />
<link href="resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/select2/select2.css" rel="stylesheet" />
<link href="resources/vendors/select2/select2-bootstrap.css" rel="stylesheet" />
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/datatables/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />




<%@ include file="../commonDesign.jsp"%>
</head>

<aside class="right-side">

	<!-- Main Content -->
	<section class='content-header'>
		<h1>Review Journal Entry Voucher</h1>
	</section>
	
	<section class="content paddingleft_right15">	
		<div class="row">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="livicon" data-name="notebook" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
						Journal Entry Voucher
					</h3>
				</div>
				
				<div class="panel-body">
					<div class="panel-toolbar">
						<div class="pull-left">
							<a href="financials_jevlist">
								<button class=" btn btn-default">
									<i class="livicon" data-name="arrow-left" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
									 Back
								</button>
							</a>
						</div>
				
						<div class="pull-right">
							<a href=#>
								<button type="button" class=" btn btn-default btn-sm">
									<i class="livicon" data-name="edit" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
									 Edit JEV
								</button>
							</a>
						</div>
					</div>
				
				<br>	
				<br>
				<br>	
				<br>	
				
					<div class="row acc-wizard">
						<div class="col-md-3 pd-2">
							<ol class="acc-wizard-sidebar">
								<li class="acc-wizard-todo acc-wizard-active">
									<a href="#part1">Particulars</a>
								</li>
								<li class="acc-wizard-todo">
									<a href="#part2">Accounting Entries</a>
								</li>
								<li class="acc-wizard-todo">
									<a href="#part3">Supporting Documents</a>
								</li>
								<li class="acc-wizard-todo">
									<a href="#part4">Review Description</a>
								</li>
							</ol>
						</div>
						
						<div class="col-md-9 pd-r">
							<div id="accordion-demo" class="panel-group">
							
								<!-- Part I -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#part1" data-parent="#accordion-demo" data-toggle="collapse">Particulars</a>
										</h4>
									</div>
                                            <div id="part1" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    <form id="form-part1">
                                                    	
                                                    	<!-- Remove Placeholder After -->
                                                    	<fieldset disabled>
                                                   			<!-- JEV No. -->
                                                    		<div class="col-md-4 form-group pull-left">
                                                    			<label>JEV No.</label>
                                                    				<div class="input-group"> 	
                                                    					<input type="text" class="form-control required " placeholder="00-2018-03-SAMP"/>
                                                    				</div>
                                                    		</div>
                                                   			
                                                   			<!-- Entry Date -->
                                                    		<div class="col-md-4 form-group pull-right">
                                                    			<label>Entry Date</label>
                                                    				<div class="input-group"> 	
                                                    					<div class="input-group-addon">
                                                    						<i class="fa fa-calendar"></i>
                                                    					</div>
                                                    					<input type="text" class="form-control required " placeholder="03/30/2018" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
                                                    				</div>
                                                    		</div>
                                                    		
                                                    		<!-- Transaction Type -->
                                                    		<div class="col-md-12 form-group">
                                                    			<label>Transaction Type</label> 
                                                    				<select id="e1" class="form-control select2">
                                                    					<option value="1">Cash Disbursement</option>
                                                    					<option value="2">Disbursement</option>
                                                    				</select>
                                                    		</div>
                                                    		
                                                    		<!-- JEV Creator -->
                                                    		<div class="col-md-12 form-group">
                                                    			<label>Prepared by</label>
                                                    				<div class="input-group"> 	
                                                    					<input type="text" class="form-control required " placeholder="Edrian Valdez"/>
                                                    				</div>
                                                    		</div>
                                                    		
                                                    		<!-- JEV Remarks -->
                                                    		<div class="col-md-12 form-group">
																<label>Remarks</label>
																	<textarea id="textarea" class="form-control" style="resize: none" maxlength="1000" rows="3" placeholder="Journal Entry Voucher - March 20, 2018"></textarea>
															</div>
                                                    	</fieldset>
                                                    	
                                                    	<!-- Next Button -->
                                                    	<div></div>
                                                    	<div class="acc-wizard-step pull-right"></div>
	
                                                    </form>
                                                </div>
                                            </div>
                                 </div>
                                 
                                 <!-- Part II -->
                                 <div class="panel panel-default">
                                 	<div class="panel-heading">
                                 		<h4 class="panel-title">
                                 			<a href="#part2" data-parent="#accordion-demo" data-toggle="collapse">Accounting Entries</a>
                                 		</h4>
                                 	</div>
                                 	
                                 	<div id="part2" class="panel-collapse collapse awd-h" style="height: 36.400001525878906px;">
                                 		<div class="panel-body">
                                 			<form id="form-part2">
                                 				
                                 				<fieldset disabled>
                                 				<div class="portlet box primary">
                                 					<div class="portlet-title">
                                 						<div class="caption" style="position: relative; top: 0.25em">
                                 						
                                 						</div>
                                 						<div class="pull-right">
                                 							<button type="button" class="btn btn-success btn-sm">Add row</button>
                                 							<button type="button" class="btn btn-danger btn-sm">Delete row</button>
                                 						</div>
                                 					</div>
                                 					
                                 					<div class="portlet-body">
                                 						<div class="table-responsive">
                                 							<table class="table table-striped table-bordered table-hover">
                                 							
                                 							<thead>
                                 								<tr>
                                 									<th class="col-md-2">Responsibility <br> Center</th>
                                 									<th class="col-md-2">Debit Account</th>
                                 									<th>Debit <br> Amount</th>
                                 									<th class="col-md-2">Credit Account</th>
                                 									<th>Credit <br> Amount</th>
                                 									<th class="col-md-4">Explanation</th>
                                 								</tr>
                                 							</thead>
                                 							
                                 							<tbody>
                                 								<tr>
                                 									<td></td>
                                 									<td></td>
                                 									<td></td>
                                 									<td></td>
                                 									<td></td>
                                 									<td></td>
                                 								</tr>
                                 							</tbody>
                                 							
                                 							<tfoot>
                                 								<tr>
                                 									<td></td>
                                 									<td>Total Debit</td>
                                 									<td></td>
                                 									<td>Total Credit</td>
                                 									<td></td>
                                 									<td></td>
                                 								</tr>
                                 							</tfoot>
                                 						</table>
                                 					</div>
                                 				</div>
                                 				</div>
                                 				
                                 				</fieldset>
                                 				
                                 				<!-- Next Button -->
                                 				<div class="acc-wizard-step"></div>
                                 			</form>
                                 		</div>
                                 	</div>
                                 </div>
                                 
                                 <!-- Part III -->
                                 <div class="panel panel-default">
                                 	<div class="panel-heading">
                                 		<h4 class="panel-title">
                                 			<a href="#part3" data-parent="#accordion-demo" data-toggle="collapse">Supporting Documents</a>
                                 		</h4>
                                 	</div>
                                 	
                                 	<div id="part3" class="panel-collapse collapse" style="height: 36.400001525878906px;">
                                 		<div class="panel-body">
                                 			<form id="form-part3">
                                 				
                                 				<fieldset disabled>
                                 				<div class="portlet box primary">
                                 					<div class="portlet-title">
                                 						<div class="caption" style="position: relative; top: 0.25em">
                                 						</div>
	                                 					<div class="pull-right">
	                                 						<button type="button" class="btn btn-success btn-sm">Add row</button>
	                                 						<button type="button" class="btn btn-danger btn-sm">Delete row</button>
	                                 					</div>
	                                 				</div>
	                                 				
	                                 				<div class="portlet-body">
	                                 					<table class="table">
	                                 						<thead>
	                                 							<tr>
	                                 								<th class="col-md-4">Type</th>
	                                 								<th class="col-md-4">Code</th>
	                                 								<th class="col-md-2">Date</th>
	                                 							</tr>
	                                 						</thead>
	                                 						
	                                 						<tbody>
	                                 							<tr>
	                                 								<td>
	                                 									<select id="e1" class="form-control select2">
																			<option value="Receipt">Receipt</option>
																			<option value="Voucher">Voucher</option>
																		</select>
																	</td>
																	<td><input type="text" class="form-control" /></td>
																	<td><input type= "date" class="form-control" data-inputmask= "'alias': 'mm/dd/yyyy'" /></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>		
                                 				
                                 				</fieldset>
                                 				
                                 				<!-- Next Button -->
                                 				<div class="acc-wizard-step"></div>
                                 			</form>
                                 		</div>
                                 	</div>
                                 </div>
                                 
                                 <!-- Part IV -->
                                 <div class="panel panel-default">
                                 	<div class="panel-heading">
                                 		<h4 class="panel-title">
                                 			<a href="#part4" data-parent="#accordion-demo" data-toggle="collapse">Review Description</a>
                                 		</h4>
                                 	</div>
                                 	<div id="part4" class="panel-collapse collapse" style="height: 36.400001525878906px;">
                                		<div class="panel-body">
                                			<form id="form-part4">
                                				
                                				<fieldset>
                                				<!-- JEV Checker -->
                                				<div class="col-md-12 form-group">
                                					<label>Reviewed by</label>
                                						<div class="input-group"> 	
                                							<input type="text" class="form-control required " placeholder="Accountant"/>
                                						</div>
                                				</div>
                                				
                                				<!-- JEV Reviewer Remarks -->
                                				<div class="col-md-12 form-group">
                                					<label>Remarks</label>
                                						<textarea id="textarea" class="form-control" style="resize: none" maxlength="1000" rows="3" placeholder="Write here..."></textarea>
                                				</div>
                                				
                                				<!-- Change Status -->
                               					<div class="col-md-12 form-group">
                               						<label>Status</label> 
                               							<select id="e1" class="form-control select2">
                               								<option value="1">Pending</option>
                               								<option value="2">Approve</option>
                               								<option value="3">Disapprove</option>
                               							</select>
                               					</div>
                                				
                                				</fieldset>
                                				
                                				<!-- Next Button -->
                                				<div class="acc-wizard-step"></div>
                                			</form>
                                		</div>
                                	</div>
                                </div>
                          </div>
                          
                          <!-- Save and Cancel Button -->
                          <div>
							  <div class="btn-group pull-right">
							  	<a href=#>
							  		<button class=" btn btn-default">
							  			<i class="livicon" data-name="remove-circle" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
										Cancel 
									</button>
								</a>
							  </div>
							  
							   <div class="btn-group pull-right">
								<a href=#>
									<button class=" btn btn-success">
										<i class="livicon" data-name="check-circle" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
										 Save
									</button>
								</a>
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

<!-- Added -->
<script src="resources/vendors/wizard/acc-wizard-master/js/acc-wizard.min.js"></script>
<script src="resources/js/pages/accordionformwizard.js" type="text/javascript"></script>

<script src="resources/js/pages/formelements.js" type="text/javascript"></script>

<script src="resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
<script src="resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
<script src="resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
<script src="resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="resources/vendors/select2/select2.js" type="text/javascript"></script>
<script src="resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>

<script type="text/javascript" src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>

</body>
</html>