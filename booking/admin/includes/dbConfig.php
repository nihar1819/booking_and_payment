<?php
//db details
$dbHost = '192.168.0.105';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'school';

//Connect and select the database
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>