<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

echo"<html>
        <head>
        <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
             <script type='text/javascript'>
            var ventanaCalendario=false
                function reporte1() {
                    ventanaCalendario = window.open('reporte_pdf.php' , 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
                
                }
            </script>

            <script type='text/javascript'>
            var ventanaCalendario=false
                function reporte2() {
                    ventanaCalendario = window.open('Highcharts/examples/3d-column-null-values/index.php' , 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
                }
            </script>

        </head>
            <body>
            <a  href='../../listado_tablas.php'>Listado de tablas</a>
           ";

        "<h1>EVALUACIÓN DEL TERCER BIMESTRE</h1>";


    echo"<center>
    <br>
    <h1>EVALUACIÓN DEL TERCER BIMESTRE</h1>
          <table class='listado'>
            <tr>                                   
              <th>Seleccione</th>
            </tr>";
        
        echo"<tr>
                <td>
                    <input type='radio' name='seleccionar' onclick='javascript:reporte1()'>Reporte en pdf
                </td>
            </tr>
            <tr>
                <td>
                    <input type='radio' name='seleccionar' onclick='javascript:reporte2()'>Reporte Gráfico
                </td>
            </tr>";

         echo"</table>
         
      </center>";
    
echo "</body>
        </html> ";

        

?>