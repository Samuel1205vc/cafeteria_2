<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_persona = $_POST["id_persona"];

$sql = $db->Prepare("SELECT *
                     FROM personas
                        WHERE id_persona= ?
                     AND _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql,array($id_persona));

echo"<center>
    <table width='60%' border='1'>
        <tr>
            <th colspan='4' > DATOS PERSONA </th>
        </tr> ";
        foreach ($rs as $k => $fila) {
            echo "<tr>
                    <td align='center'>" . $fila['ci'] . "</td>
                    <td>" . $fila['ap'] . "</td>
                    <td>" . $fila['am'] . "</td>
                    <td>" . $fila['nombres'] . "</td>
                </tr>";
        }
        echo"</table>
        </center>";
?>