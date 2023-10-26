<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

//$db->debug=true;

$nombre = $_POST["nombre"];
$direccion = $_POST["direccion"];
$telefono  = $_POST["telefono"];

$pag_web  = $_POST["pag_web"];

if($nombre or $direccion or  $telefono or  $pag_web ){
    $sql = $db->Prepare("SELECT *
                            FROM institutos
                            WHERE nombre LIKE ?
                            AND direccion LIKE ?

                            AND telefono LIKE ? 

                            AND pag_web LIKE ?
    ");  
    $rs =$db->GetAll($sql, array($nombre."%", $direccion."%", $telefono."%", $pag_web."%"));


    if ($rs) {
        echo "<center>
                    <table class='listado'>
                    <tr>                                   
                        <th>TELEFONO</th><th>NOMBRE</th><th>DIRECCION</th><th>PAG WEB</th><th>?</th>
                        
                    </tr>";
        foreach ($rs as $k => $fila) {
            $str =$fila["telefono"];
            $str1=$fila["nombre"];
            $str2=$fila["direccion"];
            $str3=$fila["pag_web"];
         

            echo"<tr>
                    <td aling='center'>".resaltar($telefono, $str)."</td>
                    <td>".resaltar($nombre, $str1)."</td>
                    <td>".resaltar($direccion, $str2)."</td>
                    <td>".resaltar($pag_web, $str3)."</td>
                 
                   <td align='center'>
                            <input type='radio' name='opcion'  value='' onClick='buscar_instituto(".$fila["id_instituto"].")'>
                            
                        </td>                                                    
                </tr>";       
        }
        echo"</table>
        </center>";
    } else {
        echo"<center><b> EL INSTITUTO NO EXISTE !! </b></center>";
        echo"<center>
                    <table class='listado'>
                    <tr>
                        <th><b>(*)NOMBRE</b></th>
                        <td><input type='text' name='nombre1' size='10'></td>
                    </tr>
                    <tr>
                        <th><b>DIRECCION</b></th>
                        <td><input type='text' name='direccion1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
                    </tr>
                    <tr>
                        <th><b>TELEFONO</b></th>
                        <td><input type='text' name='telefono1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>                    
                    </tr>
                    <tr>
                        <th><b>(*)PAGINA WEB</b></th>
                        <td><input type='text' name='pag_web1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    <tr>
                        <th><b>RESOLUCION MINISTERIAL</b></th>
                        <td><input type='text' name='resol_min1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    <tr>
                        <th><b>VISION</b></th>
                        <td><input type='text' name='vision1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    <tr>
                        <th><b>MISION</b></th>
                        <td><input type='text' name='mision1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td align='center' colspan='2'>  
                        <input type='button' value='ADICIONAR INSTITUTO'  onClick='insertar_instituto()'>
                        </td>
                    </tr>
                    </table>
                </center>";

    }
}
?>