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
       <a  href='carreras.php'>Listado de Carreras</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>INSERTAR CARRERA</h1>";

$sql = $db->Prepare("SELECT nombre, id_instituto
                     FROM institutos
                                           
                        ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='carrera_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Instituto</th>
                    <td>
                      <select name='id_instituto'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_instituto']."'>".$fila['nombre']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"
                  <tr>
                    <th><b>Carrera</b></th>
                    <td><input type='text' name='carrera' size='20' onkeyup='this.value=this.value.toUpperCase()'></td>
                  </tr>
                  <tr>
                    <th><b>Direccion</b></th>
                    <td><input type='text' name='direccion' size='20' onkeyup='this.value=this.value.toUpperCase()'></td>
                  </tr>
                  <tr>
                    <th><b>Telefono</b></th>
                    <td><input type='text' name='telefono' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>                    
                  </tr>
                  <tr>
                    <th><b>Grado_academico</b></th><td><input type='text' name='grado_academico' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>Descripcion</b></th>
                    <td><input type='text' name='descripcion' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>Duracion</b></th>
                    <td><input type='text' name='duracion' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR CARRERA'><br>
                      (*)Datos Obligatorios
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/

echo "</body>
      </html> ";

 ?>