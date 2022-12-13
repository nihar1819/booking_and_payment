<?php 

ob_start();
session_start();
include_once 'admin/includes/class.Main.php';

try{
    $dbf = new User();
    //echo "connection successful";
}catch(Exception $e){
    echo "Error ".$e;
}

//error_reporting(0);
?>

<?php
    
  $six_digit_random_number = mt_rand(1, 100);
   $code = 'AJN0000'.''.str_pad($six_digit_random_number+1, 3, 0, STR_PAD_LEFT);
   #echo $order_id;
   //echo $code;
?>       
          
  <?php 
  
  
if(isset($_REQUEST['action']) && $_REQUEST['action']=='book')
	{	
        echo "hello";
		$ardt=date("Y-m-d",strtotime($_REQUEST['dpd1']));
		$dpdt=date("Y-m-d",strtotime($_REQUEST['dpd2']));
	    $chk_arv=$dbf->countRows("room_block","from_date<='$ardt' AND to_date>='$ardt' AND room_id='$_REQUEST[room_id]'");
	    $chk_dp=$dbf->countRows("room_block","from_date<='$dpdt' AND to_date>='$dpdt' AND room_id='$_REQUEST[room_id]'");
		if($chk_arv==0 && $chk_dp==0){ 
	   $to="assampanda@gmail.com";
	   $subject="Hotel Booking Details";
	   $from=$_REQUEST['email'];
	   $name=$_REQUEST['first_name'].' '.$_REQUEST['last_name'];
	   $ar_date=date("d/M/Y",strtotime($_REQUEST['dpd1']));
	   $dp_date=date("d/M/Y",strtotime($_REQUEST['dpd2']));
	   $phoneno=$_REQUEST['phoneno'];
	   $children1=$_REQUEST['children1'];
	   $children2=$_REQUEST['children2'];
	   $adult=$_REQUEST['adult'];
	   $message=$_REQUEST['content'];
	   $rooms=$_REQUEST['no_of_rooms'];
	   echo "hello 2";
	   $body="
	   		<table border='0' width='100%' cellspacing='0' cellpadding='4'>
		    
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Name:</font></b></td>
				<td valign='top' align='left'>$name</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Email Id:</font></b></td>
				<td valign='top' align='left'>$from</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Phone No:</font></b></td>
				<td valign='top' align='left'>$phoneno</td>
			</tr>
			
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Arival Date:</font></b></td>
				<td valign='top' align='left'>$ar_date</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Departure Date:</font></b></td>
				<td valign='top' align='left'>$dp_date</td>
			</tr>
            <tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>No of Adult:</font></b></td>
				<td valign='top' align='left'>$adult</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>No of Rooms:</font></b></td>
				<td valign='top' align='left'>$rooms</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Children(<5):</font></b></td>
				<td valign='top' align='left'>$children2</td>
			</tr>
			<tr>
				<td width='211' align='right' valign='top'><b>
				<font face='Arial' size='2'>Message:</font></b></td>
				<td valign='top' align='left'>$message</td>
			</tr>
			
			</table>
	   ";
    
       echo "hello 3";
	$header  = 'MIME-Version: 1.0' . "\r\n";
	$header .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$header .= "From:".$from."\r\n";
       
    echo "hello 4";
        $retval = mail($to,$subject,$body,$header);
        echo "hello 5";
	    $dt1=date("Y-m-d",strtotime($_REQUEST['dpd1']));
		$dt2=date("Y-m-d",strtotime($_REQUEST['dpd2']));
	$dt=date("Y-m-d");
	$content=$_REQUEST['content'];
 $string="room_id='$_REQUEST[room_id]', name='$name', email='$_REQUEST[email]', cur_date='$dt', ar_date='$dt1', dp_date='$dt2', phoneno='$_REQUEST[phoneno]', area='$_REQUEST[area]', rooms='$_REQUEST[no_of_rooms]', children2='$_REQUEST[children2]', adult='$_REQUEST[adult]', tdetails='$_REQUEST[tdetails]', vdetails='$_REQUEST[vdetails]', code='NA', room='NA', room_no='NA', status='NA', agent_name='NA', agent_mobileno='NA', content='$content'";
 echo "hello 6 $string";
 try{
    $id=$dbf->insertSet("booking_details",$string);
 }
 catch(Exception $e){
    echo "error $e";
 }

header("Location:pay.php?book_id=$id");
}else{
	header("Location:booking-data.php?room_id=$_REQUEST[room_id]&msg=notavl");
}

}
 ?>
