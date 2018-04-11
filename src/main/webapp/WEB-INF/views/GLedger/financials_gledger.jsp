<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

<!-- Added -->
<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
<link href="resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet" />

<%@ include file="../commonDesign.jsp"%>
</head>

<aside class="right-side">

	<!-- Main Content -->
	<section class='content-header'>
		<h1>General Ledger</h1>
	</section>
	
	<section class="content">
		<div class="row">
			
			<div class="col-md-12">
				<div class="panel panel-primary">
					
					<div class="panel-heading">
						<h3 class="panel-title">
							Petty Cash 
						</h3>
						<span class="pull-right clickable">
							 <i class="glyphicon glyphicon-chevron-up"></i>
                        </span>		
					</div>
					
					<div class="panel-body">
						<div class="table-scrollable">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th class="col-xs-1" colspan="2">Date</th>
										<th>Items</th>
										<th class="col-md-2">Debit Amount</th>
										<th class="col-xs-1" colspan="2">Date</th>
										<th>Items</th>
										<th class="col-md-2">Credit Amount</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${pettycash}" >
									<tr>
										<td>${list.jev_date}</td>
										<td>${list.jev_date}</td>
										<td> </td>
										<td><input value="${list.jevd_dbamt}" type="text" class="form-control debit jevd_dbamt" onkeyup="calculations();" value="0" maxlength="19" disabled/></td>
										<td>${list.jev_date}</td>
										<td>${list.jev_date}</td>
										<td> </td>
										<td><input value="${list.jevd_cramt}" type="text" class="form-control credit jevd_cramt" onkeyup="calculations();" value="0" maxlength="19" disabled/></td>
									</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td></td>
										<td></td>
										<td> </td>
										<td><input type="text"  value="0" id = "totalDebit" disabled/></td>
										<td></td>
										<td></td>
										<td> </td>
										<td><input type="text"  value="0" id = "totalCredit" disabled/></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
			
			
			
			
			
		</div>
	</section>
</aside>

</div>

<!-- Total Debit/Credit -->
<script>
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
<script src="resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"></script>

</body>
</html>