
<html>
<title>Cashier | Financials</title>
<%@ include file = "../commonDesign.jsp" %>


            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>Cashier</h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="resources/index.html">
                                <i class="livicon" data-name="home" data-size="12" data-color="#000"></i>
                                Home
                            </a>
                        </li>
                        <li>Cashier</li>
                    </ol>
                </section>
                <!-- Main content -->
				<div class="row">
                    <div class="alert alert-success alert-dismissable visible-xs visible-md">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        May not work properly in touch enabled devices as it as requires drag and drop.
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h1 class="panel-title">
                                    <i class="livicon" data-name="responsive" data-size="20" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Form
                                </h1>
                               
                            </div>
                            <div class="panel-body">
                                <!--form builder-->
                                
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        
										 
                                    </div>
                                    
                               
                                <div class="mar-top20">
                                    <div class="row">
                                        <div class="col-md-4 pd-col-4">
                                          
											
                                            <form:form action="cashiering_save" modelAttribute="ctransac">
											
											<div>
                                                    <label for="input-text-1">OR Number</label>
                                                    <form:input class="form-control"  type="text" placeholder="CV0012017" path="col_ORno"/>
													<p class="help-block"></p>
													
						 
                                                </div>
												
												<div>
												<label for="input-text-1">Type</label>
												
                                        		<form:select id="" class="form-control select2" path="col_IGPname">
												<c:forEach var="igp" items="${dropdown}">  
   	  
   												<option value="${igp.c_Type}">
           											<c:out value="${igp.c_Type}"/>
    											</option>
												</c:forEach>
	
												</form:select>
												
											<p class="help-block"></p>
												</div>
											
                                                <div>
                                                    <label for="input-text-1">Name</label>
                                                    <form:input type="name" class="form-control" id="input-text-1" placeholder="Enter Name" path="col_institune_name"/>
                                                    <p class="help-block">Name of Payer</p>
                                                </div>
                                                <div>
                                                    <label for="input-password-1">Description</label>
                                                    <form:input type="desc" class="form-control" id="input-password-1" placeholder="Description" path="col_desc"/>
													<p class="help-block">Transaction Purposes</p>
                                                    
                                                </div>
                                                <div>
                                                    <label for="select-1">Payment</label>
                                                    <form:input class="form-control" id="input-password-1" placeholder="000.00" path="col_amount"/>
                                                    <p class="help-block">Please enter amount in Peso.</p>
                                                </div>
                                                
												
													<div class="form-group" style="float:right;" >
                                                   
                                                </div>
												
												
												<div>
												 <a id="ohyes" name="ohyes" class="btn btn-effect btn-primary" data-modal="modal-confirmation">Save</a>
											</div>
											<!--MODAL KUNO HAHAHHA!-->	
								<div class="md-modal md-effect-1" id="modal-confirmation">
								<div class="md-content md-content-white">
								<h3>Are you sure?</h3>
								<div>
								
								<ul>
									<li>
                                    
                                     Are you sure to create this transaction?
									</li>
									<li>
									Further changes to any data are not allowed once you entered the transaction, you will not be able to edit or delete any entered records
									</li>
									
                            </ul>
							<div style="float:left;">
                            <button type="close" class="btn btn-modal btn-default"><span class="glyphicon glyphicon-remove"></span>Cancel</button> </div>
							<div style="float:right;">
							<button name="submit" type="submit" class="btn btn-modal btn-default"><span class="glyphicon glyphicon-ok"></span>Confirm</button></div>
                        </div>
                        </form:form>
                    </div>
                </div>
										</div>
										
									</div>
									<!--form builder ends--> </div>
									
									</div>
									</div>
									
									
								
                
                
				<!--END NA PO NG MODAL KUNO!-->
				
                <section class="content">
			
                    <div class="row">
                      
                        <div class="col-md-5" style="float:right; position:relative; bottom:41em; right:12em">
						<h3>Calendar</h3>
                            <div class="box">
                                <div class="box-body">
                                    <div id="calendar"></div>
                                </div>
                                
                            
                            <!-- /.box --> </div>
                            
                        <!-- /.col --> </div>
                        
                   
                    
                </section>
            </aside>
        
		
		
		
		
        <a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
            <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
        </a>
        <!-- global js -->
        <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!--livicons-->
        <script src="resources/vendors/livicons/minified/raphael-min.js"></script>
        <script src="resources/vendors/livicons/minified/livicons-1.4.min.js"></script>
        <script src="resources/js/josh.js" type="text/javascript"></script>
        <script src="resources/js/metisMenu.js" type="text/javascript"></script>
        <script src="resources/vendors/holder-master/holder.js"></script>
        <!-- end of global js -->
        <!-- begining of page level js -->
        <script src="resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
		
		
		<!-- Dinagdag ko rin to -->
		<script src="resources/vendors/modal/js/classie.js"></script>
		<script src="resources/vendors/modal/js/modalEffects.js"></script>

		
        <script type="text/javascript">
    $(document).ready(function() {
     /* initialize the external events
                 -----------------------------------------------------------------*/
        function ini_events(ele) {
            ele.each(function() {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
             

            });
        }
        ini_events($('#external-events div.external-event'));

        /* initialize the calendar
                 -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
            m = date.getMonth(),
            y = date.getFullYear();
        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            buttonText: {
                prev: "<span class='fa fa-caret-left'></span>",
                next: "<span class='fa fa-caret-right'></span>",
                today: 'today',
                month: 'month',
                week: 'week',
                day: 'day'
            },
            
           
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }
        });

        
    });
	</script>
	</body>
    </html>