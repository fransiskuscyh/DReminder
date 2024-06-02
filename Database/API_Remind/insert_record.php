<?php

include("dbconnection.php");
$conn=dbconnection();

if (isset($_POST["name"]))
{
    $name=$_POST["name"];
}

else return;
if (isset($_POST["username"]))
{
    $username=$_POST["username"];
}

else return;
if (isset($_POST["password"]))
{
    $password=$_POST["password"];
}

else return;

$query="INSERT INTO `users`(`name`, `username`, `password`) 
VALUES ('$name', '$username', '$password')";
$exe=mysqli_query($conn,$query);

$arr=[];
if($exe)
{
     $arr["success"]="true";
}
else
{
     $arr["success"]="false";
}
print(json_encode($arr));


?>