<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;


$marca = $_REQUEST["marca"];
$fecha = DATE("Y-m-d H:i:s");


if ($marca=="T"){
    $sql = $db->Prepare("SELECT CONCAT_WS(' ',pe.nombre_producto) as producto, m.*,pe.*
                        FROM marcas m
                        INNER JOIN productos_examen pe ON m.id_marca = pe.id_marca                                                                      
                        ");

    $rs = $db->GetAll($sql);
}else{
    $sql = $db->Prepare("SELECT CONCAT_WS(' ',pe.nombre_producto) as producto, m.*,pe.*
                        FROM marcas m
                        INNER JOIN productos_examen pe ON m.id_marca = pe.id_marca
                        WHERE m.id_marca=?
                        ");                 
    $rs = $db->GetAll($sql, array($marca));
}



$sql1 = $db->Prepare("SELECT nombre, logo
			FROM cafeteria
			WHERE id_cafeteria=1	
		    AND _estado <> 'X'				
				");
$rs1 = $db->GetAll($sql1);

$nombre = $rs1[0]["nombre"];
$logo = $rs1[0]["logo"];

echo "<html> 
        <head>
            <script type='text/javascript'>
                var ventanaCalendario=false
                function imprimir() {
                    if (confirm(' Desea Imprimir ?')){
                    window.print();
                    }
                }
            </script>
        </head>
        <body style='cursor:pointer;cursor:hand' onClick='imprimir();'>";

if ($rs) {
    echo "<table width='100%'' border='0'>
                <tr>
                    <td ><img src='../cafeteria/logos/{$logo}' width='70%' > </td>
                    <td align='center' width='80%'> <h1>REPORTE DE PRODUCTOS x MARCAS</h1></td>
                </tr>
            </table>";
    echo "<center>             
                <table border='1' cellspacing='0'>
                    <tr>
                        <th>NOMBRE_PRODUCTO</th><th>IMAGEN</th><th>MARCA</th>
                    </tr>";
    $b = 1;
    foreach ($rs as $k => $fila) {
        echo "<tr>
                
               
        <td align='center'>" . $fila['producto'] . "</td>
        <td align='center'>" . $fila['imagen'] . "</td>
        <td align='center'>" . $fila['marca'] . "</td>
                
                
                
        </tr>";
        $b++;
    }
    echo"</table></br>";
    echo"<table><br>
                    <b>Fecha :</b>".$fecha."</b></center>";

      
    echo"        
            </center>";
}
echo "</body>
    </html>";
?>
