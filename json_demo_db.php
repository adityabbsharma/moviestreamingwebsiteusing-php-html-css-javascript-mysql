<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "moviesdb";
    $connect = mysqli_connect($server, $username, $password, $database);
    $query = "SELECT * FROM movietb";
    $result = mysqli_query($connect, $query);
    $json_array =  array();
    while($row = mysqli_fetch_assoc($result)){
        $json_array[] = $row;
    }
    $myjson = json_encode($json_array);
    echo $myjson;
    $connect->close();
?>