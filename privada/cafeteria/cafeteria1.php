<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       
$id_cafeteria = $_POST["id_cafeteria"];
$nombre = $_POST["nombre"];
$dir = $_POST["dir"];
$logo_bd = $_POST["logo_bd"];

$nombre_log = $_FILES['logo_ac']['name'];



//ESTO ES PARA GUARDAR LA IMAGEN
if((!empty(($_FILES['logo_ac'])) and is_uploaded_file($_FILES['logo_ac']['tmp_name']))) {
  copy($_FILES['logo_ac']['tmp_name'],'logos/'.$nombre_log);
  $logo_ac = $_FILES['logo_ac']['name'];
}else if ($logo_bd == "") {
  $nombre_log = '';
}else
$nombre_log = $logo_bd;

if(($nombre!="") and ($dir!="")){
   $reg = array();
   $reg["id_cafeteria"] = 1;
   $reg["nombre"] = $nombre;
   $reg["dir"] = $dir;
 
   $reg["logo"] = $nombre_log;
     
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];
   $rs1 = $db->AutoExecute("cafeteria", $reg, "UPDATE",  "id_cafeteria='".$id_cafeteria."'"); 
   header("Location: ../../listado_tablas.php");
   exit();
} else {
        if (!$rs1){
          echo"<div class='mensaje'>";
          $mensage = "NO SE MODIFICARON LOS DATOS DE LA CAFETERIA";
          echo"<h1>".$mensage."</h1>";

          echo"<a href='cafeteria.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
        }
   }


echo "</body>
      </html> ";
?> 