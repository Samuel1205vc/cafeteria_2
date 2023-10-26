<?php
session_start();
require_once("../../conexion.php");

$__id_carrera = $_REQUEST["id_carrera"];

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";



   $reg = array("id_carrera"=>$__id_carrera);
   $rs1 = $db->Execute("DELETE FROM carreras WHERE id_carrera = ?",$reg); 
   header("Location:carreras.php");
   exit();
  

            ?>