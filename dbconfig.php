<?php

$conn = mysqli_connect("localhost", "root", "", "picture");
if(mysqli_connect_errno() === 0){
    // echo "اتصال به بانک برقرار است." ."<br>";
}
else{
    exit("خطای اتصال به بانک " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8");
?>