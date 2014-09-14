<?php
include_once "base.php";
//function checkout(user_id)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["user_id"]))) {
	//$user_id = strtolower($user_id);
	$user_id = mysqli_real_escape_string($con, $_POST['user_id']);
	if (isset($DEBUG) && $DEBUG) echo ($user_id."\n");
	$sql = "UPDATE `dashtable`.`tag_occupied_by_user` SET `timestamp_ending` = CURRENT_TIMESTAMP, `user_id` = '' WHERE `tag_occupied_by_user`.`user_id` = '$user_id';";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}	elseif (isset($DEBUG) && $DEBUG) echo ('done checkout!\n');

	$sql = "DROP EVENT IF EXISTS $user_id;";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}else if (isset($DEBUG) && $DEBUG) echo("event dropped\n");

}
include "log_activity.php";

mysqli_close($con);
?>
