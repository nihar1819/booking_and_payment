<?php 
ob_start();
session_start();
include_once 'admin/includes/class.Main.php';

$dbf = new User();
error_reporting(0);
 ?>
<!doctype html>
<html class="no-js" lang="en">
	
<!-- Mirrored from www.mylamarena.com/marco/rooms.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 12 Jul 2019 06:57:25 GMT -->
     <?php include"header.php" ?>

        <!-- MAin menu ends -->
        <!-- Start breadcumb section -->
        <section class="page-breadcrumb">
            <div class="page-section">
                <div class="breadcumb-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcrumb text-center">
                                <div class="section-titleBar white-headline text-center">
                                    <h3>Rooms & Suits</h3>
                                    <h4 style="color:#fff">Pick a room that best suits your taste and budget</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="nav-path">
                <div class="container">
                    <div class="row">
                        <ul>
                            <li class="home-bread">Home</li>
                            <li>Rooms & Suits</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcumb section -->

        <!-- Start welcome section -->
        <section class="room-section sec-padding">
            <div class="container">

                <div class="row">
                  <?php 
				  	foreach($dbf->fetch("rooms","id<>0") as $val){
				  	$room_type=$dbf->fetchSingle("room_type","*","id='$val[type_id]'");
				   ?>
                   <div class="col-lg-12 col-md-12 col-xs-12">
                       <div class="single-room-wrapper">
                        <div class="media">

                              <a href="#" >
                                 <img src="room/thumb/<?php echo  $val['img'];?>" alt="room" width="345" height="268">
                              </a>
                            <div class="text-wrapper">
                                <div class="text-body">
                                    <h4><?php echo  $room_type['room_type'];?></h4>
                                 <?php print $val['description'];?><br>
                                 <span><strong>Facility :</strong> </span><br>
                                 <div style="width: 500px;">
                                 	<?php 
									foreach($dbf->fetch("room_child","room_id='$val[id]'") as $fac){
										$rf=$dbf->getDataFromTable("room_facility","facility","id='$fac[facility_id]'");
									 ?>
                                 	<div style="width: 200px; padding-left:10px; float:left;"><?php echo $rf; ?></div>
                                    <?php } ?>
                                 </div>
                                </div>
                                <div class="price-detail">
                                    <div class="price-room">
                                        <span> <?php print $val['price'];?></span>
                                        <p>Per-night</p>

                                    </div>
                                    <a href="booking-data.php?room_id=<?php echo $val['id']; ?>">Book Now</a>
                                </div>
                            </div>


                        </div>
                       </div>
                        
                   </div>
                   <?php } ?>
                </div>
                
            </div>
            <!-- End main content -->
        </section>
        <!-- End welcome section -->



        <!-- Start Footer bottom section -->
                  <?php include"footer.php"; ?>