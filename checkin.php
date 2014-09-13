<?php
include_once "base.php";
//function checkin(user_id,tag_id,duration)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["user_id"]) && (!empty($_POST["tag_id"]))) {
	$user_id = test_input($_POST["user_id"]);
	$user_id = strtolower($user_id);*/
	$tag_id  = test_input($_POST["tag_id"]);
	$tag_id = strtolower($tag_id);
	if (!empty($_POST["duration"])
		$duration = test_input($_POST["duration"]);
	else $duration = "30";
	// echo($user_id);
	$sql = "INSERT INTO `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`) VALUES (\'test_tag_1\', \'test_user_1\', CURRENT_TIMESTAMP);";
	$result = mysqli_query($con,$sql);
	//echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
	$sql = "INSERT INTO `dashtable`.`eventlog` (`timestamp`, `tag_id`, `user_id`) VALUES (CURRENT_TIMESTAMP, \'test_tag_1\', \'test_user_1\');";
		. "FROM tag_occupied_by_user, tag_to_table\n";
	$result = mysqli_query($con,$sql);
	//echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
}

mysqli_close($con);
?>
