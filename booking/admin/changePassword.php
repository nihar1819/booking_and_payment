<?php 
ob_start();
session_start();
include_once 'includes/class.Main.php';
include_once 'application-top.php';
$dbf = new User();



if(isset($_REQUEST['action']) && $_REQUEST['action']=='change'){
	
	$old_pass=base64_encode(base64_encode($_REQUEST['old_pass']));
	
	$pass=$dbf->getDataFromTable("admin","password","id<>0");
	if($pass==$old_pass){
		if($_REQUEST['new_pass']==$_REQUEST['re_pass']){
			$newPass=base64_encode(base64_encode($_REQUEST['new_pass']));
			$dbf->updateTable("admin","password='$newPass'","id<>0");
			header("Location:changePassword.php?msg=success");
		}else{
			header("Location:changePassword.php?msg=new_dont");
		}
		
	}else{
		header("Location:changePassword.php?msg=old_dont");
	}
	
	
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
                <li class="active">Change Password</li>
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
              <h1>Change Password</h1>
               </div>
          </div>
          <div class="vd_content-section clearfix">
            <div class="panel widget light-widget">
              <div class="panel-heading no-title"> </div>
              <div class="panel-body">
               <?php if(isset($_REQUEST['msg']) && $_REQUEST['msg']=='old_dont'){ ?><span style="font-weight:bold; color:red;">Sorry! old password dont match </span><?php } ?>
			   <?php if(isset($_REQUEST['msg']) && $_REQUEST['msg']=='new_dont'){ ?><span style="font-weight:bold; color:red;">Sorry! New password dont match </span><?php } ?>
			    <?php if(isset($_REQUEST['msg']) && $_REQUEST['msg']=='success'){ ?><span style="font-weight:bold; color:green;">You password successfully changed. </span><?php } ?>
                <form class="form-horizontal" action="changePassword.php?action=change" method="post" role="form" name="frm" id="frm" >
                  <div class="alert alert-danger vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-exclamation-circle vd_red"></i></span><strong>Oh snap!</strong> Change a few things up and try submitting again. </div>
                  <div class="alert alert-success vd_hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="icon-cross"></i></button>
                    <span class="vd_alert-icon"><i class="fa fa-check-circle vd_green"></i></span><strong>Well done!</strong>. </div>
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Old Password <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Old Password" class="width-60" required="required" name="old_pass" id="old_pass" type="password" >
                      </div>
                    </div>
                  </div>
                  
                   <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">New Password <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="New Password" class="width-60" required="required" name="new_pass" id="new_pass" type="password">
                      </div>
                    </div>
                  </div>
                  
                 
                  
                  <div class="form-group">
                    <div class="col-md-12">
                      <label class="control-label  col-sm-2">Re-type New Password <span class="vd_red">*</span></label>
                      <div id="company-input-wrapper" class="controls col-sm-6">
                        <input placeholder="Re-Type Password" class="width-60" required="required" name="re_pass" id="re_pass" type="password">
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