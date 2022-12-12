<?php 
ob_start();
session_start();

include_once 'includes/class.Main.php';
$pageTitle='SMC || Dashboard';
include 'application_top.php';

//Check whether user is logged in or not
try{
$dbf = new User();
}
catch(Exception $e){
echo "$e";
}
//echo "hello1";
//Login process 
try{
$cnt=$dbf->countRows("admin","email='$_REQUEST[username]'");
$cnt1=$dbf->countRows("employee","email='$_REQUEST[username]'");
}
catch(Exception $e){
	echo "Error while fetching employee data";
}
echo "hello2";
if($cnt>0){
	echo "hello3";
$login=$dbf->fetchSingle("admin","*","email='$_REQUEST[username]'");
$password=base64_decode(base64_decode($login['password']));
if($_REQUEST['username'] ==$login['email'] && $_REQUEST['password']==$password ){
	//to keep record of the no of login
	

	$_SESSION['userid']=$login['id'];
	$_SESSION['useremail']=$login['email'];
	$_SESSION['usertype']=$login['user_type'];

		header("Location:dashboard.php");
}
}else if($cnt1>0){
	$emp=$dbf->fetchSingle("employee","*","email='$_REQUEST[username]'");
	if($_REQUEST['username']==$emp['email'] && $_REQUEST['password']==$emp['password']){
		$_SESSION['userid']=$emp['id'];
		$_SESSION['useremail']=$emp['email'];
		$_SESSION['usertype']="Employee";

		header("Location:dashboard.php");
	}
	
}else{
	header("Location:index.php?msg=error");	
}
?>