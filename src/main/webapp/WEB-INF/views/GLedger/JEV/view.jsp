<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JEV View</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <!-- page level css -->
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/x-editable/css/bootstrap-editable.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/pages/user_profile.css" rel="stylesheet" type="text/css"/>
    <!--end of page level css-->
    
    <%@ include file = "../../commonHead.jsp" %>
</head>

<body class="skin-josh">

<%@ include file = "../../commonHeader.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@ include file = "../../commonLeft.jsp" %>

<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <!--section starts-->
        <h1>View Journal Entry Voucher</h1>
    </section>
    <!--section ends-->
    
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel-body">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="18"></i>
                                Journal Entry Voucher
                            </h3>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped" id="users">
                                <tr>
                                    <td>Entry Date</td>
                                    <td>
                                        <fmt:formatDate value="${modelJEV.jev_date}" pattern="yyyy-MM-dd" var="jsp_jev_date"/>
                                        <label>${jsp_jev_date}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Fund</td>
                                    <td>
                                        <label>${modelJEV.fund_uid_name}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Transaction Type</td>
                                    <td>
                                        <label>${modelJEV.trans_transaction_type_uid_name}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Transaction Template</td>
                                    <td>
                                        <label>${modelJEV.tmp_header_uid_name}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Responsibility Center</td>
                                    <td>
                                        <label>${modelJEV.resp_center_uid_name}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Text Area</td>
                                    <td>
                                        <p>${modelJEV.particulars}</p>
                                    </td>
                                </tr>
                            </table>
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
    <!-- begining of page level js -->
    <!-- Bootstrap WYSIHTML5 -->
    <script src="resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js" type="text/javascript"></script>
    <script src="resources/vendors/x-editable/jquery.mockjax.js" type="text/javascript"></script>
    <script src="resources/vendors/x-editable/bootstrap-editable.js" type="text/javascript"></script>
    <script src="resources/js/pages/user_profile.js" type="text/javascript"></script>
    <!-- end of page level js -->
</body>
</html>