<!doctype html>
<html class="no-js" lang="en">
<link rel="stylesheet" href="css/bootstrap-2.min.css">

<link rel="stylesheet" href="css/flexslider-2.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/selectordie.css">

<link rel="stylesheet" href="css/main-2.css">
<style>
    .sky-form label {
   margin-left: 25px;
    color: #fff;
    font-size: 13px;
}
.booking-form {
    width: 90%;
    padding: 50px;
    margin: auto;
    background: url(https://assamjatriniwas.com/img/slider-tow.jpg) rgba(255, 255, 255, .5);
    background-attachment: fixed;
    background-size: cover;
    position: relative;
    border-radius: 5px;
    z-index: 20
}
.booking-form::before {
    content: '';
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    background: rgba(0, 0, 0, 0.7);
    z-index: -1
}
.booking-form .form-control {
    background-color: rgba(255, 255, 255, 0.2);
    height: 60px;
    padding: 0px 25px;
    border: none;
    border-radius: 40px;
    color: #fff;
    -webkit-box-shadow: 0px 0px 0px 2px transparent;
    box-shadow: 0px 0px 0px 2px transparent;
    -webkit-transition: 0.2s;
    transition: 0.2s
}

.booking-form .form-control::-webkit-input-placeholder {
    color:#fff;
}

.booking-form .form-control:-ms-input-placeholder {
    color:#fff;
}

.booking-form .form-control::placeholder {
    color:#fff;
}

.booking-form .form-control:focus {
    -webkit-box-shadow: 0px 0px 0px 2px #ff8846;
    box-shadow: 0px 0px 0px 2px #ff8846
}

.booking-form input[type="date"].form-control {
    padding-top: 16px
}

.booking-form input[type="date"].form-control:invalid {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form input[type="date"].form-control+.form-label {
    opacity: 1;
    top: 10px
}

.booking-form select.form-control {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none
}

.booking-form select.form-control:invalid {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form select.form-control+.select-arrow {
    position: absolute;
    right: 15px;
    top: 50%;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
    width: 32px;
    line-height: 32px;
    height: 32px;
    text-align: center;
    pointer-events: none;
    color: rgba(255, 255, 255, 0.5);
    font-size: 14px
}

.booking-form select.form-control+.select-arrow:after {
    content: '\279C';
    display: block;
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg)
}

.booking-form select.form-control option {
    color: #000
}

.booking-form .form-label {
    position: absolute;
    top: -10px;
    left: 25px;
    opacity: 0;
    color: #fff;
    font-size: 11px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1.3px;
    height: 15px;
    line-height: 15px;
    -webkit-transition: 0.2s all;
    transition: 0.2s all
}

.booking-form .form-group.input-not-empty .form-control {
    padding-top: 16px
}

.booking-form .form-group.input-not-empty .form-label {
    opacity: 1;
    top: 10px
}

.booking-form .submit-btn {
    color: #fff;
    background-color: #e35e0a;
    font-weight: 700;
    height: 60px;
    padding: 10px 30px;
    width: 100%;
    border-radius: 40px;
    border: none;
    text-transform: uppercase;
    font-size: 16px;
    letter-spacing: 1.3px;
    -webkit-transition: 0.2s all;
    transition: 0.2s all
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
    opacity: 0.9
}
.booking-form h3 {
    color: #fff;
}
.booking-form h4 {
    color: #fff;
}
@media (min-width: 0px) and (max-width: 1020px) {
  
 .booking-form {
    width: 100%;
    padding: 20px;
}
  
}
</style>
<script>
function chkTot(){
	var room=$('#no_of_rooms').val();
	
	var child=$('#children2').val();
	var adult=$('#adult').val();
	if(adult<4){
	var tot=(parseFloat(adult)+parseFloat(child))/parseFloat(room);
	if(tot>4 ){
		alert('We can alot Max 4 people in a room. Please add more rooms');
		$('#sub').hide();
	}else{
		$('#sub').show();
	}
	}else{
		alert('Max. 3 Adult can be alloted in a Room');
		$('#sub').hide();
	}
}

function chkTot1(no_child){

	var rooms=$('#no_of_rooms').val();
	var adult=$('#adult').val();
	var tot=(parseFloat(adult)+parseFloat(no_child))/parseFloat(rooms);
	if(adult<4){
	if(tot>4 ){
		alert('We can alot Max 4 people in a room. Please add more rooms');
		$('#sub').hide();
	}else{
		$('#sub').show();
	}
	}else{
		alert('Max. 3 Adult can be alloted in a Room');
		$('#sub').hide();
	}
}

function chkTot2(no_adult){
	var rooms=$('#no_of_rooms').val();
	var child=$('#children2').val();
	var tot=(parseFloat(no_adult)+parseFloat(child))/parseFloat(rooms);
	if(no_adult<4){
	if(tot>4 ){
		alert('We can alot Max 4 people in a room. Please add more rooms');
		$('#sub').hide();
	}else{
		$('#sub').show();
	}
	}else{
		alert('Max. 3 Adult can be alloted in a Room');
		$('#sub').hide();
	}
}
</script>
<?php

include"header.php";

?>

        <!-- End listing section -->
<section class="page-breadcrumb">
            <div class="page-section">
                <div class="breadcumb-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcrumb text-center">
                                <div class="section-titleBar white-headline text-center">
                                    <h3>Booking Form</h3>
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
                            <li>Booking Form</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Start welcome section -->
        <section class="welcome-section-4 sec-padding">
            <div class="container">
                <div class="booking-form">
                
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-titleBar text-center">
                            <h3>Booking Form</h3>
                           <h4>Pick a room that best suits your taste and budget</h4>
                        </div>
                    </div>
                </div>
            
                <div class="row">

                      <div class="col-lg-12 col-md-12 col-sm-12 m0 col-xs-12">
                      <span style="font-weight:bold; color:#993300; font-size:24px;"><?php if(isset($_REQUEST['msg'])&&$_REQUEST['msg']=='notavl'){ echo "Sorry! This Room not avialable for this date. Please select other rooms or contact us";} ?></span>
                        <form name="frm" action="booking-data.php?action=book" method="post" class="sky-form" onSubmit="return validateForm()">
				
				<fieldset>
				    
				    
				     <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>First Name</label>
                  <input id="first_name" type="text" name="first_name" placeholder="First Name" class="form-control" required>
                  <input type="hidden" name="room_id" id="room_id" value="<?php echo $_REQUEST['room_id']; ?>">
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>Last Name</label>
                  <input id="last_name" type="text" name="last_name" placeholder="Last name" class="form-control" required>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>E-mail</label>
                  <input id="email" type="email" name="email" placeholder="Your Email" class="form-control" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>Contact Number</label>
                  <input id="phoneno" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" name="phoneno" placeholder="Your Mobile No" class="form-control" required maxlength="10">
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>Arrival Date</label>
                  <input type="text" id="dpd1" name="dpd1" class="date-selector form-control" placeholder="&#xf073;" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                    <label>Departure Date</label>
                  <input type="text" id="dpd2" name="dpd2" class="date-selector form-control" placeholder=" &#xf073;" />
                </div>
              </div>
                <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 m0 col-xs-12">
                    <label>No of Rooms</label>
                  <input id="no_of_rooms" type="text" name="no_of_rooms" placeholder="No Of Rooms" class="form-control" value="1" required onKeyPress="chkTot()">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 m0 col-xs-12">
                    <label>(0 < 5 yrs)</label>
                  <select id="children2" name="children2"  class="form-control" onChange="chkTot1(this.value)">
                  <option value="0">No of Child</option>
                  <?php for($i=1;$i<20;$i++){ ?>
                  <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                  <?php } ?>                 
                  </select>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 m0 col-xs-12">
                    <label>Adults</label>
                 <select id="adult" name="adult" class="form-control" required onChange="chkTot2(this.value)">
                 <option value="0">No of Adult</option>
                  <?php for($i=1;$i<20;$i++){ ?>
                  <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                  <?php } ?>    
                 </select>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 m0 col-xs-12">
                    <label>Message</label>
                  <textarea id="message" rows="6" name="content" placeholder="Message" class="form-control"></textarea>
                </div>
              </div>
              <br/>
              <div class="row" style="display:none;" id="sub">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <input type="submit" name="submit" value="Submit Now" class="button">
                </div>
              </div>
			
			</form>
			</div>
                </div>

              
              </div>
             
              
                </div>
            </div>
        </section>
        <!-- End welcome section -->
         
 
        <!-- Start Rooms Section -->
         
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/bootstrap-2.min.js"></script>
<script src="js/superfish.pack.1.4.1.js"></script>
<script src="js/selectordie.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>

<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/main-2.js"></script>
        <!--Galery section Start-->
<?php include"footer.php"; ?>