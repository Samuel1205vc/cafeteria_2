<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_opcion = $_POST["id_opcion"];

$sql = $db->Prepare("SELECT *
                     FROM opciones o
                     WHERE id_opcion= ?
                     INNER JOIN grupos g ON g.id_grupo = o.id_grupo
                     AND o._estado <> 'X'  
                     AND g._estado <> 'X'                       
                        ");
$rs = $db->GetAll($sql,array($id_opcion));

echo"<center>
    <table width='60%' border='1'>
        <tr>
            <th colspan='4' > DATOS OPCION </th>
        </tr> ";
        foreach ($rs as $k => $fila) {
            echo "<tr>
                    <td align='center'>" . $fila['ci'] . "</td>

                    <td>" . $fila['contenido'] . "</td>
                    <td>" . $fila['opcion'] . "</td>
                </tr>";
        }
        echo"</table>
        </center>";
?>