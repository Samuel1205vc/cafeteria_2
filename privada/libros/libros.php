<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
         <script type='text/javascript' src='../../ajax.js'></script>
         <script type='text/javascript' src='js/buscar_libro.js'></script>
       </head>

       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
      
       <a  href='libro_nuevo.php'>Nuevo Libro</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
         echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE LIBROS</h1>";



$sql1 = $db->Prepare("SELECT * 
                     FROM categorias                                           
                    ");
$rs1 = $db->GetAll($sql1);
        echo"
<!------- INICIO BUSCADOR -------->
    <center>
    <form action='#'' method='post' name='formu'>
    <table border='1' class='listado'>
      <tr>
      <th>
        <b>Categoria</b></br>
           <select name='dato' onChange='buscar_libro()'>
           <option value=''>--SELECCIONE--</option>";
           foreach ($rs1 as $k => $fila) {
            echo"<option value='".$fila['id_Categoria']."'>".$fila['Categoria']."</libro>";
           }
          echo"</select>

        </th>
        <th>
          <b>codigo</b><br />
          <input type='text' name='codigo' value='' size='10' onKeyUp='buscar_libro()'>
        </th>
        <th>
          <b>titulo</b><br />
          <input type='text' name='titulo' value='' size='10' onKeyUp='buscar_libro()'>   
        </tr>
        <th>
          <b>editorial</b><br />
          <input type='text' name='editorial' value='' size='10' onKeyUp='buscar_libro()'>   
        </tr>
        
    </table>
    </form>
    </center>
    <!------- FIN BUSCADOR ---------->";

    echo"<div id='libros1'>";

    $sql = $db->Prepare("SELECT l.*, c.Categoria 
    FROM categorias c
    INNER JOIN libros l ON c.id_Categoria = l.id_Categoria
    ORDER BY l.id_Libro DESC                     
       ");
$rs = $db->GetAll($sql);



   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>Categoria</th><th>codigo</th><th>titulo</th><th>editorial</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td>".$fila['Categoria']."</td>
                        <td>".$fila['codigo']."</td>                       
                        <td>".$fila['titulo']."</td>
                        <td>".$fila['editorial']."</td>
                        <td align='center'>

                          <form name='formModif".$fila["id_Libro"]."' method='post' action='libro_modificar.php'>

                          <input type='hidden' name='id_Libro' value='".$fila['id_Libro']."'>

                            <input type='hidden' name='id_Categoria' value='".$fila['id_Categoria']."'>

                            <a href='javascript:document.formModif".$fila['id_Libro'].".submit();' title='Modificar categoria Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_Libro"]."' method='post' action='libro_eliminar.php'>
                            <input type='hidden' name='id_Libro' value='".$fila["id_Libro"]."'>
                            <a href='javascript:document.formElimi".$fila['id_Libro'].".submit();' title='Eliminar Categoria del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al libro ".$fila["titulo"]." ?\"))'; location.href='libro_eliminar.php''> 
                              Eliminar>>
                            </a>
                          </form>                        
                        </td>
                     </tr>";
                     $b=$b+1;
            }
             echo"</table>
          </center>";
    }

echo "</body>
      </html> ";

 ?>