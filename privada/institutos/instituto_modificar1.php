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
$nombre = $_POST["nombre"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
$pag_web = $_POST["pag_web"];
//$genero1 = isset($_POST["genero"]); 

if($nombre!=""){
   $reg = array();
   
   $reg["nombre"] = $nombre;
   $reg["direccion"] = $direccion;
   $reg["telefono"] = $telefono;
   $reg["pag_web"] = $pag_web;
   //$reg["genero"] = $_POST["genero"];
     
   $rs1 = $db->AutoExecute("institutos", $reg, "UPDATE",  "id_instituto='".$id_instituto."'"); 
   header("Location: institutos.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE MODIFICARON LOS DATOS DEL INSTITUTO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='institutos.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 