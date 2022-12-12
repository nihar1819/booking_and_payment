<?php 
ob_start();
session_start();
include_once 'includes/class.Main.php';
include_once 'application-top.php';
$dbf = new User();

//Delete Item process
if(isset($_REQUEST['action']) && $_REQUEST['action']=='delete'){
	
	$dbf->deleteFromTable("rooms","id='$_REQUEST[id]'");
	header("Location:manageRooms.php?msg=deleted");
}
if(isset($_REQUEST['action']) && $_REQUEST['action']=='confirm'){
	$res=$dbf->fetchSingle("booking_details","*","id='$_REQUEST[id]'");
	$room_type_id=$dbf->getDataFromTable("rooms","type_id","id='$res[room_id]'");
	$room_type=$dbf->getDataFromTable("room_type","room_type","id='$room_type_id'");
	$name=$res['name'];
	$to=$res['email'];
	$ar_date=date("d/m/Y",strtotime($res['ar_date']));
	$dp_date=date("d/m/Y",strtotime($res['dp_date']));
	$rooms=$res['rooms'];
	$from="assampanda@gmail.com";
	$message="Thank You! your room booking with Assam Jatri Niwas has been confirmed.";
	$subject="Thank you! Mr./Ms. ".$name." Your room booking with Assam Jatri Niwas has been confirmed";
	$body="
	   		<table border='0' width='40%' cellspacing='0' cellpadding='4' style='background-color:#c0a670;'>
		    
    <tr>
      <td colspan='3' align='left' valign='top'><img src='https://www.assamjatriniwas.com/img/logo/logo2.png'></td>
    </tr>
    <tr>
      <td colspan='3' align='center' valign='top'><strong>Welcome to Assam Jatri Niwas</strong></td>
    </tr>
    <tr>
      <td width='48' align='left' valign='top'>&nbsp;</td>
        <td width='99' align='left' valign='top'><b>
        <font face='Arial' size='2'>Name:</font></b></td>
        <td width='356' align='left' valign='top'>$name</td>
    </tr>
    <tr>
      <td width='48' align='left' valign='top'>&nbsp;</td>
        <td width='99' align='left' valign='top'><b>
        <font face='Arial' size='2'>Room Type:</font></b></td>
        <td valign='top' align='left'>$room_type</td>
    </tr>
    
    
    
    <tr>
      <td align='left' valign='top'>&nbsp;</td>
      <td align='left' valign='top'><b>
        <font face='Arial' size='2'>No of Rooms:</font></b></td>
      <td valign='top' align='left'>$rooms</td>
    </tr>
    <tr>
      <td width='48' align='left' valign='top'>&nbsp;</td>
        <td width='99' align='left' valign='top'><b>
        <font face='Arial' size='2'>Arival Date:</font></b></td>
        <td valign='top' align='left'>$ar_date</td>
    </tr>
    <tr>
      <td width='48' align='left' valign='top'>&nbsp;</td>
        <td width='99' align='left' valign='top'><b>
        <font face='Arial' size='2'>Departure Date:</font></b></td>
        <td valign='top' align='left'>$dp_date</td>
    </tr>
   
    <tr>
      <td width='48' align='left' valign='top'>&nbsp;</td>
        <td width='99' align='left' valign='top'><b>
        <font face='Arial' size='2'>Message:</font></b></td>
        <td valign='top' align='left'>$message</td>
    </tr>
    <tr>
      <td align='right' valign='top'>&nbsp;</td>
      <td align='right' valign='top'>&nbsp;</td>
      <td valign='top' align='left'>&nbsp;</td>
    </tr>
    <tr>
      <td colspan='3' align='left' valign='top'><p><strong>For Any Query please contact us @</strong></p>
      <p><strong>
      Phone: 098614 11324<br> 
      Email: assampanda@gmail.com<br> 
      Web: https://www.assamjatriniwas.com      </strong></p></td>
    </tr>
    <tr>
      <td align='right' valign='top'>&nbsp;</td>
      <td align='right' valign='top'>&nbsp;</td>
      <td valign='top' align='left'>&nbsp;</td>
    </tr>
    <tr>
      <td colspan='3' align='center' valign='top'><strong>Copyright &copy; Assam Jatri Niwas 2019. All Rights Rreserved.</strong></td>
    </tr>
    
</table>

	   ";
	
	$header  = 'MIME-Version: 1.0' . "\r\n";
	$header .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$header .= "From:".$from."\r\n";
       

        $retval = mail($to,$subject,$body,$header);
	
	$dbf->updateTable("booking_details","booking_status=1","id='$_REQUEST[id]'");
	header("Location:bookingDetails.php");
}

