<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JEV Create</title>
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
    <!--end of page level css-->
    
    <%@ include file = "../../commonHead.jsp" %>
</head>
<body class="skin-josh">

<%@ include file = "../../commonMsg.jsp" %>
<%@ include file = "../../commonHeader.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@ include file = "../../commonLeft.jsp" %>

<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <!--section starts-->
        <h1>Create Journal Entry Voucher</h1>
    </section>
    <!--section ends-->
    
    <section class="content">
        <div class="row">
            <div class="col-md-12">
            
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="18"></i>
                            Journal Entry Voucher
                        </h3>
                    </div>
                    <div class="panel-body">

                        <form:form action="save" modelAttribute="modelBindJEV" method="post" accept-charset="UTF-8" role="form">
                        
                            <!-- Date yyyy-mm-dd -->
                            <div class="form-group">
                                <label>
                                    Entry Date
                                </label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <fmt:formatDate value="${modelJEV.jev_date}" pattern="yyyy-MM-dd" var="jsp_jev_date"/>
                                    <form:input path="jev_date" name="jev_date" value="${jsp_jev_date}"
                                        type="date" class="form-control" data-inputmask="'alias': 'yyyy-mm-dd'" data-mask="data-mask" />
                                    <span class="input-group-addon danger">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </span>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                            
                            <div class="form-group">
                                <label for="e1" class="control-label">
                                    Fund
                                </label>
                                <form:select path="fund_uid" name="fund_uid" id="e1" class="form-control select2">
                                    <c:forEach var="item" items="${listFund}">
                                        <form:option value="${item.code}">${item.name}</form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            
                            <div class="form-group">
                                <label for="e1" class="control-label">
                                    Transaction Type
                                </label>
                                <form:select path="trans_transaction_type_uid" name="trans_transaction_type_uid" id="e1" class="form-control select2">
                                    <c:forEach var="item" items="${listTransType}">
                                        <form:option value="${item.code}">${item.name}</form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            
                            
                            <div class="form-group">
                                <label for="e1" class="control-label">
                                    Transaction Template
                                </label>
                                <form:select path="tmp_header_uid" name="tmp_header_uid" id="e1" class="form-control select2">
                                    <c:forEach var="item" items="${listTemp}">
                                        <form:option value="${item.code}">${item.name}</form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            
                            <div class="form-group">
                                <label for="e1" class="control-label">
                                    Responsibility Center
                                </label>
                                <form:select path="resp_center_uid" name="resp_center_uid" id="e1" class="form-control select2">
                                    <c:forEach var="item" items="${listResp}">
                                        <form:option value="${item.code}">${item.name}</form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            
                            <div class="form-group">
                                <label for="default" class="control-label">Text Area</label>
                                <form:textarea path="particulars" name="particulars" id="textarea" class="form-control" maxlength="1000" rows="2" placeholder="This textarea has a limit of 1000 chars."></form:textarea>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Create JEV">
                        </form:form>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
</aside>
</div>

<%@ include file = "../../commonFoot.jsp" %>

</body>
</html>
