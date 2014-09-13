<?php
http_response_code(200);
//var_dump(http_response_code());

class ArrayValue implements JsonSerializable {
	public function __construct(array $array) {
		$this->array = $array;
	}
	public function jsonSerialize() {
		return $this->array;
	}
}

function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
//$con=mysqli_connect("localhost","tabledash","a2d3fc5a-8087-4cfe-a62e-aae13a4da3d5","dashtable");
$con=mysqli_connect("localhost","root","","dashtable");
// Check connection
if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>