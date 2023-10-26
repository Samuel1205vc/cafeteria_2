<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <p>&nbsp;</p>
       


        <h1>INSERTAR INSUMOS</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ' ,nombre) as proveedor, id_proveedor
                     FROM proveedores
                     WHERE _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='insumo_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Proveedores</th>
                    <td>
                      <select name='id_proveedor'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_proveedor']."'>".$fila['proveedor']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"<tr>
                    <th><b>(*)Nombre de insumo</b></th>
                    <td><input type='text' name='nombre' size='10' ></td>
                  </tr>

                  <tr>
                    <th><b>(*)Descripcion</b></th>
                    <td><input type='text' name='descripcion' size='10' ></td>
                  </tr>
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR INSUMO'><br>
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