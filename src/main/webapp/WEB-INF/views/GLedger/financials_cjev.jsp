<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta charset="UTF-8">
<title>Financials System Project</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />;
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

<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />

<%@ include file="../commonDesign.jsp"%>
</head>

<aside class="right-side">

	<!-- Main Content -->
	<section class='content-header'>
		<h1>Create Journal Entry Voucher</h1>
	</section>
	
	<section class="content paddingleft_right15">	
		<form accept-charset=UTF-8>
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="livicon" data-name="notebook" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
						Journal Entry Voucher
					</h3>
				</div>
				
				<div class="panel-body">		
					<div class="row acc-wizard">
						<div class="col-md-3 pd-2">
							<ol class="acc-wizard-sidebar">
								<li class="acc-wizard-todo acc-wizard-active">
									<a href="#part1">Particulars</a>
								</li>
								<li class="acc-wizard-todo ">
									<a href="#part2">Accounting Entries</a>
								</li>
								<li class="acc-wizard-todo">
									<a href="#part3">Supporting Documents</a>
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
                                                  
                                                    	
                                                    	<!-- Remove Placeholder After -->
                                                    	<fieldset>                                   			
                                                   			<!-- Entry Date -->
                                                    		<div class="col-md-4 form-group pull-left">
                                                    			<label>Entry Date</label>
                                                    				<div class="input-group"> 	
                                                    					<div class="input-group-addon">
                                                    						<i class="fa fa-calendar"></i>
                                                    					</div>
                                                    					<input type="date" class="form-control required" data-inputmask="'alias': 'mm/dd/yyyy'" />	
                                                    				</div>
                                                    		</div>
                                                    		
                                                    		<!-- Transaction Type -->
                                                    		<div class="col-md-12 form-group">
                                                    			<label>Transaction Type</label> 
                                                    				<select id="trnsctype" class="form-control select2">
                                                    					<option value="Cash Receipts">Cash Receipts</option>
																		<option value="Cash Disbursement">Cash Disbursement</option>
																		<option value="Non-cash Transactions">Non-cash Transactions</option>
                                                    				</select>
                                                    		</div>
                                                    		
                                                    		<!-- JEV Creator -->
                                                    		<div class="col-md-12 form-group">
                                                    			<label>Prepared by</label>
                                                    				<div class="input-group"> 	
                                                    					<input class="form-control" id="jev_creator">
                                                    				</div>
                                                    		</div>
                                                    		
                                                    		<!-- JEV Remarks -->
                                                    		<div class="col-md-12 form-group">
																<label>Remarks</label>
																	<textarea id="textarea" class="form-control" style="resize: none" maxlength="1000" rows="3" placeholder="Write here..."></textarea>
															</div>
																					
                                                    	</fieldset>
                                                    	
                                                    	<!-- Next Button -->
                                                    	<div class="acc-wizard-step"></div>
                                                    	
                                                   
                                                </div>
                                            </div>
                                 </div>
                                 
                                 <!-- Part II -->
                                 <div class="panel panel-default">
                                 	<div class="panel-heading">
                                 		<h4 class="panel-title">
                                 			<a href="#part2" data-parent="#accordion-demo" data-toggle="collapse" class="acc-wizard-step">Accounting Entries</a>
                                 		</h4>
                                 	</div>
                                 	
                                 	<div id="part2" class="panel-collapse collapse awd-h" style="height: 36.400001525878906px;">
                                 		<div class="panel-body">
                                 			
                                 				
                                 				<fieldset>
                                 				<div class="portlet box primary">
                                 					<div class="portlet-title">
                                 						<div class="caption" style="position: relative; top: 0.25em">
                                 						
                                 						</div>
                                 						<div class="pull-right">
                                 							<button type="button" class="btn btn-success btn-sm" id="add_rows">Add row</button>
                                 							<button type="button" class="btn btn-danger btn-sm" id="delete_row2">Delete row</button>
                                 						</div>
                                 					</div>
                                 					
                                 					<div class="portlet-body">
                                 						<div class="table-responsive">
                                 							<table class="table table-striped table-bordered table-hover" id=tab_logic>
                                 							
                                 							<thead>
                                 								<tr>
                                 									<th class="col-md-2">Responsibility Center</th>
                                 									<th class="col-md-2">Debit Account</th>
                                 									<th>Debit Amount</th>
                                 									<th class="col-md-2">Credit Account</th>
                                 									<th>Credit <br> Amount</th>
                                 									<th class="col-md-4">Explanation</th>
                                 								</tr>
                                 							</thead>
                                 							
                                 							<tbody id="tableAppend">
                                 								<tr id="addr0">
                                 									<td>
                                 										<select  class="form-control resp_name">
                                 											<c:forEach var="resp" items="${respCenter}">
                                 												<option value="${resp.resp_center_description}">
																						${resp.resp_center_description}
																				</option>
                                 											</c:forEach>
																		</select>
																	</td>
																	
																	<td>
                                 										<select class="form-control dbcoa_name">
                                 											<c:forEach var="coa" items="${coaAccount}">
                                 												<option value="${coa.coa_description}">
																					<c:out value="${coa.coa_description}" />
																				</option>
                                 											</c:forEach>
																		</select>
																	</td>
																	
																	<td>
																		<input type="number" class="form-control debit jevd_dbamt" onkeyup="calculations();" value="0" maxlength="19" />
																	</td>
																	
																	<td>
                                 										<select class="form-control crcoa_name">
                                 											<c:forEach var="coa" items="${coaAccount}">
                                 												<option value="${coa.coa_description}">
																					<c:out value="${coa.coa_description}" />
																				</option>
                                 											</c:forEach>
																		</select>
																	</td>

																	<td>
																		<input type="number" class="form-control credit jevd_cramt" onkeyup="calculations();" value="0" maxlength="19" />
																	</td>
																	<td>
																		<input type="text" class="form-control jevd_expl" maxlength="500" />
																	</td>
                                 								</tr>
																<tr id='addr1'></tr>
                                 							</tbody>
                                 							
                                 							<tfoot>
                                 								<tr>
                                 									<td></td>
                                 									<td>Total Debit</td>
                                 									<td><input type="text"  value="0" id = "totalDebit" disabled/></td>
                                 									<td>Total Credit</td>
                                 									<td><input type="text"  value="0" id = "totalCredit" disabled/></td>
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
                                 		
                                 				
                                 				<fieldset>
                                 				<div class="portlet box primary">
                                 					<div class="portlet-title">
                                 						<div class="caption" style="position: relative; top: 0.25em">
                                 						</div>
	                                 					<div class="pull-right">
	                                 						<button type="button" class="btn btn-success btn-sm" id="add_rows2">Add row</button>
	                                 						<button type="button" class="btn btn-danger btn-sm" id="delete_row2">Delete row</button>
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
	                                 						
	                                 						<tbody id="sdtableAppend">
                                 								<tr id="sdaddr0">
	                                 								<td>
	                                 									<select class="form-control select2 jevsd_type">
																			<option value="Receipt">Receipt</option>
																			<option value="Voucher">Voucher</option>
																		</select>
																	</td>
																	<td><input type="text" class="form-control jevsd_value" /></td>
																	<td><input type="date" class="form-control jevsd_date" data-inputmask= "'alias': 'mm/dd/yyyy'" /></td>
																</tr>
																<tr id='sdaddr1'></tr>
															</tbody>
														</table>
													</div>
												</div>		
                                 				
                                 				</fieldset>
                                 				
                                 				<!-- Next Button -->
                                 				<div class="acc-wizard-step"></div>
                                 			
                                 		</div>
                                 	</div>
                                 </div>
                          </div>
                          
                          <!-- Save and Cancel Button -->
                          <div>
							  <div  class="btn-group pull-right">
							  	<a href=#>
							  		<button type="button" class=" btn btn-default">
							  			<i class="livicon" data-name="remove-circle" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
										Cancel 
									</button>
								</a>
							  </div>
							  
							   <div class="btn-group pull-right">
								
									<button type="button" class=" btn btn-success" id="saveToController">
										<i class="livicon" data-name="check-circle" data-size="20" data-c="#000" data-hc="#fff" data-loop="true"></i>
										 Save
									</button>
								
							  </div>
						  </div>
							                        
                      </div>
                  </div>
              </div>
           </div>
        </div>
     </form>
   </section>
