<?php 
	if (!isset($tag_id)) $tag_id="";
	if (!isset($user_id)) $user_id="";
	if (!isset($duration)) $duration=0;
	$activity = basename($_SERVER["SCRIPT_FILENAME"], '.php'); 
	$sql = "REPLACE `dashtable`.`activity_log` (`timestamp`, `tag_id`, `user_id`, `activity`) VALUES (CURRENT_TIMESTAMP, '$tag_id', '$user_id', '$activity');";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}elseif (isset($DEBUG) && $DEBUG) echo "1 record added to activity_log\n";
?>