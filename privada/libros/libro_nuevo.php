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
       <a  href='libros.php'>Listado de Libros</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>INSERTAR LIBRO</h1>";

$sql = $db->Prepare("SELECT *
                     FROM categorias                        
                        ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='libro_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Categoria</th>
                    <td>
                      <select name='id_Categoria'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_Categoria']."'>".$fila['Categoria']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"<tr>
                    <th><b>(*)Nombre de libro</b></th>
                    <td><input type='text' name='titulo' size='10'></td>
                  </tr>
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR LIBRO'><br>
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