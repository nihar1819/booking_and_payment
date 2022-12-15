<?php

/*if($_SERVER['REMOTE_ADDR']=="127.0.0.1")
 {*/ 
 //define('DB_SERVER', 'localhost');  
 //define('DB_USERNAME', 'assamjat_new');
 //define('DB_PASSWORD', 'jatrinew@123~');
//  define('DB_USERNAME', 'demo@demo.com');
//  define('DB_PASSWORD', 'demo');
 define('DB_DATABASE', 'assamjat_new');  
 
 define('DB_SERVER', 'localhost');  
 define('DB_USERNAME', 'root');
 define('DB_PASSWORD', '');
 //define('DB_DATABASE', 'hotel'); 
 ################## Constats ###################
 define('PROJECT_NAME','Online Exam');
 define('SERVER_NAME','192.168.0.105');
 //define('SERVER_NAME','192.168.0.114');
 ################## Constats ###################
 
 //For Local Server Connection
 /*define('DB_SERVER', 'localhost');  
 define('DBUSER', 'hotelkri_krishna');
 define('DBPASS', 'pass123#~');
 define('DBNAME', 'hotelkri_seasight');  */
 
/* }
 else
 {
	 
 define('DB_SERVER', 'localhost');  
 define('DBUSER', 'cybertro_crzuser');
 define('DBPASS', 'crazzyuser123');
 define('DBNAME', 'cybertro_crazzy');
 
 /*define('DB_SERVER', 'localhost');  
 define('DBUSER', 'yourdiv1_ydadmin');
 define('DBPASS', 'z1ntpRLS~F6c');
 define('DBNAME', 'crz');
 
 }*/

class DB_Class
{
	function __construct()
	{
		$connection = mysqli_connect('localhost', 'root', '','assamjat_new') or die('Oops connection error -> ' . mysqli_connect_error());
	}
}

// uG-g{AYs}dUa


/**********************General WebSite Settings************************************/
//define('DATE_FORMAT', 'd-M-Y');
//define('DATE_TIME_FORMAT', 'd-M-Y, h:i a');
date_default_timezone_set("UTC");
?>
<?php ini_set("display_errors",0);?>