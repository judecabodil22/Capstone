<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Error ${no}</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- global level js-->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- end of globallevel js-->
    <!-- page level styles-->
    <link rel="stylesheet" type="text/css" href="resources/css/pages/404.css" />
    <!-- end of page level styles-->
</head>

<body>
    <div class="hgroup">
        <h1>Error ${no}</h1>
        <div>
            <i class="livicon" data-name="user-ban" data-size="50" data-c="#fff" data-hc="#fff" data-loop="true"></i>
        </div>
        
        <h2>Page is not available</h2>
        <a href="${ctx}/">
            <button type="button" class="btn btn-responsive button-alignment">Home</button>
        </a>
    </div>
    <!-- global js -->
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="resources/vendors/livicons/minified/raphael-min.js"></script>
    <script src="resources/vendors/livicons/minified/livicons-1.4.min.js"></script>
    <script src="resources/vendors/holder-master/holder.js"></script>
    <!-- end of global js -->
    <!-- begining of page level js-->
    <script src="resources/js/404.js"></script>
    <!-- end of page level js-->
</body>
</html>