?>    

<body id="tables" class="full-layout  nav-right-hide nav-right-start-hide  nav-top-fixed      responsive    clearfix" data-active="tables "  data-smooth-scrolling="1">     
<div class="vd_body">
<!-- Header Start -->
 <?php include_once 'header.php';?>
  <!-- Header Ends --> 
<div class="content">
  <div class="container">
   <?php include_once 'menu.php';?>       
    <!-- Middle Content Start -->
    
    <div class="vd_content-wrapper">
      <div class="vd_container">
        <div class="vd_content clearfix">
          <div class="vd_head-section clearfix">
            <div class="vd_panel-header">
              <ul class="breadcrumb">
                <li><a href="dashboard.php">Dashboard</a> </li>
                <li><a href="#">Booking Details</a> </li>
                <li class="active">Manage Booking</li>
              </ul>
              <div class="vd_panel-menu hidden-sm hidden-xs" data-intro="<strong>Expand Control</strong><br/>To expand content page horizontally, vertically, or Both. If you just need one button just simply remove the other button code." data-step=5  data-position="left">
    <div data-action="remove-navbar" data-original-title="Remove Navigation Bar Toggle" data-toggle="tooltip" data-placement="bottom" class="remove-navbar-button menu"> <i class="fa fa-arrows-h"></i> </div>
      <div data-action="remove-header" data-original-title="Remove Top Menu Toggle" data-toggle="tooltip" data-placement="bottom" class="remove-header-button menu"> <i class="fa fa-arrows-v"></i> </div>
      <div data-action="fullscreen" data-original-title="Remove Navigation Bar and Top Menu Toggle" data-toggle="tooltip" data-placement="bottom" class="fullscreen-button menu"> <i class="glyphicon glyphicon-fullscreen"></i> </div>
      
