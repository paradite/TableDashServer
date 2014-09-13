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
		$duration = test_input($_POST["duration"]);
	else $duration = "30";

	$sql = "REPLACE `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`, `timestamp_ending`) VALUES ('$tag_id', '$user_id', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + 100*$duration);";
	if (!mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}else if (isset($DEBUG) && $DEBUG) echo("seat occupied\n");

	$sql = "CREATE EVENT e_totals ON CURRENT_TIMESTAMP + 100*$duration DO INSERT INTO test.totals VALUES (NOW());"

}
include "log_activity.php";

mysqli_close($con);
?>
