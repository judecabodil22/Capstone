<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- global level css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <!-- end of global level css -->
    <!-- page level css -->
    <link href="resources/css/pages/login2.css" rel="stylesheet" />
    <link href="resources/vendors/iCheck/skins/minimal/blue.css" rel="stylesheet" />
    <!-- styles of the page ends-->
    <style>
        #btnLogin {
            display: none;
        }
    </style>
    
    <link href="resources/css/pages/form2.css"  rel="stylesheet"/>
    <link href="resources/css/pages/form3.css" rel="stylesheet"/>
    <link href="resources/vendors/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet" />
    <link href="resources/vendors/validation/dist/css/bootstrapValidator.min.css" rel="stylesheet"/>
</head>

<c:choose>
    <c:when test="${not empty message}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            ${message}
        </div>
    </c:when>
    <c:otherwise>
    </c:otherwise>
</c:choose>
<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class=" col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3  col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Financial System</h3>
                    </div>
                    <div class="panel-body">
                        <form:form action="login" modelAttribute="modelBindUser" method="post" accept-charset="UTF-8" role="form">
                            <fieldset>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="at" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <form:input path="user_name" class="form-control" placeholder="Username" name="user_name" type="text" required="required" />
                                    <span class="input-group-addon danger">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </span>
                                </div>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="key" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <form:input path="pass_word" class="form-control" placeholder="Password" name="password" type="password" value="" required="required" />
                                    <span class="input-group-addon danger">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </span>
                                </div>
                                <a id="linkLogin" href="javascript:void();" class="btn btn-lg btn-primary btn-block">Login</a>
                            </fieldset>
                            <input id="btnLogin" type="submit" value="Login" name="login">
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- global js -->
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js-->
    <script src="resources/js/TweenLite.min.js"></script>
    <script src="resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $(document).mousemove(function(event) {
            TweenLite.to($('body'), .5, {css:{'background-position':parseInt(event.pageX/8) + "px "+parseInt(event.pageY/12)+"px, "+parseInt(event.pageX/15)+"px "+parseInt(event.pageY/15)+"px, "+parseInt(event.pageX/30)+"px "+parseInt(event.pageY/30)+"px"}});
        });

        //Flat red color scheme for iCheck
        $('input[type="checkbox"].minimal-blue').iCheck({
            checkboxClass: 'icheckbox_minimal-blue'
        });
        
        $('#linkLogin').on('click', function(){
            $('#btnLogin').click();  
        })
    });
    </script>
    <!-- end of page level js-->
    <script src="resources/vendors/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript" ></script>
    <script src="resources/vendors/validation/dist/js/bootstrapValidator.min.js" type="text/javascript" ></script>
    <script src="resources/js/pages/validation.js" type="text/javascript" ></script>
</body>
</html>