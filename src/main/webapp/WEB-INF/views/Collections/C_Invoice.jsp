
<html>
   <title>Reports > Invoice | Financials</title>
<%@ include file = "../commonDesign.jsp" %>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Invoice</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="resources/index.html">
                            <i class="livicon" data-name="home" data-size="16" data-color="#000"></i>
                            Home
                        </a>
                    </li>
                    <li class="active">Extra</li>
                    <li class="active">Invoice</li>
                </ol>
            </section>
            <!-- Main content -->
            <section class="content paddingleft_right15">
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="livicon" data-name="credit-card" data-size="20" data-loop="true" data-c="#fff" data-hc="#fff"></i>
                                Invoice for purchase #CV0012017
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-12  col-sm-4 col-md-4 col-lg-4 pull-left">
                                    <div class="panel panel-primary height">
                                        <div class="panel-heading">Billing Details</div>
                                        <div class="panel-body"> <b>Polytechnic University of the Philippines:</b>
                                            <br>
                                            Don Fabian St.
                                            <br>
                                            Commonwealth,
                                            <br>
                                            Quezon City
                                            <br>
                                            
                                            </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="panel panel-success height">
                                        <div class="panel-heading">Payment Info</div>
                                        <div class="panel-body" style="padding:15px 0px 55px 22px;">
                                            <strong>Type:</strong>
                                            Tuition Fee
                                            <br>
                                            <strong>Desc:</strong> Unpaid tuition fee balance
                                            </div>
                                    </div>
                                </div>
                                
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-right">
                                    <div class="panel panel-warning height">
                                        <div class="panel-heading">Status</div>
                                        <div class="panel-body">
                                            <strong>Remaining Balance:</strong>
                                            <br>
                                            <span>&#8369;</span>5,760.00
                                            <br>
                                            <strong> Due Date:</strong>
                                            Jan 18, 2018
                                            <br><br></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-danger">
                                    <div class="panel-heading">
                                        <strong>Transaction Summary</strong>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-condensed">
                                                <thead>
                                                    <tr>
                                                        <td>
                                                            <strong>Item Name</strong>
                                                        </td>
                                                        <td class="text-center">
                                                            <strong>Item Price</strong>
                                                        </td>
                                                        <td class="text-center">
                                                            <strong>Item Quantity</strong>
                                                        </td>
                                                        <td class="text-right">
                                                            <strong>Total</strong>
                                                        </td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Samsung Galaxy S5</td>
                                                        <td class="text-center">$900</td>
                                                        <td class="text-center">1</td>
                                                        <td class="text-right">$900</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Samsung Galaxy S5 Extra Battery</td>
                                                        <td class="text-center">$30</td>
                                                        <td class="text-center">1</td>
                                                        <td class="text-right">$30</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Screen protector</td>
                                                        <td class="text-center">$7</td>
                                                        <td class="text-center">4</td>
                                                        <td class="text-right">$28</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="highrow"></td>
                                                        <td class="highrow"></td>
                                                        <td class="highrow text-center">
                                                            <strong>Sub Total</strong>
                                                        </td>
                                                        <td class="highrow text-right">$958</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="emptyrow"></td>
                                                        <td class="emptyrow"></td>
                                                        <td class="emptyrow text-center">
                                                            <strong>Shipping</strong>
                                                        </td>
                                                        <td class="emptyrow text-right">$20</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="emptyrow">
                                                            <i class="livicon" data-name="barcode" data-size="60" data-loop="true"></i>
                                                        </td>
                                                        <td class="emptyrow"></td>
                                                        <td class="emptyrow text-center">
                                                            <strong>Total</strong>
                                                        </td>
                                                        <td class="emptyrow text-right">$978</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pull-right" style="margin:10px 20px;">
                                <button type="button" class="btn btn-responsive button-alignment btn-info" data-toggle="button">
                                    <a style="color:#fff;" onclick="javascript:window.print();">
                                        Print
                                        <i class="livicon" data-name="printer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    </a>
                                </button>
                                <button type="button" class="btn btn-responsive button-alignment btn-success" data-toggle="button">
                                    <a style="color:#fff;">
                                        Submit Your Invoice
                                        <i class="livicon" data-name="check" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- content --> </aside>
            <!-- right-side --> </div>
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
    <!-- begining of page level js -->
   
 <!-- end of page level js -->
</body>

    </html>