</aside>

</div>

<!-- global js -->
<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Add rows (Supporting Documents) -->
<script>
	$(document).ready(function() {
	
		$('#add_rows2').click(function() 
				{	
						$('#sdaddr0').clone().appendTo('#sdtableAppend');
				});
		
		$('#saveToController').click(function()
				{
			var date = new Date();
			var dateToJev = 'JEV# '+ date.getFullYear() + '' +
		  					date.getMonth()+''+date.getDate()+''+date.getTime();
			var dateToJevDate = date.getMonth()+'/'+date.getDate()+'/'+date.getFullYear();
			
			var jts=$('#trnsctype').val();
			var dbamt=$('#totalDebit').val();
			var cramt=$('#totalCredit').val();
			var creator=$('#jev_creator').val();
			var remarks=$('#textarea').val();
			var pending='Pending'
			
			var JEV = 
				{
					jev_no:   		dateToJev,
			        jev_date: 		dateToJevDate,
			        jev_trans_type: jts,
					tot_dbamt:		dbamt,
					tot_cramt:		cramt,
					jev_creator:	creator,
					jev_remarks:	remarks,
					tstat_name:		pending,
									
					resp_name: [],		
					dbcoa_name:[],
					jevd_dbamt:[],
					crcoa_name:[],
					jevd_cramt:[],
					jevd_expl:[],
					
					jevsd_type:[],
					jevsd_value:[],	
					jevsd_date:	[]
									
				}
			
				$('.resp_name').each(function()
						{
							JEV.resp_name.push($(this).val());
						})
						
				$('.dbcoa_name').each(function()
						{
							JEV.dbcoa_name.push($(this).val());
						})
				
				$('.jevd_dbamt').each(function()
						{
							JEV.jevd_dbamt.push($(this).val());
						})
						
				$('.crcoa_name').each(function()
						{
							JEV.crcoa_name.push($(this).val());
						})
						
				$('.jevd_cramt').each(function()
						{
							JEV.jevd_cramt.push($(this).val());
						})
						
				$('.jevd_expl').each(function()
						{
							JEV.jevd_expl.push($(this).val());
						})
						
				$('.jevsd_type').each(function()
						{
							JEV.jevsd_type.push($(this).val());
						})
						
				$('.jevsd_value').each(function()
						{
							JEV.jevsd_value.push($(this).val());
						})
						
				$('.jevsd_date').each(function()
						{
							JEV.jevsd_date.push($(this).val());
						})
				
				$.ajax({
					
					type:'POST',
					contentType:'application/json; charset=utf-8',
					dataType:'json',
					url:'${pageContext.request.contextPath}/CjevAjax',
					data: JSON.stringify(JEV),
					success:function(result)
					{
						alert('Success');
					},
					error:function(e)
					{
						alert('error')
					}
				
				})
				
				
						
				
				});
						
						
						
					});
	
	

	
</script>

<!-- Add rows (Accounting Entries) -->
<script>
	$(document).ready(function() 
			{	
					$('#add_rows').click(function()
							{
								$('#addr0').clone().appendTo('#tableAppend');
							});
					
					
					
			});

	function calculations() {
	
		var sumOfDebit = 0;
		var sumOfCredit = 0;

		$('.debit').each(function() {
			sumOfDebit += parseInt(this.value) || 0;
			$('#totalDebit').val(sumOfDebit);
		})

		$('.credit').each(function() {
			sumOfCredit += parseInt(this.value) || 0;

			$('#totalCredit').val(sumOfCredit);

		})

	}
</script>




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