<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$id_instituto = $_POST["id_instituto"];
$carrera = $_POST["carrera"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
$grado_academico = $_POST["grado_academico"];
$descripcion = $_POST["descripcion"];
$duracion = $_POST["duracion"];


if(($id_instituto!="") and  ($carrera!="") ){
   $reg = array();
   $reg["id_instituto"] = $id_instituto;
   $reg["carrera"] = $carrera;
   $reg["direccion"] = $direccion;
   $reg["telefono"] = $telefono;
   $reg["grado_academico"] = $grado_academico;
   $reg["descripcion"] = $descripcion;
   $reg["duracion"] = $duracion;
     
   $rs1 = $db->AutoExecute("carreras", $reg, "INSERT"); 
   header("Location: carreras.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DE LA CARRERA";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='carrera_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 