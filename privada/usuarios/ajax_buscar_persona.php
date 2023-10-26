<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$db->debug=true;

$nombres = $_POST["nombres"];
$ap = $_POST["ap"];
$am = $_POST["am"];
$ci      = $_POST["ci"];

if($ap or $am or $nombres or $ci ){
    $sql = $db->Prepare("SELECT *
    FROM personas
    WHERE ap LIKE ?
    AND am LIKE ?
    AND nombres LIKE ?
    AND ci LIKE ?
    AND _estado <> 'x' 
    ");  
    $rs =$db->GetAll($sql, array($ap."%", $am."%", $nombres."%", $ci."%"));


    if ($rs) {
        echo "<center>
                    <table class='listado'>
                    <tr>                                   
                        <th>C.I.</th><th>PATERNO</th><th>MATERNO</th><th>NOMBRES</th>
                        <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                    </tr>";
        foreach ($rs as $k => $fila) {
            $str =$fila["ci"];
            $str1=$fila["ap"];
            $str2=$fila["am"];
            $str3=$fila["nombres"];

            echo"<tr>
                    <td aling='center'>".resaltar($ci,      $str)."</td>
                    <td>".resaltar($ap, $str1)."</td>
                    <td>".resaltar($am, $str2)."</td>
                    <td>".resaltar($nombres, $str3)."</td>
                    <td align='center'>
                        <input type='radio' name='opcion' value='' onClick='buscar_persona(".$fila["id_persona"].")'>
                    </td>                                                      
                </tr>";       
        }
        echo"</table>
        </center>";
    } else {
        echo"<center><b> LA PERSONA NO EXISTE !! </b></center>";
        echo"<center>
                    <table class='listado'>
                    <tr>
                        <th><b>(*)CI</b></th>
                        <td><input type='text' name='ci1' size='10'></td>
                    </tr>
                    <tr>
                        <th><b>Paterno</b></th>
                        <td><input type='text' name='ap1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
                    </tr>
                    <tr>
                        <th><b>Materno</b></th>
                        <td><input type='text' name='am1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>                    
                    </tr>
                    <tr>
                        <th><b>(*)Nombres</b></th>
                        <td><input type='text' name='nombres1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    <tr>
                        <th><b>Dirección</b></th>
                        <td><input type='text' name='direccion1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    <tr>
                        <th><b>Telefono</b></th><td><input type='text' name='telefono1' size='10'></td>
                    </tr>
                    
                    <tr>
                        <td align='center' colspan='2'>  
                        <input type='button' value='ADICIONAR PERSONA'  onClick='insertar_persona()'>
                        </td>
                    </tr>
                    </table>
                </center>";

    }
}
?>