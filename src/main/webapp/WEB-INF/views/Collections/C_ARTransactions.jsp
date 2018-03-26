<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Accounts Receivables | Financials</title>
<%@ include file = "../commonDesign.jsp" %>


        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Accounts Receivables/Collections</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="resources/index.html">
                            <i class="livicon" data-name="home" data-size="20" data-loop="true"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="resources/#">Accounts Receivable</a>
                    
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                
                
                    <div class="col-md-12">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box primary">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="fa-folder-o" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Collections
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <i class="fa fa-user"></i>
                                                    Collectee
                                                </th>
												<th>
                                                    <i class="fa fa-info-circle"></i>
                                                    Type
                                                </th>
                                                <th class="hidden-xs">
                                                    <i class="fa fa-money"></i>
                                                    Balance
                                                </th>
                                                <th>
                                                    <i class="fa fa-rub"></i>
                                                    Total
                                                </th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <a href="resources/#">PUPQC</a>
                                                </td>
                                                <td class="hidden-xs">Tuition Fees</td>
                                                <td>
                                                    <span>&#8369;</span>52560.10
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="resources/#">Aling Bebang</a>
                                                </td>
                                                <td class="hidden-xs">Canteen</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
													
                                                </td>
                                            </tr>
                                            
											<tr>
                                                <td>
                                                    <a href="resources/#">COA</a>
                                                </td>
                                                <td class="hidden-xs">Seminars</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
                                                </td>
                                            </tr>
											<tr>
                                                <td>
                                                    <a href="resources/#">Job Quest Fair</a>
                                                </td>
                                                <td class="hidden-xs">Job Fairs</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
                                                </td>
                                            </tr>
											<tr>
                                                <td>
                                                    <a href="resources/#">Magnus Eventus</a>
                                                </td>
                                                <td class="hidden-xs">Job Fairs</td>
                                                <td>
                                                    <span>&#8369;</span>5760.00
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
                                                </td>
                                            </tr>

											
                                            <tr>
                                                <td>
                                                    <a href="resources/#">WaterPure Ltd</a>
                                                </td>
                                                <td class="hidden-xs">Seminars</td>
                                                <td>
                                                    <span>&#8369;</span>610.50
                                                    <span class="label label-sm label-warning label-mini">Pending</span>
                                                </td>
                                                <td>
                                                    <a class="btn default btn-xs yellow-stripe" data-toggle="modal" data-href="resources/#view" href="resources/#view">View</a>
													<a class="btn btn-success btn-large" data-toggle="modal" data-href="resources/#responsive" href="resources/#responsive">Collect</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
						<div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h4 class="modal-title">Cashiering</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        
                                        <div>
                                                    <label for="input-text-1">OR Number</label>
                                                    <input class="form-control" id="disabledInput" type="text" placeholder="CV0012017" disabled>
													
													
						 
                                                </div>
												
												<div>
												<label for="input-text-1">Type</label>
												<select id="e1" class="form-control select2" disabled>
                                        <optgroup label="Income Generating Projects">
                                            <option value="CT">Canteen</option>
                                            <option value="HI">Job Fair</option>
											<option value="HI">Seminars</option>
                                        </optgroup>
                                        
                                            <option value="CA">Tuition Fees</option>
                                            <option value="NV">Government Fund</option>
												</select>
											
												</div>
											
                                                <div>
                                                    <label for="input-text-1">Collectee</label>
                                                    <input type="name" class="form-control" placeholder="Name" disabled>
                                                    <p class="help-block">Name of Collecter</p>
                                                </div>
                                                											
                                    </div>
                                                                   
                                    <div class="col-md-6">                                 
                                    	 <div>
                                             <label for="input-password-1">Description</label>
                                             <input type="desc" class="form-control" id="input-password-1" placeholder="Transaction Purposes">
											
                                                    
                                         </div>
                                                <div>
                                                    <label for="select-1">Collectment</label>
                                                    <input type="float" class="form-control" id="input-password-1" placeholder=" Please enter amount in Peso (&#8369; 000.00)">
                                                   
                                                </div>
                                                <div class="form-group draggable">
                                                    <label for="select-1">Date</label>
                                                    <input type="date" class="form-control" id="input-password-1">
                                                
													
													</div>
			                              </div>
                                    
                                    
                                </div>
                            </div>
                           
                            <div class="modal-footer">
                                <button type="close" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
					</div>
					
					<!--modal for view!-->
					
					<div class="modal fade in" id="view" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h4 class="modal-title">Collections</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Details</h4>
										
                                        <div class="panel-body">
											<div class="table-scrollable">
												<table id="user" class="table table-bordered table-striped" style="clear:both">
												<tbody>
												<tr>
                                                <td>Institute Name</td>
                                                <td>PUPCQ</td>
												</tr>
												<tr>
													<td>Type</td>
                                                <td>Tuition Fee</td>
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
                                                <td><span>&#8369;</span>52,560.10</td>
												</tr>
												<tr>
                                                <td>Status</td>
                                                <td>Unpaid</td>
												</tr>
												<tr>
                                                <td>Official Receipt(OR) Number</td>
                                                <td>CV0012017</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
							
												
													
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                
                            </div>
                        </div>
                    </div>
				
				
				
				
                    </div>
                </div>
                
                </div>
				
				
				
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
</body>
</html>
