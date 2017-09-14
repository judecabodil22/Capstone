<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <html>
<head>
    <title>Financials | General Ledger</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- global level css -->
    
    
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/pages/login2.css" rel="stylesheet">
    <link href="resources/vendors/iCheck/skins/minimal/blue.css" rel="stylesheet">
    
   <%--  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> 
    <link href="<c:url value="/resources/css/pages/login2.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/vendors/iCheck/skins/minimal/blue.css" />" rel="stylesheet"> --%>
    <!-- styles of the page ends-->
</head>

<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class=" col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3  col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form:form accept-charset="UTF-8" role="form" action="login" modelAttribute="modelBindUser" method="post">
                            <fieldset>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="at" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <form:input class="form-control" placeholder="Username" name="user_name" path="user_name" type="text" />
                                </div>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="key" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <form:input class="form-control" placeholder="Password" name="pass_word" path="pass_word" type="password" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me" class="minimal-blue">
                                        Remember Me
                                    </label>
                                </div>
                              		<input type="submit" value="Login">
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- global js -->
     <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
     <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    
    <!--livicons-->
     <script src="<c:url value="/resources/vendors/livicons/minified/raphael-min.js" />"></script>
     <script src="<c:url value="/resources/vendors/livicons/minified/livicons-1.4.min.js" />"></script>
    <!-- end of global js -->
    <!-- begining of page level js-->
    <script src="<c:url value="/resources/js/TweenLite.min.js" />"></script>
    <script src="<c:url value="/resources/vendors/iCheck/icheck.js" />"></script>
    
    <script type="text/javascript">
    $(document).ready(function() {
        $(document).mousemove(function(event) {
            TweenLite.to($('body'), .5, {css:{'background-position':parseInt(event.pageX/8) + "px "+parseInt(event.pageY/12)+"px, "+parseInt(event.pageX/15)+"px "+parseInt(event.pageY/15)+"px, "+parseInt(event.pageX/30)+"px "+parseInt(event.pageY/30)+"px"}});
        });

        //Flat red color scheme for iCheck
        $('input[type="checkbox"].minimal-blue').iCheck({
            checkboxClass: 'icheckbox_minimal-blue'
        });
    });
    </script>
    <!-- end of page level js-->
</body>
 




<%-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${welcome}</h1>

<form action="welcome">
<input type="submit" value="Go to User Registration Page" name="submit">
</form>


<script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />"></script>
<link href="<c:url value="/resources/" />" rel="stylesheet">

</body> --%>
</html>