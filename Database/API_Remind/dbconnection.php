<?php

function dbconnection() {
    $conn=mysqli_connect("localhost", "root", "", "dremind");
    return $conn;
}

?>