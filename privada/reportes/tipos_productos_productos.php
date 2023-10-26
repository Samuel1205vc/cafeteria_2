<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html>
        <head>
        <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
            <script type='text/javascript'>
            var ventanaCalendario=false
                function imprimir() {
                    ventanaCalendario = window.open('tipos_productos_productos1.php' , 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
                }
            </script>
            <script type='text/javascript'>
            var ventanaCalendario=false
                function generar_pdf() {
                    ventanaCalendario = window.open('tipos_productos_productos_pdf.php' , 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
                }
            </script>

        </head>
            <body>
            <a  href='../../listado_tablas.php'>Listado de tablas</a>
            <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' 
            style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

            echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>REPORTE DE TIPOS PRODUCTOS CON PRODUCTOS</h1>";

$sql = $db->Prepare("SELECT tp.nombre as nombre_tp, p.nombre_producto, c.nombre
                     FROM tipos_productos tp
                     INNER JOIN productos p ON tp.id_tipo_producto = p.id_tipo_producto
                     INNER JOIN cafeteria c ON c.id_cafeteria = p.id_cafeteria
                     WHERE tp._estado <> 'X'
                     AND p._estado <> 'X'
                     AND c._estado <> 'X'                        
                        ");
$rs1 = $db->GetAll($sql);
if ($rs1) {
    echo"<center>
          <table class='listado'>
            <tr>                                   
              <th>Nro</th><th>TIPOS PRODUCTO</th><th>NOMBRE DE PRODUCTO</th><th>CAFETERIA</th>
            </tr>";
            $b=1;
        foreach ($rs1 as $k => $fila) {                                       
            echo"<tr>
                    <td align='center'>".$b."</td>

                    <td>".$fila['nombre_tp']."</td>
                    <td>".$fila['nombre_producto']."</td>
                    <td>".$fila['nombre']."</td>
                 </tr>";
                 $b=$b+1;
        }
         echo"</table>
         
         <h2>
            <input type='radio' name='seleccionar' onclick='javascript:generar_pdf()'>Generar pdf
         </h2>
      </center>";
    }
echo "</body>
        </html> ";

?>