<html>
<title>Advanced Datatables| Josh Admin Template</title>
<%@ include file = "../commonDesign.jsp" %>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>List of Payable</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">Accounts Payable</a>
                    </li>
                    <li class="active">List of Payables</li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
									<div class="caption">
										<i data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
									</div>
                                    
                                </div>
                                <div class="tools pull-right"></div>
                            </div>
							<div class="panel-body">
                               
                             
                               
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>

                                            <th>Transaction Number</th>
											<th>Company Name</th>
                                            <th>Voucher Date</th>
                                            <th>Due Date</th>
											<th>Amount</th>
											<th>Status</th>
											<th colspan="3"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                      <c:forEach var="list" items="${aplist}">
                                    
                                        <tr data-ap_transaction_num="${list.ap_transaction_num}" data-CompanyName="${list.ap_company_name}" data-ap_voucher_date="${list.ap_voucher_date}" data-ap_due_date="${list.ap_due_date}" data-amount="${list.ap_amount}">
                                        	
											<td>${list.ap_transaction_num}</td>
                                            <td>${list.ap_company_name}</td>
                                            <td>${list.ap_voucher_date}</td>
                                            <td>${list.ap_due_date}</td>
											<td>${list.ap_amount}</td>
                                            
                                           
                                            
                                            <c:choose>
                                                 	<c:when test="${list.ap_status == '0'}">
                                                 	  <td> <span class="label label-sm label-success">Paid</span></td>
                                                 	</c:when>
                         							
                         							<c:otherwise>
                         							 <td><span class="label label-sm label-warning">Unpaid</span></td>
                         							</c:otherwise>
                                                 </c:choose>
                                           
                                           
                                           
                                            <td>  
												<a href="#full-width" class="btn default btn-xs purple" id="ToModal" data-toggle="modal" data-href="#full-width">
													<i class="fa fa-eye" ></i>
													View
                                                </a>
                                            </td>
                                            <td>
												<a href="#stack1" class="btn default btn-xs purple" data-toggle="modal" data-href="#stack1">
													<i class="fa fa-edit" ></i>
													Edit
                                                </a>
                                                </td>
                                            <td>
												<a href="#stackdelete" class="btn default btn-xs purple" data-toggle="modal" data-href="#stackdelete">
													<i class="fa fa-trash-o" ></i>
													Request Delete
                                                </a>
											</td>
                                        </tr>
                                       
                                       </c:forEach>
                                        
									</tbody>
                                </table>
                            </div>
                        
                           </div>
                    </div>
                </div>

                <!-- Third Basic Table Ends Here-->
                <!--delete modal starts here-->
                <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title custom_align" id="Heading">
                                    Delete this entry
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="alert alert-warning">
                                    <span class="glyphicon glyphicon-warning-sign"></span>
                                    Are you sure you want to delete this Record?
                                </div>
                            </div>
                            <div class="modal-footer ">
                                <button type="button" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-ok-sign"></span>
                                    Yes
                                </button>
                                <button type="button" class="btn btn-warning" data-dismiss="modal">
                                    <span class="glyphicon glyphicon-remove"></span>
                                    No
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal ends here -->
				 <div class="modal fade in" id="full-width" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">20143242</h4>
                            </div>
                            
						 <div class="panel-body">
                                <div class="table-scrollable">
                                    <table id="user" class="table table-bordered table-striped" style="clear:both">
                                        <tbody>
                                            <tr>
                                                <td>Institute Name</td>
                                                <td id="instName"></td>
                                            </tr>
                                            <tr>
                                                <td>Claimant Name</td>
                                                <td id="claimantName">Kiana Velasco</td>
                                            </tr>
                                            <tr>
                                                <td>Mode of Payment</td>
                                                <td id="modeOfPayment">once a month</td>
                                            </tr>
                                            <tr>
                                                <td>Fund Cluster</td>
                                                <td id="fundCluster">---</td>
                                            </tr>
                                            <tr>
                                                <td>Responsibility Center</td>
                                                <td id="responsibilityCenter">Logistics</td>
                                            </tr>
                                            <tr>
                                                <td>Voucher Date</td>
                                                <td id="voucherDate">2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Due Date</td>
                                                <td id="dueDate">2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Amount</td>
                                                <td id="amount">20,000.00</td>
                                            </tr>
                                            <tr>
                                                <td>Status</td>
                                                <td id="status">Paid</td>
                                            </tr>
                                            <tr>
                                                <td>Disbursement Voucher Number</td>
                                                <td id="disbursementVoucherNumber">DV20140304000012</td>
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
                </div>
				               <div class="modal fade bs-example-modal-sm in" id="stack1" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
              <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">20143242</h4>
                            </div>
                           <div class="panel-body">
                                                <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Company Name</label>
                                                                <input type="text" class="form-control ">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Claimant Name</label>
                                                                <input type="text" class="form-control">
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Responsibility Center</label>
                                                                <select  class="form-control select2">
																<option value="">AAAACK</option>
																</select>
														</div>
														<div class="form-group col-md-12">
														   <label>Voucher Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
														</div>
														   
													
                                                           <form class="form-horizontal">
														   
														<div class="form-group col-md-12">
														   <label>Due Date</label>
															<div class="input-group">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask/>
															</div>
													</div>
													
                                                        </form>
                                                    </div>
													
                                                    <div class="col-md-6">
                                                           <form class="form-horizontal">
														<div class="form-group col-md-12">
                                                                <label for="">Account Type</label>
                                                                <select  class="form-control select2">
																<option value="">Taxes and Licenses</option>
																<option value="">Utilities Expense</option>
																<option value="">Miscellaneous Expense</option>
																<option value="">Repair & Maintenance</option>
																</select>
														</div>
													<div class="form-group col-md-12">
                                                                <label for="">Particulars</label>
                                                                <textarea id="textarea" rows="4" class="form-control"style="resize:none" maxlength="1000" placeholder="Write something here..."></textarea>
													</div>
													<div class="form-group col-md-12">
                                                                <label for="">Status</label>
                                                                <select  class="form-control select2">
																<option value="">Unpaid</option>
																<option value="">Paid</option>
																</select>
														</div>
														<div class="form-group col-md-12">
                                                                <label for="">Disbursement Voucher (DV) Number</label>
                                                                <input type="text" class="form-control">
														</div>
													</form>
                                                </div>
							
                                            </div>
                                        </div>
                        <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Save Changes</button>
                            </div>
                        </div>
                    </div>
                    </div>
                </div><!--- stack1 model -->
 <!--aaack-->
                <!-- stack2 modal-->
       
 
    <!-- ./wrapper -->
    <a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
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
    <script type="text/javascript" src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <!-- <script type="text/javascript" src="resources/vendors/datatables/dataTables.tableTools.min.js"></script> -->
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
	   <!--datetime picker-->
    <script type="text/javascript" src="resources/vendors/datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="resources/vendors/datetimepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	 <!--time picker-->
    <script src="resources/vendors/timepicker/js/bootstrap-timepicker.min.js"></script>
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
		alert('w');
		// using native javascript codes
		  document.getElementById("instName").text = data.CompanyName;
		 document.getElementById("claimantName").text = data.claimantName;
		document.getElementById("modeOfPayment").text = data.modeOfPayment;
		document.getElementById("fundCluster").text = data.fundCluster;
		document.getElementById("responsibilityCenter").text= data.responsibilityCenter;
		document.getElementById("voucherDate").value
		document.getElementById("instName").value
		document.getElementById("instName").value
		document.getElementById("instName").value
		
		// put to modal ----------------------- ends
	});
});



</script>
    
    
    
</body>
</html>