</div>
 
            </div>
          </div>
          <div class="vd_title-section clearfix">
            <div class="vd_panel-header">
              <h1>Booking Details</h1>
               </div>
          </div>
          <div style="font-weight:bold; font-size:14px; color:#030; padding-left:50px;"><?php if($_REQUEST['msg']=='deleted'){ echo "You have successfully Deleted the item";} ?></div>
          <div class="vd_content-section clearfix">
            <div class="row">
              <div class="col-md-12">
                <div class="panel widget">
                  <div class="panel-heading vd_bg-grey">
                    <h3 class="panel-title"> <span class="menu-icon"> <i class="fa fa-dot-circle-o"></i> </span> Booking Details</h3>
                    
                  </div>
                  <div class="panel-body table-responsive" style="overflow-x:auto;">
                  
                    <table class="table table-striped" id="data-tables" style="overflow:scroll; width:auto;">
                      <thead>
                        <tr>
                          <th width="45">Sl No</th>
                          <th width="65">Room Type</th>
                          <th width="73">no of rooms</th>
                          <th width="139">Name</th>
                          <th width="108">Email</th>
                          <th width="109">Phone</th>
                          <th width="111">Booking Date</th>
                          <th width="108">Arr. Date</th>
                          <th width="109">Dept. Date</th>
                          <th width="108">Amt Paid</th>
                          <th width="109">Status</th>
                          <th width="164">Action</th>
                          </tr>
                      </thead>
                      <tbody>
                      <?php
					  	$i=1;
					  	foreach($dbf->fetch("booking_details","id<>0 ORDER BY id DESC") as $res){
							$rooms=$dbf->fetchSingle("rooms","*","id='$res[room_id]'");
							$room_type=$dbf->getDataFromTable("room_type","room_type","id='$rooms[type_id]'");
							
							
					   ?>
                        <tr class="odd gradeX">
                          <td><?php echo $i;?></td>
                          <td><?php echo $room_type;?></td>
                          <td><?php echo $res['rooms']; ?></td>
                          <td><?php echo $res['name'];?></td>
                          <td><?php echo $res['email'];?></td>
                          <td><?php echo $res['phoneno'];?> </td>
                          <td><?php echo date("d/m/Y",strtotime($res['cur_date'])); ?></td>
                          <td><?php echo date("d/m/Y",strtotime($res['ar_date'])); ?></td>
                          <td><?php echo date("d/m/Y",strtotime($res['dp_date'])); ?></td>
                          <td><?php echo $res['amount']; ?></td>
                          <td><?php echo $res['status']; ?></td>
                          <td> <?php if($res['booking_status']==0){ ?><a href="bookingDetails.php?action=confirm&id=<?php echo $res['id'];?>" data-original-title="delete" onClick="return confirm('Are you sure you want to confirm this ?')" data-toggle="tooltip" data-placement="top" class="btn menu-icon vd_bg-red">confirm</a><?php }else{ ?>
                          Confirmed
                          <?php } ?>                          </td>
                          </tr>
                        <?php $i++;} ?>
                      </tbody>
                    </table>
                  </div>
                </div>
                <!-- Panel Widget --> 
              </div>
              <!-- col-md-12 --> 
            </div>
            <!-- row --> 
            
          </div>
          <!-- .vd_content-section --> 
          
        </div>
        <!-- .vd_content --> 
      </div>
      <!-- .vd_container --> 
    </div>
    <!-- .vd_content-wrapper --> 
    
    <!-- Middle Content End --> 
    
  </div>
  <!-- .container --> 
</div>
<!-- .content -->

<!-- Footer Start -->
 <?php include_once 'footer.php';?>
<!-- Footer END -->
  

</div>

<!-- .vd_body END  -->
<a id="back-top" href="#" data-action="backtop" class="vd_back-top visible"> <i class="fa  fa-angle-up"> </i> </a>

<!--
<a class="back-top" href="#" id="back-top"> <i class="icon-chevron-up icon-white"> </i> </a> -->

<!-- Javascript =============================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script type="text/javascript" src="js/jquery.js"></script> 
<!--[if lt IE 9]>
  <script type="text/javascript" src="js/excanvas.js"></script>      
<![endif]-->
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script type="text/javascript" src='plugins/jquery-ui/jquery-ui.custom.min.js'></script>
<script type="text/javascript" src="plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

<script type="text/javascript" src="js/caroufredsel.js"></script> 
<script type="text/javascript" src="js/plugins.js"></script>

<script type="text/javascript" src="plugins/breakpoints/breakpoints.js"></script>
<script type="text/javascript" src="plugins/dataTables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="plugins/prettyPhoto-plugin/js/jquery.prettyPhoto.js"></script> 

<script type="text/javascript" src="plugins/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="plugins/tagsInput/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="plugins/blockUI/jquery.blockUI.js"></script>
<script type="text/javascript" src="plugins/pnotify/js/jquery.pnotify.min.js"></script>

<script type="text/javascript" src="js/theme.js"></script>
<script type="text/javascript" src="custom/custom.js"></script>
 
<!-- Specific Page Scripts Put Here -->

<script type="text/javascript" src="plugins/dataTables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="plugins/dataTables/dataTables.bootstrap.js"></script>

<script type="text/javascript">
		$(document).ready(function() {
				"use strict";
				
				$('#data-tables').dataTable();
		} );
</script>

<!-- Specific Page Scripts END -->




<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information. -->

<script>
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-XXXXX-X']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script> 

</body>

<!-- Mirrored from www.venmond.com/demo/vendroid/listtables-data-tables.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 06:54:56 GMT -->
</html>