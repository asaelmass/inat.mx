<?php
    $servername = "localhost";
    $username = "inat";
    $password = "inat.2021";
    $dbname = "inat_directorio";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_errno) {
        die("Connection failed: " . $conn->connect_error);
        exit();
    }
?>