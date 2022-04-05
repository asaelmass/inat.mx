<?php
$DBhost = "localhost";
$DBuser = "inat";
$DBpass = "inat.2021";
$DBname = "inat_directorio";

try{
 
 $DBcon = new PDO("mysql:host=$DBhost;dbname=$DBname",$DBuser,$DBpass);
 $DBcon->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 
}catch(PDOException $ex){
 
 die($ex->getMessage());
}?>