<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta charset="UTF-8">
<title>Financials System Project</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'name='viewport'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elemen rts and media queries -->
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
<!-- Added Scripts -->

<!-- start add row -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
<!-- daterange picker -->
<link href="resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<!--select css-->
<link href="resources/vendors/select2/select2.css" rel="stylesheet" />
<link href="resources/vendors/select2/select2-bootstrap.css" rel="stylesheet" />

<!-- tables -->
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/datatables/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />

<!-- modal -->
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />

<!-- /Added Scripts -->

<%@ include file="../commonDesign.jsp"%>
</head>


                                           
<aside class="right-side">

	<!-- Main Content -->
	<section class='content-header'>
		<h1>Create Journal Entry Voucher</h1>
	</section>

	<section class="content">
		<form:form action="financials_createjev" modelAttribute="insert_cjev">

			<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Journal Entry Voucher</h3>
					</div>


					<div class="panel-body">
						<div class="bs-example">
							<ul class="nav nav-pills">
								<li class="active"><a href="#page1" data-toggle="tab">Particulars</a>
								</li>
								<li><a href="#page2" data-toggle="tab">Accounting
										Entries</a></li>
								<li><a href="#page3" data-toggle="tab">Supporting
										Documents</a></li>
							</ul>

					<br>

					<div id="myTabContent" class="tab-content">
						<!-- Page I -->
						<div class="tab-pane fade active in" id="page1">

							<!-- Entry Date -->
							<div class="col-md-4 form-group">
								<label>Entry Date</label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-calendar"></i>
									</div>
									<input type="text" class="form-control required"
										placeholder="mm/dd/yyyy"
										data-inputmask="'alias': 'mm/dd/yyyy'" data-mask />
								</div>
							</div>


							<!-- Transaction Type -->
							<div class="col-md-12 form-group">
								<label>Transaction Type</label> <select id="e1"
									class="form-control select2">
									<option value="Cash Receipts">Cash Receipts</option>
									<option value="Cash Disbursement">Cash Disbursement</option>
									<option value="Non-cash Transactions">Non-cash Transactions</option>
								</select>
							</div>

							<!-- Buttons -->
							<div class="form-group pull-right">
								<button type="submit"
									class="btn btn-responsive btn-default disabled">Back</button>
								<a href="#page2" data-toggle="tab">
									<button type="submit" class="btn btn-responsive btn-primary">Next</button>
								</a>
							</div>


						</div>

						<br>

						
							<!-- Page II -->
							<div class="tab-pane fade" id="page2">
								<div class="portlet box primary">
									<div class="portlet-title">
										<div class="caption" style="position: relative; top: 0.25em">Table of Accounts</div>

										<div class="pull-right">
											<button type="button" class="btn btn-success btn-sm" id="add_row2">Add row</button>
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
														<th class="col-md-1">Debit Amount</th>
														<th class="col-md-2">Credit Account</th>
														<th class="col-md-1">Credit Amount</th>
														<th class="col-md-4">Explanation</th>
													</tr>
												</thead>

												<tbody id="tableAppend">
													<tr id="addr0">

														<td><form:select
															class="form-control" path="resp_name" name="resp_name">
															<c:forEach var= "resp" items= "${respCenter}">

																<option value="${resp.resp_center_description}">
          											<c:out value="${resp.resp_center_description}"/>
    												</option>
															</c:forEach>
														</form:select></td>

														<td><form:select
															class="form-control" path="dbcoa_name" name="dbcoa_name">
															<c:forEach var= "coa" items= "${dropDownAccount}">

																<option value="${coa.coa_description}">
          											<c:out value="${coa.coa_description}"/>
    												</option>
															</c:forEach>
														</form:select></td>
														<td><form:input type="number" path="jevd_dbamt" class="form-control debit" onkeyup="calculations();" value="0" maxlength="19" /></td>

														<td><form:select path="crcoa_name" id="e1" class="form-control select2">
																<optgroup label="Assets">
																	<option value="1">Cash</option>
																	<option value="2">Accounts Receivable</option>
																	<option value="3">Notes Receivable</option>
																</optgroup>
																<optgroup label="Liabilities">
																	<option value="1">Accounts Payable</option>
																	<option value="1">Notes Payable</option>
																</optgroup>
															</form:select></td>
														<td><form:input type="number" path="jevd_cramt" class="form-control credit" onkeyup="calculations();" value="0" maxlength="19" /></td>
														<td><input type="text" class="form-control" maxlength="500" /></td>
													</tr>
													<tr id='addr1'></tr>
												</tbody>

												<tfoot>
													<tr>
														<td></td>
														<td>Total Debit</td>
														<td><form:input path= "tot_dbamt" id = "totalDebit" readOnly = "true"/></td>
														<td>Total Credit</td>
														<td><form:input path = "tot_cramt" id= "totalCredit" readOnly = "true"/></td>
													</tr>
												</tfoot>

											</table>
										</div>

										<!-- Buttons -->
										<div class="form-group pull-right">
											<a href="#page1" data-toggle="tab">
												<button type="submit" class="btn btn-responsive btn-default">Back</button>
											</a> <a href="#page3" data-toggle="tab">
												<button type="submit" class="btn btn-responsive btn-primary">Next</button>
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Page III -->
							<div class="tab-pane fade" id="page3">

								<!-- Table of Supporting Documents -->
								<div class="row">
									<div class="col-md-12">
										<div class="portlet box primary">

											<div class="portlet-title">
												<div class="caption" style="position: relative; top: 0.25em">
													Table of Supporting Documents</div>

												<div class="pull-right">
													<button type="button" class="btn btn-success btn-sm" id="add_row2">Add row</button>
													<button type="button" class="btn btn-danger btn-sm" id="delButton">Delete row</button>
												</div>
											</div>

											<div class="portlet-body">
												<table class="table" id="table3">
													<thead>
														<tr>
															<th class="col-md-4">Type</th>
															<th class="col-md-4">Value</th>
															<th class="col-md-2">Date</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td><form:select id="e1" path="jevsd_type" class="form-control select2">
																	<option value="Receipt">Receipt</option>
																	<option value="Voucher">Voucher</option>
																</form:select></td>

															<td><form:input path="jevsd_value" type="text" class="form-control" /></td>

															<td><form:input path= "jevsd_date"  type= "date" class="form-control" data-inputmask= "'alias': 'mm/dd/yyyy'" /></td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>

									<!-- Remarks -->
									<div class="col-md-12 form-group">
										<label>Remarks</label>
										<form:textarea id="textarea" path="jev_remarks" class="form-control" style="resize: none" maxlength="1000" rows="3" placeholder="Write something here..."></form:textarea>
									</div>

									<!-- Buttons -->
									<div class="form-group pull-right">
										<a href="#page1" data-toggle="tab">
											<button type="submit" class="btn btn-responsive btn-primary">Submit</button>
										</a> <a class="btn btn-responsive btn-default" data-toggle="modal" data-href="#pg3cancel" href="#pg3cancel">Cancel</a>
									</div>

									<!-- Modal -->
									<!-- Cancel Modal pg3 -->
									<div class="modal fade in" id="pg3cancel" tabindex="-1" role="dialog" aria-hidden="false" style="display: none;">
										<div class="modal-dialog modal-md">
											<div class="modal-content">
												<div class="modal-body">
													<p>Do you want to cancel Create JEV?</p>
												</div>
												<div class="modal-footer">
													<a>
														<button type="button" data-dismiss="modal" class="btn btn-default" href="#page1" data-toggle="tab">Yes</button>
													</a>
													<button type="button" data-dismiss="modal" class="btn btn-default">No</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</section>
