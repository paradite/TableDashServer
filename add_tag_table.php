<?php
include_once "base.php";
//function checkin(user_id,tag_id,duration)

$DEBUG = true;
if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["tag_id"])) && (!empty($_POST["table_id"]))) {
	//$user_id = strtolower($user_id);
	$tag_id = mysqli_real_escape_string($con, $_POST['tag_id']);
	$table_id = mysqli_real_escape_string($con, $_POST['table_id']);
	if (isset($DEBUG) && $DEBUG) echo ($tag_id."\n");
	if (isset($DEBUG) && $DEBUG) echo ($table_id."\n");
	$sql = "REPLACE `dashtable`.`tag_to_table` (`tag_id`, `table_id`) VALUES ('$tag_id', '$table_id');";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}
	echo ("table added");
}
include "log_activity.php";
mysqli_close($con);
?>
