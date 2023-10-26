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
       <a  href='productos.php'>Listado de Productos</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>INSERTAR PRODUCTOS</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ' ,nombre) as tipo_producto, id_tipo_producto
                     FROM tipos_productos
                     WHERE _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='producto_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Tipos_productos</th>
                    <td>
                      <select name='id_tipo_producto'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_tipo_producto']."'>".$fila['tipo_producto']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"<tr>
                    <th><b>(*)Nombre de producto</b></th>
                    <td><input type='text' name='nombre_producto' size='10'></td>
                  </tr>
                  <tr>
                    <th><b>(*)Clave</b></th>
                    <td><input type='password' name='clave' size='10'></td>
                  </tr>
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR PRODUCTO'><br>
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