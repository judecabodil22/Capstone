<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<%@ include file = "commonDesign.jsp" %>

<title>Financials System Project</title>

	
        <aside class="right-side">
        	<!-- Main Content -->
        	<section class="content-header">
        		<h1>Dashboard</h1>
        			<ol class="breadcrumb">
        				<li class="active">
        					<!--a href="resources/#">
        						<i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
        						Home
        					</a-->
                    	</li>
                	</ol>
            </section>
            
            <section class="content">
            	<div class="row">
            		
            		<!-- shortcut buttons -->
            		<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
            			<a  href="resources/#" type="button" class="btn btn-lg btn-success">
            				<strong class="livicon" data-name="piggybank" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
            					<label style="position:relative; top:2em">COLLECTIONS</label>
						</a>
					</div>	
					
					<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
						<a  href="resources/#" type="button" class="btn btn-lg btn-danger">
							<strong class="livicon" data-name="money" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
							<label style="position:relative; top:2em">DISBURSEMENT</label>
						</a>
					</div>
					
					<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
						<a  href="financials_createjev" type="button" class="btn btn-lg btn-primary">
							<strong class="livicon" data-name="notebook" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
								<label style="position:relative; top:1.5em">JOURNAL ENTRY <br> VOUCHER</label>
						</a>
					</div>
					
					<div class="col-lg-3 col-md-6 col-sm-6 margin_10">
						<a  href="#" type="button" class="btn btn-lg">
							<strong class="livicon" data-name="plus" data-size="100" data-c="#fff" data-hc="#fff" data-loop="true"></strong>
								<label style="position:relative; top:2em">ADD</label>
						</a>
					</div>	
				</div>
				
				<br>
				
				
				
				
				
			</section>		
		</aside>		
	</div>			
	
	<!-- End Scripts -->
    <!-- global js -->
    
    
    <!-- Added Scripts -->
    
    <!-- /Added Scripts -->
    
</body>
</html>