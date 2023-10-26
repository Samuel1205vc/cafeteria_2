<?php
session_start();
require_once("../../conexion.php");


       
       $nombres1 = $_POST["nombres1"];
       $ap1 = $_POST["ap1"];
       $am1 = $_POST["am1"];
       $ci1 = $_POST["ci1"];
       $telefono1 = $_POST["telefono1"];
       $direccion1 = $_POST["direccion1"];


       $reg = array();
       $reg["id_cafeteria"] = 1;
       $reg["ap"] = $ap1;
       $reg["am"] = $am1;
       $reg["nombres"] = $nombres1;
       $reg["ci"] = $ci1;
       $reg["direccion"] = $direccion1;
       $reg["telefono"] = $telefono1;
       $reg["fec_insercion"] = date("Y-m-d H:i:s");
       $reg["_estado"] = 'A';
       $reg["usuario"] = $_SESSION["sesion_id_usuario"];   
       $rs1 =$db->AutoExecute("personas", $reg, "INSERT"); 

?> 