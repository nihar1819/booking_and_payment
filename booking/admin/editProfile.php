<?php 
ob_start();
session_start();
include_once 'includes/class.Main.php';
include_once 'application-top.php';
$dbf = new User();

if(isset($_REQUEST['action']) && $_REQUEST['action']=='addCountry'){
	$dt=date("Y-m-d");
	$string="user_name='$_REQUEST[user_name]', address='$_REQUEST[address]', phone='$_REQUEST[phone]', email='$_REQUEST[email]', website='$_REQUEST[website]' ";
	$dbf->updateTable("admin",$string,"id<>0");
	header("location:editProfile.php");
}

//get the details of admin
$adm=$dbf->fetchSingle("admin","*","id<>0");
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
                <li><a href="#">Manage Profile</a> </li>
                <li class="active">Edit Profile</li>
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
              <h1>Edit Profile</h1>
               </div>
          </div>
          <div class="vd_content-section clearfix">
            <div class="panel widget light-widget">
              <div class="panel-heading no-title"> </div>
              <div class="panel-body">
               
                <form class="form-horizontal" action="editProfile.php?action=addCountry" method="post" role="form" name="frm" id="frm" >
                  <div class="alert alert-danger vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-exclamation-circle vd_red"></i></span><strong>Oh snap!</strong> Change a few things up and try submitting again. </div>
                  <div class="alert alert-success vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-check-circle vd_green"></i></span><strong>Well done!</strong>. </div>
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Name <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Name" class="width-60" required="required" name="user_name" id="user_name" type="text" value="<?php echo $adm['user_name'];?>">
                      </div>
                    </div>
                  </div>
                  
                   <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Email <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Email" class="width-60" required="required" name="email" id="email" type="text" value="<?php echo $adm['email'];?>">
                      </div>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Address <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Address" class="width-60" required="required" name="address" id="address" type="text" value="<?php echo $adm['address'];?>">
                      </div>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Phone <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Phone" class="width-60" required="required" name="phone" id="phone" type="text" value="<?php echo $adm['phone'];?>">
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