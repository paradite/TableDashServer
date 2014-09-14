<?php
include_once "base.php";
//function checkin(user_id,tag_id,duration)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["user_id"])) && (!empty($_POST["tag_id"]))) {
	//$user_id = strtolower($user_id);
	$user_id = mysqli_real_escape_string($con, $_POST['user_id']);
	$tag_id = mysqli_real_escape_string($con, $_POST['tag_id']);
	if (isset($DEBUG) && $DEBUG) echo ($user_id."\n");
	if (isset($DEBUG) && $DEBUG) echo ($tag_id."\n");
	if (!empty($_POST["duration"]))	
		$duration = mysqli_real_escape_string($con, $_POST['duration']);
	else $duration = "30";

	$sql = "REPLACE `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`, `timestamp_ending`) VALUES ('$tag_id', '$user_id', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + 100*$duration);";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}else if (isset($DEBUG) && $DEBUG) echo("seat occupied\n");

	$sql = "DROP EVENT IF EXISTS $user_id;";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}else if (isset($DEBUG) && $DEBUG) echo("event dropped\n");

	include "log_activity.php";

	$sql = "CREATE EVENT $user_id ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL $duration MINUTE DO "
	."UPDATE `dashtable`.`tag_occupied_by_user` SET `timestamp_ending` = CURRENT_TIMESTAMP, `user_id` = '' WHERE `tag_occupied_by_user`.`user_id` = '$user_id';";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}	elseif (isset($DEBUG) && $DEBUG) echo ("done creating event!\n");

}

mysqli_close($con);
?>
