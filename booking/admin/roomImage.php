<?php 
ob_start();
session_start();
include_once 'includes/class.Main.php';
include_once 'application-top.php';
$dbf = new User();

//Delete Item process
if(isset($_REQUEST['action']) && $_REQUEST['action']=='delete'){
	
	$dbf->deleteFromTable("room_img","id='$_REQUEST[did]'");
	header("Location:roomImage.php?msg=deleted&id=$_REQUEST[id]");
}

if(isset($_REQUEST['action']) && $_REQUEST['action']=='add'){
	if($_FILES['img']['name']!='' && (($_FILES['img']['type'] == "image/gif")|| ($_FILES['img']['type'] == "image/jpeg")|| ($_FILES['img']['type'] == "image/pjpeg")||($_FILES['img']['type'] == "image/png") || ($_FILES['img']['type'] == "image/bmp"))){

$fname1 =time().".".substr(strrchr($_FILES['img']['name'], "."), 1);
$source_path1="../room/".$fname1;

$destination_path1="../room/thumb/".$fname1;	
$imgsize1 = getimagesize($source_path1);		
$new_height1 = 220;
$new_width1 = 280;		
$destimg1=ImageCreateTrueColor($new_width1,$new_height1) or die("Problem In Creating image");						
move_uploaded_file($_FILES['img']['tmp_name'],"../room/".$fname1);

if($_FILES['img']['type'] == "image/JPG" || $_FILES['img']['type'] == "image/JPEG" || $_FILES['img']['type'] == "image/jpg" || $_FILES['img']['type']=='image/jpeg' ){
//for small                
$srcimg1=ImageCreateFromJPEG($source_path1) or die("Problem In opening Source Image");
ImageCopyResampled($destimg1,$srcimg1,0,0,0,0,$new_width1,$new_height1,ImageSX($srcimg1),ImageSY($srcimg1)) or die("Problem In resizing");
ImageJPEG($destimg1,$destination_path1,100) or die("Problem In saving");
}else if($_FILES['img']['type'] == "image/gif" || $_FILES['img']['type'] == "image/GIF"){  
//for small          
$srcimg1 = imagecreatefromgif($source_path1);
ImageCopyResampled($destimg1,$srcimg1,0,0,0,0,$new_width1,$new_height1,ImageSX($srcimg1),ImageSY($srcimg1));
ImageJPEG($destimg1,$destination_path1,100) or die("Problem In saving");
}else if($_FILES['img']['type'] == "image/png" || $_FILES['img']['type'] == "image/PNG"){ 
//for small          
$srcimg1 = imagecreatefrompng($source_path1);
ImageCopyResampled($destimg1,$srcimg1,0,0,0,0,$new_width1,$new_height1,ImageSX($srcimg1),ImageSY($srcimg1));
ImageJPEG($destimg1,$destination_path1,100) or die("Problem In saving"); 
}
}
$string="room_id='$_REQUEST[id]', img='$fname1'";
$dbf->insertSet("room_img",$string);
header("Location:roomImage.php?id=$_REQUEST[id]");
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
                <li><a href="manageRooms.php">Room Management</a> </li>
                <li class="active">Manage Rooms Images</li>
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
              <h1>Manage Rooms Image</h1>
               </div>
          </div>
          <div style="font-weight:bold; font-size:14px; color:#030; padding-left:50px;"><?php if($_REQUEST['msg']=='deleted'){ echo "You have successfully Deleted the item";} ?></div>
          <div class="vd_content-section clearfix">
            <div class="row">
              <div class="col-md-12">
                <div class="panel widget">
                  <div class="panel-heading vd_bg-grey">
                    <h3 class="panel-title"> <span class="menu-icon"> <i class="fa fa-dot-circle-o"></i> </span> Manage Rooms Image</h3>
                    
                  </div>
                  <div class="panel-body table-responsive">
                  
                    <table class="table table-striped" id="data-tables">
                      <thead>
                        <tr>
                          <th width="85">Sl No</th>
                          <th width="163">Image</th>
                          <th width="87">Action</th>
                          </tr>
                      </thead>
                      <tbody>
                      <?php
					  	$i=1;
					  	foreach($dbf->fetch("room_img","room_id='$_REQUEST[id]'") as $res){
							
							
					   ?>
                        <tr class="odd gradeX">
                          <td><?php echo $i;?></td>
                          <td><img src="../room/thumb/<?php echo $res['img']; ?>" height="80" width="120"></td>
                          <td>
                        
                          <a href="manageRooms.php?action=delete&did=<?php echo $res['id'];?>&id=<?php echo $_REQUEST['id']; ?>" data-original-title="delete" onClick="return confirm('Are you sure you want to delete this record ?')" data-toggle="tooltip" data-placement="top" class="btn menu-icon vd_bg-red"> <i class="fa fa-times"></i> </a></td>
                          </tr>
                        <?php $i++;} ?>
                      </tbody>
                    </table>
                  </div>
                  <div class="vd_content-section clearfix">
            <div class="panel widget light-widget">
              <div class="panel-heading no-title"> </div>
              <div class="panel-body">
               
                <form class="form-horizontal" action="roomImage.php?action=add&id=<?php echo $_REQUEST['id']; ?>" method="post" role="form" name="frm" id="frm" enctype="multipart/form-data">
                  <div class="alert alert-danger vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-exclamation-circle vd_red"></i></span><strong>Oh snap!</strong> Change a few things up and try submitting again. </div>
                  <div class="alert alert-success vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-check-circle vd_green"></i></span><strong>Well done!</strong>. </div>
                  
                  
                
                 
                   <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Price <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input class="width-60" required="required" name="img" id="img" type="file" >
                      </div>
                    </div>
                  </div>
                   
                   
                  
                  <div class="form-group">
                    <div class="col-sm-2"></div>
                    <div class="col-md-6 mgbt-xs-10 mgtp-20">
                     
                      <div class="mgtp-10">
                        <button class="btn vd_bg-green vd_white" type="submit" id="submit-register" name="submit-register">Submit</button>
                      </div>
                    </div>
                    <div class="col-md-12 mgbt-xs-5"> </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- Panel Widget -->
            
            
            <!-- Panel Widget --> 
            
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