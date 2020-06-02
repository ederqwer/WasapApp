<?php
$name = $_POST["_NAME"];
$lastmsg = $_POST["_LASTMSG"];
$timemsg = $_POST["_TIMEMSG"];
$statemsg = $_POST["_STATEMSG"];
$avatar = $_POST["_AVATAR"];
include('conn.php');
//INSERTAR
$sql = "INSERT INTO `chats`(`NAME`, `LASTMSG`, `TIMEMSG`, `STATEMSG`, `AVATAR`) VALUES ('$name', '$lastmsg', '$timemsg', $statemsg, '$avatar')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
