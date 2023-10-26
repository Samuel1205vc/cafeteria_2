<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$id_Categoria = $_POST["id_Categoria"];
$libro = $_POST["libro"];
$clave = $_POST["clave"];
$hash=password_hash($clave, PASSWORD_DEFAULT);

if(($id_Categoria!="") and  ($libro!="") and ($clave!="")){
   $reg = array();
   $reg["id_Categoria"] = $id_Categoria;
   $reg["codigo"] = $codigo;
   $reg["titulo"] = $titulo;
   $reg["nro_paginas"] = $nro_paginas;
   $reg["editorial"] = $editorial;
   $reg["clave"] = $hash;
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("usuarios", $reg, "INSERT"); 
   header("Location: usuarios.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DEL LIBRO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='libro_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 