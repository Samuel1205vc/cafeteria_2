<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

//$db->debug=true;

$categoria = $_POST["dato"];
$codigo = $_POST["codigo"];
$titulo = $_POST["titulo"];
$editorial = $_POST["editorial"];



if($editorial or $categoria or $codigo or $titulo){

    $sql = $db->Prepare("SELECT *
                        FROM libros l
                        INNER JOIN categorias c ON c.id_Categoria = l.id_Categoria
                        WHERE  l.id_categoria=?
                        AND l.codigo LIKE ?
                        AND l.titulo LIKE ?
                        AND l.editorial LIKE ?                      
    ");
    $rs =$db->GetAll($sql, array($categoria,$codigo."%", $titulo."%", $editorial."%"));


    if ($rs) {
        echo "<center>
                    <table class='listado'>
                    <tr>                                   
                        <th>CATEGORIA</th><th>CODIGO</th><th>TITULO</th><th>EDITORIAL</th>
                    </tr>";
        foreach ($rs as $k => $fila) {

            $str1=$fila["Categoria"];
            $str2=$fila["codigo"];
            $str3=$fila["titulo"];
            $str4=$fila["editorial"];

            echo"<tr>
                    
                    <td>".resaltar($fila["Categoria"], $str1)."</td>
                    <td>".resaltar($codigo, $str2)."</td>
                    <td>".resaltar($titulo, $str3)."</td>
                    <td>".resaltar($editorial, $str4)."</td>

                   
                     </tr>";
                                                                 
               
                    
        }
        echo"</table>
        </center>";
    } else {
        echo"<center><b> EL LIBRO NO EXISTE !! </b></center>";
        /*echo"<center>
                    <table class='listado'>
                    
                    <tr>
                        <th><b>categoria</b></th>
                        <td><input type='text' name='categoria1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
                    </tr>
                    <tr>
                        <th><b>titulo</b></th>
                        <td><input type='text' name='titulo1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>                    
                    </tr>
                    
                    
                    
                    <tr>
                        <td align='center' colspan='2'>  
                        <input type='button' value='ADICIONAR LIBRO'  onClick='insertar_libro()'>
                        </td>
                    </tr>
                    </table>
                </center>";*/

    }
}
?>