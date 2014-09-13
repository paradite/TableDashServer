<?php
include_once "base.php";
//function checkin(user_id,tag_id,duration)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["tag_id"])) && (!empty($_POST["table_id"]))) {
	//$user_id = strtolower($user_id);
	$tag_id = mysqli_real_escape_string($con, $_POST['tag_id']);
	$table_id = mysqli_real_escape_string($con, $_POST['table_id']);
	//echo ($tag_id."\n");
	//echo ($table_id."\n");
	$sql = "REPLACE `dashtable`.`tag_to_table` (`tag_id`, `table_id`) VALUES ('$tag_id', '$table_id');";
	if (!$result=mysqli_query($con,$sql)) {
		die('Error: ' . mysqli_error($con));
	}
	else echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
	if (isset($DEBUG) && $DEBUG) echo ("table added");
}

mysqli_close($con);
?>
