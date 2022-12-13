<?php 
ob_start();
session_start();
include_once 'admin/includes/class.Main.php';
try{
$dbf = new User();
}
catch(Exception $e){

}
error_reporting(0);


$val=$dbf->fetchSingle("booking_details","*","id='$_REQUEST[book_id]'");
$now = strtotime($val['ar_date']); // or your date as well
$your_date = strtotime($val['dp_date']);
$datediff = $your_date - $now;
 $no_days=round($datediff / (60 * 60 * 24));
$chk_room=$dbf->countRows("room_price","room_id='$val[room_id]' AND room_plan_date='$val[ar_date]'");

if($chk_room>0){
	$rp=$dbf->fetchSingle("room_price","*","room_id='$val[room_id]' AND room_plan_date='$val[ar_date]'");
	$adult=$val['adult'];
	$child=$val['child'];
	if($adult==1){
		$adult_price=$rp['sell_rate_one']+($rp['sell_rate_one']*$rp['tax_one']/100);
	}else if($adult==2){
		$adult_price=$rp['sell_rate_two']+($rp['sell_rate_two']*$rp['tax_two']/100);
	}else if($adult>2){
		$no_adult=$val['adult']-2;
		$adult_price1=($val['extra_adult']+($val['extra_adult']*$rp['tax_one']/100))*$no_adult;
		$adult_price=$rp['sell_rate_two']+($rp['sell_rate_two']*$rp['tax_two']/100);
		$adult_price=$adult_price+$adult_price1;
	}
	if($child==0){
		$child_price=$rp['sell_rate_one']+($rp['sell_rate_one']*$rp['tax_one']/100);
	}else if($child>0){
		$no_child=$val['child'];
		$child_price1=($val['extra_child']+($val['extra_child']*$rp['tax_one']/100))*$no_child;
		$adult_price=$rp['sell_rate_two']+($rp['sell_rate_two']*$rp['tax_two']/100);
		$child_price=$adult_price+$child_price1;
	}
	$tot=($adult_price+$child_price)*$no_days*$val['rooms'];
}else{
	$val1=$dbf->fetchSingle("rooms","*","id='$val[room_id]'");
	$tot=$val1['price']*$no_days*$val['rooms'];
}
$name=$val['name'];

$phone=$val['phoneno'];
$email=$val['email'];
$date=$val['cur_date'];
$order_id=$_REQUEST['book_id'];
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
                                    <h3>PAY NOW</h3>
                                    <h4 style="color:#fff">MAKE THE PAYMENT FOR BOOKING CONFIRMATION</h4>
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
                            <li>PAY</li>
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
                  	<style>
.paymentWrap .paymentBtnGroup {
	max-width: 800px;
	margin: auto;
}

.paymentWrap .paymentBtnGroup .paymentMethod {
	box-shadow: none;
	position: relative;
	height: 75px;
    width: 175px;
	padding:20px;
}

.paymentWrap .paymentBtnGroup .paymentMethod.active {
	outline: none !important;
}

.paymentWrap .paymentBtnGroup .paymentMethod.active .method {
	background-color: #4cd264;
	outline: none !important;
	box-shadow: 0px 3px 22px 0px #7b7b7b;
	padding: 20px;
}

.paymentWrap .paymentBtnGroup .paymentMethod .method {
	position: absolute;
	right: 3px;
	top: 3px;
	bottom: 3px;
	left: 3px;
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
	border: 2px solid transparent;
	transition: all 0.5s;
	padding: 20px;
}

.paymentWrap .paymentBtnGroup .paymentMethod .method.visa {
	    background-color: #fff;
    color: #000;
    font-weight: bold;
}

