<?php
include_once "base.php";
//function checkin(user_id,tag_id,duration)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["user_id"])) && (!empty($_POST["tag_id"]))) {
	//$user_id = strtolower($user_id);
	$user_id = mysqli_real_escape_string($con, $_POST['user_id']);
	$tag_id = mysqli_real_escape_string($con, $_POST['tag_id']);
	echo ($user_id."\n");
	echo ($tag_id."\n");
	if (!empty($_POST["duration"]))	
		$duration = test_input($_POST["duration"]);
	else $duration = "30";
	$sql = "REPLACE `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`) VALUES ('$tag_id', '$user_id', CURRENT_TIMESTAMP)";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}
	echo "1 record added to tag_occupied_by_user\n";
	//	echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
	$sql = "REPLACE `dashtable`.`eventlog` (`timestamp`, `tag_id`, `user_id`) VALUES (CURRENT_TIMESTAMP, '$tag_id', '$user_id')";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}
	echo "1 record added to eventlog\n";
}

mysqli_close($con);
?>
