<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

//$db->debug=true;

$id_grupo = $_POST["id_grupo"];
$opcion = $_POST["opcion"];
$contenido = $_POST["contenido"];

if($contenido or $id_grupo or $opcion){
    $sql = $db->Prepare("SELECT *
    FROM opciones
    WHERE contenido LIKE ?
    AND opcion LIKE ?
    AND id_grupo LIKE ?
    AND _estado <> 'x' 
    ");
    $rs =$db->GetAll($sql, array($contenido."%", $opcion."%", $id_grupo."%"));


    if ($rs) {
        echo "<center>
                    <table class='listado'>
                    <tr>                                   
                        <th>CONTENIDO</th><th>OPCION</th>
                        <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                    </tr>";
        foreach ($rs as $k => $fila) {
            $str1=$fila["contenido"];
            $str3=$fila["opcion"];

            echo"<tr>
                    
                    <td>".resaltar($contenido, $str1)."</td>
                    <td>".resaltar($opcion, $str3)."</td>
                    <td align='center'>
                        <input type='radio' name='opcion' value='' onClick='buscar_opcion(".$fila["id_grupo"].")'>
                    </td>                                                      
                </tr>";       
        }
        echo"</table>
        </center>";
    } else {
        echo"<center><b> LA OPCION NO EXISTE !! </b></center>";
        echo"<center>
                    <table class='listado'>
                    
                    <tr>
                        <th><b>grupo</b></th>
                        <td><input type='text' name='grupo1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
                    </tr>
                    <tr>
                        <th><b>contenido</b></th>
                        <td><input type='text' name='contenido1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>                    
                    </tr>
                    
                    
                    
                    <tr>
                        <td align='center' colspan='2'>  
                        <input type='button' value='ADICIONAR OPCION'  onClick='insertar_opcion()'>
                        </td>
                    </tr>
                    </table>
                </center>";

    }
}
?>