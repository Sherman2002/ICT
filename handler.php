<?php
include 'db.php';
$name = $_POST['name'];
$sex = $_POST['sex'];
$pwds = $_POST['pwds'];
$HKID = $_POST['HKID'];
$membership = $_POST['membership'];

$sql = mysqli_query($db,'SELECT Max(Patient_Number) FROM Patient_Record');
$result = mysqli_fetch_array($sql);
$maxno = $result['Max(Patient_Number)'];
$maxno = $maxno + 1;
while(strlen($maxno)<8){
	$maxno = '0'.$maxno;
}
$sql2 = mysqli_query($db,"INSERT INTO `Patient_Record`(`Patient_Number`, `Name`, `Gender`, `HKID_Number`, `Membership`, `Password`) VALUES ('$maxno','$name','$sex','$HKID','$membership','$pwds')");
?>