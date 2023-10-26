<?php
session_start();
require_once("../../conexion.php");

$__id_instituto = $_REQUEST["id_instituto"];

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";



   $reg = array("id_instituto"=>$__id_instituto);
   $rs1 = $db->Execute("DELETE FROM institutos WHERE id_instituto = ?",$reg); 
   header("Location:institutos.php");
   exit();
  

            ?>