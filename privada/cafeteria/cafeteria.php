<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;


echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
 
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
         echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>MODIFICAR CAFETERIA</h1>";

$sql = $db->Prepare("SELECT *
                     FROM cafeteria
                     WHERE id_cafeteria = 1
                     AND _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql);
$logo = $rs[0]["logo"];
/*  if ($rs) {*/
  foreach($rs as $k => $fila) {
        echo"<form action='cafeteria1.php' method='post' name='formu' enctype='multipart/form-data'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th><b>(*)nombre</b></th><td><input type='text' name='nombre' size='20' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["nombre"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)dir</b></th><td><input type='text' name='dir' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["dir"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>logo</b></th>
                    <td>
                    <input type='hidden' name='MAX_FILE_SIZE' VALUE='1000000' >
                    <input type='hidden' name='logo_bd' value='".$fila["logo"]."'>
                    <input type='file' name='logo_ac' size='10'<br><br>";
                    echo $fila["logo"];
                    echo"</td>
                  </tr> 
                  <tr>
                  <td align='center' colspan='2'>
                    <input type='submit' value='MODIFICAR CAFETERIA'  >
                    <input type='hidden' name='id_cafeteria' value='".$fila["id_cafeteria"]."'>  
                      
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;  }  
    /*}*/

echo "</body>
      </html> ";

 ?>