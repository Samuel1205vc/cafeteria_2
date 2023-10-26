<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

$id_carrera = $_POST["id_carrera"];
$id_instituto = $_POST["id_instituto"];

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='carreras.php'>Listado de Carreras</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
         echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>MODIFICAR CARRERA</h1>";

$sql = $db->Prepare("SELECT *
                     FROM carreras
                     WHERE id_carrera = ? 
                                            
                        ");
$rs = $db->GetAll($sql, array($id_carrera));

$sql1 = $db->Prepare("SELECT nombre, id_instituto
                     FROM institutos
                     WHERE id_instituto =?
                                            
                        ");
$rs1 = $db->GetAll($sql1,array($id_instituto));

$sql2 = $db->Prepare("SELECT nombre, id_instituto
                     FROM institutos
                     WHERE id_instituto <>?
                                           
                        ");
$rs2 = $db->GetAll($sql2,array($id_instituto));

 /*  if ($rs) {*/
        echo"<form action='carrera_modificar1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Instituto</th>
                    <td>
                      <select name='id_instituto'>";
                        
                        foreach ($rs1 as $k => $fila) {
                        echo"<option value='".$fila['id_instituto']."'>".$fila['nombre']."</option>";    
                        }  

                        foreach ($rs2 as $k => $fila) {
                        echo"<option value='".$fila['id_instituto']."'>".$fila['nombre']."</option>";    
                        }

                echo"</select>
                    </td>
                  </tr>";

                   foreach ($rs as $k =>$fila){

             echo"<tr>
                    <th><b>(*)carrera</b></th>
                    <td><input type='text' name='carrera' size='10' value='".$fila["carrera"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)direccion</b></th>
                    <td><input type='text' name='direccion' size='10' value='".$fila["direccion"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)telefono</b></th>
                    <td><input type='text' name='telefono' size='10' value='".$fila["telefono"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)grado_academico</b></th>
                    <td><input type='text' name='grado_academico' size='10' value='".$fila["grado_academico"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)descripcion</b></th>
                    <td><input type='text' name='descripcion' size='10' value='".$fila["descripcion"]."'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>(*)duracion</b></th>
                    <td><input type='text' name='duracion' size='10' value='".$fila["duracion"]."'>
                    </td>
                  </tr>
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='MODIFICAR CARRERA'><br>
                      (*)Datos Obligatorios
                      <input type='hidden' name='id_carrera' value='".$fila["id_carrera"]."'>
                    </td>
                  </tr>";
                }
                echo "
                </table>
                </center>";
          echo"</form>";      
    /*}*/

echo "</body>
      </html>";

 ?>