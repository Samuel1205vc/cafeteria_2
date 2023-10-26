<?php
session_start();
require_once("../../conexion.php");


       
       $nombre1 = $_POST["nombre1"];
       $direccion1 = $_POST["direccion1"];
       $telefono1 = $_POST["telefono1"];
       $pag_web1 = $_POST["pag_web1"];
       $resol_min1 = $_POST["resol_min1"];
       $mision1 = $_POST["mision1"];
       $vision1 = $_POST["vision1"];


       $reg = array();
       //$reg["id_instituto"] = 1;
       $reg["nombre"] = $nombre1;
       $reg["direccion"] = $direccion1;
       $reg["telefono"] = $telefono1;
       $reg["pag_web"] = $pag_web1;
       $reg["mision"] = $mision1;
       $reg["version"] = $vision1;
     
       
       $reg["usuario"] = $_SESSION["sesion_id_usuario"];   
       $rs1 =$db->AutoExecute("institutos", $reg, "INSERT"); 

?> 