</aside>

<!-- End of Sidebar -->
</div>

<!-- global js -->
<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<script>
	$(document)
			.ready(
					function() {


						$('#add_row2')
								.click(
										function() {
											$('#addr0').clone().appendTo('#tableAppend');
										});
					});

	function calculations() {
		/*  $('.debit').keyup(function(){
		       
		       if($('.credit').val)
		           {
		             $('.credit').val("0");
		           }
		   });
		 
		 $('.credit').keyup(function(){
		       
		       if($('.debit').val)
		           {
		             $('.debit').val("0");
		           }
		   }); */

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
<script src="resources/vendors/livicons/minified/raphael-min.js"
	type="text/javascript"></script>
<script src="resources/vendors/livicons/minified/livicons-1.4.min.js"
	type="text/javascript"></script>
<script src="resources/js/josh.js" type="text/javascript"></script>
<script src="resources/js/metisMenu.js" type="text/javascript">
	
</script>
<script src="resources/vendors/holder-master/holder.js"
	type="text/javascript"></script>
<!-- end of global js -->

<!-- Added Scripts -->

<!-- form elements scripts -->
<script src="resources/js/pages/formelements.js" type="text/javascript"></script>
<!-- input mask -->
<script src="resources/vendors/input-mask/jquery.inputmask.js"
	type="text/javascript"></script>
<script
	src="resources/vendors/input-mask/jquery.inputmask.date.extensions.js"
	type="text/javascript"></script>
<script
	src="resources/vendors/input-mask/jquery.inputmask.extensions.js"
	type="text/javascript"></script>
<!-- date range picker -->
<script src="resources/vendors/daterangepicker/daterangepicker.js"
	type="text/javascript"></script>
<!-- select 2 -->
<script src="resources/vendors/select2/select2.js"
	type="text/javascript"></script>
<!-- iCheck -->
<script src="resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
<script src="resources/vendors/iCheck/demo/js/custom.min.js"
	type="text/javascript"></script>
<!-- autogrow -->
<script src="resources/vendors/autogrow/js/jQuery-autogrow.js"
	type="text/javascript"></script>
<!-- maxlength -->
<script src="resources/vendors/maxlength/bootstrap-maxlength.min.js"
	type="text/javascript"></script>
<!-- card -->
<script src="resources/vendors/card/jquery.card.js"
	type="text/javascript"></script>
<!-- /form elements scripts -->

<!-- advanced modal scripts -->
<script src="resources/vendors/modal/js/classie.js"></script>
<script src="resources/vendors/modal/js/modalEffects.js"></script>
<!-- /advanced modal scripts -->

<script type="text/javascript"
	src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript"
	src="resources/js/pages/table-advanced.js"></script>

<!-- /Added Scripts -->
</body>
</html>