.paymentWrap .paymentBtnGroup .paymentMethod .method:hover {
	border-color: #4cd264;
	outline: none !important;
}
label.btn.paymentMethod.active.left {
    float: left !important;
}
label.btn.paymentMethod.right {
    float: right !important;
}
.paymentWrap .paymentBtnGroup {
    max-width: 800px;
    margin: auto;
    margin-left: 127px !important;
}
.btn-lg, .btn-group-lg > .btn {
    font-size: 15px !important;
}
.razorpay-payment-button {
    color: #fff;
    background-color: #5cb85c;
    border-color: #4cae4c;
    line-height: 1.3333333;
    border-radius: 6px;
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    /* text-align: center; */
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
</style>    
            <?php
                
                $key="lH8IMH";
                $salt="4tMkUnB19cra67xz4Ad4zBUQD9vYWnLQ";
                
                $action = 'https://test.payu.in/_payment';
                
                $html='';
                
                if(strcasecmp($_SERVER['REQUEST_METHOD'], 'POST') == 0){
                    
                    /* Request Hash
                    ----------------
                    For hash calculation, you need to generate a string using certain parameters 
                    and apply the sha512 algorithm on this string. Please note that you have to 
                    use pipe (|) character as delimeter. 
                    The parameter order is mentioned below:
                    
                    sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT)
                    
                    Description of each parameter available on html page as well as in PDF.
                    
                    Case 1: If all the udf parameters (udf1-udf5) are posted by the merchant. Then,
                    hash=sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT)
                    
                    Case 2: If only some of the udf parameters are posted and others are not. For example, if udf2 and udf4 are posted and udf1, udf3, udf5 are not. Then,
                    hash=sha512(key|txnid|amount|productinfo|firstname|email||udf2||udf4|||||||SALT)
                
                    Case 3: If NONE of the udf parameters (udf1-udf5) are posted. Then,
                    hash=sha512(key|txnid|amount|productinfo|firstname|email|||||||||||SALT)
                    
                    In present kit and available PayU plugins UDF5 is used. So the order is -	
                    hash=sha512(key|txnid|amount|productinfo|firstname|email|||||udf5||||||SALT)
                    
                    */
                    //generate hash with mandatory parameters and udf5
                    $hash=hash('sha512', $key.'|'.$_POST['transactionId'].'|'.$_POST['product_price'].'|'.$_POST['productinfo'].'|'.$_POST['name'].'|'.$_POST['email'].'|||||'.$_POST['udf5'].'||||||'.$salt);
                        
                    $_SESSION['salt'] = $salt; //save salt in session to use during Hash validation in response
                    // echo $_SESSION['salt'], ' *** ',$_POST['name'],'  ',$_POST['email'],'  ',$_POST['phone'], '   ', $hash, '  ',$_POST['Pg'];
                    // echo "<br>***<br>";
                    // echo $_POST['product_price'];

                    $html = '<form action="'.$action.'" id="payment_form_submit" method="post">
                            <input type="hidden" id="udf5" name="udf5" value="'.$_POST['udf5'].'" />
                            <input type="hidden" id="surl" name="surl" value="'.getCallbackUrl().'" />
                            <input type="hidden" id="furl" name="furl" value="'.getCallbackUrl().'" />
                            <input type="hidden" id="curl" name="curl" value="'.getCallbackUrl().'" />
                            <input type="hidden" id="key" name="key" value="'.$key.'" />
                            <input type="hidden" id="txnid" name="txnid" value="'.$_POST['transactionId'].'" />
                            <input type="hidden" id="amount" name="amount" value="'.$_POST['product_price'].'" />
                            <input type="hidden" id="productinfo" name="productinfo" value="'.$_POST['productinfo'].'" />
                            <input type="hidden" id="firstname" name="firstname" value="'.$_POST['name'].'" />
                            
                            <input type="hidden" id="email" name="email" value="'.$_POST['email'].'" />
                            <input type="hidden" id="phone" name="phone" value="'.$_POST['phone'].'" />
                            
                            <input type="hidden" id="Pg" name="Pg" value="'.$_POST['Pg'].'" />
                            <input type="hidden" id="hash" name="hash" value="'.$hash.'" />
                            </form>
                            <script type="text/javascript"><!--
                                document.getElementById("payment_form_submit").submit();	
                            //-->
                            </script>';
                    
                    
                
                }

                //This function is for dynamically generating callback url to be postd to payment gateway. Payment response will be
                //posted back to this url. 
                function getCallbackUrl(){

                    $protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
                    $uri = str_replace('/pay.php','/',$_SERVER['REQUEST_URI']);
                    return $protocol . $_SERVER['HTTP_HOST'] . $uri . '/response.php';
                    }
                
                        
            ?>
            <table width="500" border="0" cellspacing="0" cellpadding="0" align="center" style="border:dashed 1px #666666;">
                <tr>
                <td style="text-align:center; font-weight:bold; font-size:36px; color:#2780AF;">ASSAM JATRI NIWAS</td>
                </tr>
                <tr>
                <td style="text-align:center; font-weight:bold; font-size:14px; color:#2780AF;">&nbsp;</td>
                </tr>
                <tr>
                <td style="text-align:center; font-weight:bold; font-size:14px; color:#2780AF;">Total Price : <?php echo number_format($tot,2); ?></td>
                </tr>
                <tr>
                <td style="text-align:center; font-weight:bold; font-size:14px; color:#2780AF;">Adult : <?php echo number_format($val['adult'],2); ?> || Child : <?php echo number_format($val['children2'],2); ?></td>
                </tr>
                <tr>
                <td style="text-align:center; font-weight:bold; font-size:14px; color:#2780AF;">Arrival : <?php echo date("d/m/Y",strtotime($val['ar_date'])); ?> || Depature : <?php echo date("d/m/Y",strtotime($val['dp_date'])); ?></td>
                </tr>
                <tr>
                <td style="text-align:center;">
                
                <form action="pay.php" id="payment_form" method="post">
                        <!-- Note that the amount is in paise = 50 INR -->
                        <input type="hidden" id="udf5" name="udf5" value="PayUBiz_PHP7_Kit" />
                        <input type="hidden" value="<?php echo  "Txn" . rand(10000,99999999)?>" name="transactionId" id="transactionId">
                        <input type="hidden" value="<?php echo $order_id;?>" name="order_id" id="order_id">
                        <input type="hidden" name="product_price" value="<?php echo $tot;?>"> 
                        <input type="hidden" name="productinfo" value="booking of room"> 
                        <input type="hidden" class="form-control" name="name" value="<?php echo $name; ?>">
                        <input type="hidden" class="form-control" name="phone"  value="<?php echo $phone; ?>">		
                        <input type="hidden" class="form-control" name="email" value="<?php echo $email; ?>">
                        <input type="hidden" id="Pg" name="Pg" placeholder="PG" value="CC" /></span>
                        <input type="button" id="btnsubmit" name="btnsubmit" value="Pay" onclick="frmsubmit(); return true;" />
                        
                </form>
                
                
            </td>
                </tr>
                <tr>
                <td style="text-align:center;">&copy; All Right Resereved. ASSAM JATRI NIWAS.</td>
                </tr>
                
            </table>
            <?php
            if($html) echo $html; //submit request to PayUBiz  ?>
            <!-- Below script makes final submission of form to Payment Gateway. This script is for present Demo/Test request 
            form only. In case of live integration, other methods may be used for request form submission. Salt is confidential
            so should not be passed over internet.//-->
            <script type="text/javascript">		
                <!--
                function frmsubmit()
                {
                    
                    document.getElementById("payment_form").submit();	
                    return true;
                }
                //-->
            </script>
        </div>

        
                
    </div>
    <!-- End main content -->
</section>
<!-- End welcome section -->

<!-- Start Footer bottom section -->
<?php include"footer.php"; ?>