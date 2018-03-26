<!DOCTYPE html>
<html>
 <title>Advanced Datatables| Josh Admin Template</title>

<%@ include file = "../commonDesign.jsp" %>
   
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>List of Receivables</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="resources/index.html">
                            <i class="livicon" data-name="home" data-size="18" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="resources/#">Accounts Receivable</a>
                    </li>
                    <li class="active">List of Receivables</li>
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
										<i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
										Table Tools
									</div>
                                    
                                </div>
                                <div class="tools pull-right"></div>
                            </div>
							
                            <div class="panel-body">
								
                                <table class="table table-striped table-responsive" id="table1">
								
                                     <thead>
                                        <tr>

                                            <th>Transaction Number</th>
											<th>Payee Name</th>
                                            <th>Voucher Date</th>
                                            <th>Due Date</th>
											<th>Amount</th>
											<th>Status</th>
											<th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
											<td>223131321</td>
                                            <td>Eureka's Furniture</td>
                                            <td>2017-04-15</td>
                                            <td>2017-12-30</td>
											<td>20,000.00</td>
                                            <td><span class="label label-sm label-warning">Overdue</span></td>
                                            <td>  
												<a href="resources/#full-width" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#full-width">
													<i class="fa fa-eye" ></i>
													View
                                                </a>
												<a href="resources/#stack1" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stack1">
													<i class="fa fa-eye" ></i>
													Edit
                                                </a>
											</td>
                                        </tr>
                                        <tr>
											<td>20143242</td>
                                            <td>Wilcon</td>
                                            <td>2017-10-15</td>
                                            <td>2018-01-30</td>
											<td>50,000.00</td>
                                            <td> <span class="label label-sm label-success">Paid</span></td>
                                            <td>
												<a href="resources/#full-width" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#full-width">
													<i class="fa fa-eye" ></i>
													View
                                                </a>
												<a href="resources/#stack1" class="btn default btn-xs purple" data-toggle="modal" data-href="resources/#stack1">
													<i class="fa fa-eye" ></i>
													Edit
                                                </a>
											</td>
                                        </tr>
                                        
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
				<!-- view modal starts here -->
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
                                                <td>Payee Name</td>
                                                <td>Blossomcity inc</td>
                                            </tr>
                                            <tr>
                                                <td>Type</td>
                                                <td>Tuition Fee</td>
                                            </tr>
                                            <tr>
                                            <tr>
                                                <td>Responsibility Center</td>
                                                <td>Logistics</td>
                                            </tr>
                                            <tr>
                                                <td>Date</td>
                                                <td>2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Due Date</td>
                                                <td>2017-04-15</td>
                                            </tr>
                                            <tr>
                                                <td>Amount</td>
                                                <td>20,000.00</td>
                                            </tr>
                                            <tr>
                                                <td>Status</td>
                                                <td>Paid</td>
                                            </tr>
                                            <tr>
                                                <td>Official Receipt(OR) Number</td>
                                                <td>DV20140304000012</td>
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
                <!---view modal ends here-->
            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
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
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
</body>
</html>
