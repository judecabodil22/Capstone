<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<title>Financials System Project</title>

<!-- Added Script -->
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />

<%@ include file = "../commonDesign.jsp" %>
</head>

<aside class="right-side">
	<section class="content-header">
		<h1>List of Receivables</h1>
	</section>
	
	<section class="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary filterable">
					<div class="panel-heading clearfix">
						<div class="panel-title pull-left">
							<div class="caption">
								<i class="livicon" data-name="sign-in" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
								List of Receivables
							</div>
						</div>
						
						<div class="tools pull-right"></div>
					</div>
					
					<div class="panel-body">
					
					<table class="table-toolbar">
						<div class="btn-group pull-left">
							<a href="financials_ctransac">
								<button class=" btn btn-success">
									<i class="livicon" data-name="plus-alt" data-size="20" data-c="#fff" data-hc="#fff" data-loop="true"></i>
									Collection 
								</button>
							</a>
						</div>
					</table>
					
					
						<table class="table table-striped table-responsive">
							<thead>
								<tr>
									<th>Date</th>
									<th>JEV No.</th>
									<th>Amount</th>
									<th>Status</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>04-03-2018</td>
									<td>	
										<a data-toggle="modal" data-href="#staticview" href="#staticview">00-2018-04-SAMP</a>
									</td>
									<td>P 1,000.00</td>
									<td>
										<span class="label label-sm label-primary">Pending</span>
									</td>
									<td><a class="btn info btn-xs" data-toggle="modal" data-href="#staticview" href="#staticview">
											<i class="livicon" data-name="eye-open" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="View" style="margin-bottom:10px;"></i>
										</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<!-- static modal (view) -->
				<div class="modal fade in" id="staticview" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title">Receivable Information</h4>
							</div>
							
							<div class="panel-body">
								<div class="table-scrollable">
									<table id="tbl1" class="table table-bordered table-striped" style="clear:both">
										<tbody>
											<tr>
												<td>Date</td>
                                                <td>04-03-2018</td>
                                            </tr>
                                            <tr>
                                                <td>JEV No</td>
                                                <td>00-2018-04-SAMP</td>
                                            </tr>
                                            <tr>
                                            	<td>Receivable Type</td>
                                                <td>Accounts Receivable</td>
                                            </tr>
                                            <tr>
                                            	<td>Amount</td>
                                            	<td>P 1,000.00</td>
                                            </tr>
                                            <tr>
                                            	<td>Explanation</td>
                                            	<td>aaaaaaaaaaaaaaaaaaaa<br>aaaaaaaaaaaaaaaaaaaa</td>
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

<!-- Added Scripts -->
<script src="resources/vendors/modal/js/classie.js"></script>
<script src="resources/vendors/modal/js/modalEffects.js"></script>

</body>
</html>