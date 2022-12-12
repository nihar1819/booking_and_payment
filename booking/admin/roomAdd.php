<?php 
ob_start();
session_start();
include_once 'includes/class.Main.php';
include_once 'application-top.php';
$dbf = new User();

if(isset($_REQUEST['action']) && $_REQUEST['action']=='addCountry'){
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
	$fac=$_REQUEST['facility_id'];
	$cnt=count($fac);
	$description=addslashes($_REQUEST['description']);
	$string="type_id='$_REQUEST[type_id]', description='$description', price='$_REQUEST[price]', price_for_extra='$_REQUEST[price_for_extra]', price_for_extra_child='$_REQUEST[price_for_extra_child]', img='$fname1'";
	$ins=$dbf->insertSet("rooms",$string);
	for($i=0;$i<$cnt;$i++){
		$fac_id=$fac[$i];
		$string1="room_id='$ins', facility_id='$fac_id'";
		$dbf->insertSet("room_child",$string1);
	}
	header("location:manageRooms.php");
}
?>    

<body  class="full-layout  nav-right-hide nav-right-start-hide  nav-top-fixed      responsive    clearfix"   data-smooth-scrolling="1">     
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
                <li><a href="manageRooms.php">Manage Rooms</a> </li>
                <li class="active">Add Room</li>
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
              <h1>Add Room</h1>
               </div>
          </div>
          <div class="vd_content-section clearfix">
            <div class="panel widget light-widget">
              <div class="panel-heading no-title"> </div>
              <div class="panel-body">
               
                <form class="form-horizontal" action="roomAdd.php?action=addCountry" method="post" role="form" name="frm" id="frm" enctype="multipart/form-data">
                  <div class="alert alert-danger vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-exclamation-circle vd_red"></i></span><strong>Oh snap!</strong> Change a few things up and try submitting again. </div>
                  <div class="alert alert-success vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-check-circle vd_green"></i></span><strong>Well done!</strong>. </div>
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Room Type<span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <select name="type_id" id="type_id" class="width-60">
                        <?php foreach($dbf->fetch("room_type","id<>0") as $rt){ ?>
                        <option value="<?php echo $rt['id']; ?>"><?php echo $rt['room_type']; ?></option>
                        <?php } ?>
                        </select> 
                      </div>
                    </div>
                  </div>
                <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Room Facility<span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        
                        <?php foreach($dbf->fetch("room_facility","id<>0") as $fc){ ?>
                       <input type="checkbox" name="facility_id[]" id="facility_id" value="<?php  echo $fc['id']; ?>"> &nbsp; <?php echo $fc['facility']; ?>&nbsp;
                        <?php } ?>
                        </select> 
                      </div>
                    </div>
                  </div>
                 <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Description <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <textarea class="width-60" required="required" name="description" id="description" ></textarea>
                        <script type="text/javascript">
							CKEDITOR.replace( 'description', {
								extraPlugins : 'autogrow',
								height : 200,
								uiColor : 'green',
								width : 500,
							});
						</script>
                      </div>
                    </div>
                  </div>
                   <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Price <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Price" class="width-60" required="required" name="price" id="price" type="text" >
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Price for Extra Bed <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Price Extra Bed" class="width-60" required="required" name="price_for_extra" id="price_for_extra" type="text" value="0" >
                      </div>
                    </div>
                  </div> 
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Price for Extra Bed (Child) <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Price Extra Bed(Child)" class="width-60" required="required" name="price_for_extra_child" id="price_for_extra_child" type="text" value="0" >
                      </div>
                    </div>
                  </div> 
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Image <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input  class="width-60" required="required" name="img" id="img" type="file" >
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

<!-- Mirrored from www.venmond.com/demo/vendroid/forms-validation.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 06:54:48 GMT -->
</html>