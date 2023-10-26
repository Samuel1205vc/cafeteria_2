<?php
session_start();
require_once("../../conexion.php");


       
       $nombre1 = $_POST["nombre1"];
       


       $reg = array();
       $reg["id_cafeteria"] = 1;
      
       $reg["nombre"] = $nombre1;
      
       $reg["fec_insercion"] = date("Y-m-d H:i:s");
       $reg["_estado"] = 'A';
       $reg["usuario"] = $_SESSION["sesion_id_usuario"];   
       $rs1 =$db->AutoExecute("personas", $reg, "INSERT"); 

?> 