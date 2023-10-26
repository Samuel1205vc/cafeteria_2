<?php
session_start();
require_once("../../conexion.php");


       
       $codigo1 = $_POST["codigo1"];
       $titulo1 = $_POST["titulo1"];
       $nro_paginas1 = $_POST["nro_paginas1"];
       $editorial1 = $_POST["editorial1"];


       $reg = array();
       $reg["id_cafeteria"] = 1;
       $reg["codigo"] = $codigo1;
       $reg["titulo"] = $titulo1;
       $reg["nro_paginas"] = $nro_paginas1;
       $reg["editorial"] = $editorial1;
       $reg["fec_insercion"] = date("Y-m-d H:i:s");
       $reg["_estado"] = 'A';
       $reg["usuario"] = $_SESSION["sesion_id_usuario"];   
       $rs1 =$db->AutoExecute("personas", $reg, "INSERT"); 

?>  