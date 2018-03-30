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
<!-- Added Scripts -->

<!-- start add row -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->

<!-- Added -->
<link rel="stylesheet" href="resources/css/pages/buttons.css" />
<link href="resources/css/pages/icon.css" rel="stylesheet" type="text/css" />
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/modal/css/component.css" rel="stylesheet" />

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
					<div class="btn-group pull-right">
						<a href="financials_createjev">
							<button class=" btn btn-success">
								<i class="livicon" data-name="plus-alt" data-size="20" data-c="#fff" data-hc="#fff" data-loop="true"></i>
								Create JEV 
							</button>
						</a>
					</div>
				</div>
				
				<br>
				
				<div class="table-scrollable">
					<table class="table table-striped table-bordered table-advance table-hover">
						<thead>
							<tr>
								<th>Date</th>
								<th>JEV No.</th>
								<th>Prepared by</th>
								<th>Remarks</th>
								<th colspan="4"></th> 	
							</tr>
						</thead>
						<tbody>
							<tr>
								<td> March 30, 2018 </td>
								<td>
									<a href="#"> 00-2018-03-SAMP </a>
								</td>
								<td>Edrian Valdez</td>
								<td>Drinking water will not dehydrate you.</td>
								<td><a href="#" class="btn btn-responsive info btn-xs">
                                    	<i class="livicon" data-name="eye-open" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="View" style="margin-bottom:10px;"></i> </a>
                                </td>
                                
                                <td><a href="#" class="btn warning btn-xs">
                                    	<i class="livicon" data-name="edit" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Edit" style="margin-bottom:10px;"></i> </a>
                                </td>
                                
                                <td><a class="btn danger btn-xs" data-toggle="modal" data-href="#staticremove" href="#staticremove">
                                    	<i class="livicon" data-name="trash" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Remove" style="margin-bottom:10px;"></i> </a>
                                </td>
                                
                                <td><a href="#" class="btn default btn-xs">
                                    	<i class="livicon" data-name="columns" data-size="20" data-c="#fff" data-hc="#808080" data-loop="true" data-toggle="tooltip" data-tooltip="tooltip" data-placement="top" data-original-title="Post" style="margin-bottom:10px;"></i> </a>
                                </td>                                                    
							</tr>
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

<!-- Pop-up hover -->
<script type="text/javascript">
    $(function() {
        $("[data-toggle='popover']").popover();
    });
    </script>
    <script type="text/javascript">
    $(document).ready(function() {

        $('.po-markup > .po-link').popover({
            trigger: 'hover',
            html: true, // must have if HTML is contained in popover

            // get the title and conent
            title: function() {
                return $(this).parent().find('.po-title').html();
            },
            content: function() {
                return $(this).parent().find('.po-body').html();
            },

            container: 'body',
            placement: 'right'

        });

    });
    </script>
    <script type="text/javascript">
    $(document).ready(function() {
        $(".tooltip-examples a").tooltip({
            placement: 'top'
        });
    });
    </script>
    <script type="text/javascript">
    $('#myTabContent').slimscroll({
        height: '130px',
        size: '3px',
        color: '#D84A38',
        opacity: 1

    });
    $('#slim2').slimscroll({
        height: '120px',
        size: '3px',
        color: '#35AA47',
        opacity: 1
    });
    $('#slim3').slimscroll({
        height: '100px',
        size: '3px',
        color: '#FE6A0A',
        opacity: 1
    });
    </script>

</body>
</html>