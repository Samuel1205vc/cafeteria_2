<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_tipo_producto = $_POST["id_tipo_producto"];

$sql = $db->Prepare("SELECT *
                     FROM tipos_productos
                        WHERE id_tipo_producto= ?
                     AND _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql,array($id_tipo_producto));

echo"<center>
    <table width='60%' border='1'>
        <tr>
            <th colspan='4' > DATOS TIPO_PRODUCTO </th>
        </tr> ";
        foreach ($rs as $k => $fila) {
            echo "<tr>
                    <td>" . $fila['nombre'] . "</td>
                 </tr>";
        }
        echo"</table>
        </center>";
?>