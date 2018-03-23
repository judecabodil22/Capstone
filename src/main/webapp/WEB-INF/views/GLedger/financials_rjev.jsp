<html>

<head>
    <meta charset="UTF-8">
    <title>Financials System Project</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->    
    <!--page level css -->
    <link href="resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="resources/css/only_dashboard.css" />
    <!--end of page level css-->
    
    <!-- Added Scripts -->
	<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
	<!-- modal -->
	<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
    <!-- /Added Scripts -->
   
    <%@ include file = "../commonDesign.jsp" %>
</head>

	<aside class="right-side">
	<!-- Main Content -->
		<section class="content-header">
			<h1>Review Journal Entry Voucher</h1>
		</section>
		
		<section class="content">
			<!-- List of JEV -->
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-primary filterable">
						<div class="panel-heading clearfix">
							<h3 class="panel-title pull-left">
								List of JEV
							</h3>
						</div>
						
						<div class="panel-body">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th class="col-md-2">Entry Date</th>
										<th class="col-md-2">JEV No</th>
										<th class="col-md-4">Accountant Name</th>
										<th class="col-md-1">Status</th>
										<th class="col-md-3" colspan=3>Actions</th>
									</tr>
								</thead>
								
								<tbody>
									<tr>
										<td></td> <!-- Date -->
										<td></td> <!-- JEV No -->
										<td></td> <!-- Accountant Name -->
										<td></td> <!-- Status -->
										<td>
											<a href="#" class="btn default btn-xs purple">
												<i class="fa fa-eye"></i>
													View
											</a>
										</td>
										<td>
											<a href="#" class="btn default btn-xs purple">
												<i class="fa fa-edit"></i>
													Edit
											</a>
										</td>
										<td>
											<a href="#" class="btn default btn-xs black">
												<i class="fa fa-trash-o"></i>
													Delete
											</a>
										</td>
									</tr>
                
                            		</tbody>
                            	</table>
                            </div>
                        </div>
                	</div>
                </div>    

			</section>		
		</aside>		
	</div>			
	
	
	<!-- End Scripts -->
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
    <!-- advanced modal scripts -->
	<script src="resources/vendors/modal/js/classie.js"></script>
	<script src="resources/vendors/modal/js/modalEffects.js"></script>
	<!-- /advanced modal scripts -->

    <!-- /Added Scripts -->
    
</body>
</html>