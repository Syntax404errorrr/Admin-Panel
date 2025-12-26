<?php

$servername = "localhost";
$username = "id18377241_testuser4528";
$password = "V9J(0~Uqfq1u>Wfq";
$dbname = "id18377241_testuser452";

$conn = mysqli_connect($servername,$username,$password,$dbname);

if(!$conn) {

die(" PROBLEM WITH CONNECTION : " . mysqli_connect_error());

}
  
?>