<?php
//db details
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'assamjat_new';

//Connect and select the database
try{
    $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
    echo "connection successful";
}
catch(Exception $e){
    echo "error".$e;
}

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>