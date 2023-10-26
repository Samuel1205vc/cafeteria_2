
<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

$fecha1 = $_REQUEST["fecha1"];
$fecha2 = $_REQUEST["fecha2"];




$sql = $db->Prepare("SELECT CONCAT_WS(' ',c.nombre,c.ap,c.am) as cliente,p.nombre_producto ,cc.fec_consumo_cliente
                    FROM consumos_clientes cc
                    INNER JOIN clientes c ON c.id_cliente = cc.id_cliente
                    INNER JOIN detalles_consumos dc ON dc.id_consumo_cliente = cc.id_consumo_cliente                   
                    INNER JOIN productos p ON p.id_producto = dc.id_producto

                    WHERE cc.fec_consumo_cliente BETWEEN ? AND ?
                    AND c._estado <> 'X'
                    AND cc._estado <> 'X'
                    AND dc._estado <> 'X'                 
                    ");

$rs = $db->GetAll($sql, array($fecha1, $fecha2));

$sql1 = $db->Prepare("SELECT *
                    FROM cafeteria
                     WHERE id_cafeteria = 1
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
                <td><img src='../cafeteria/logos/{$logo}' width='70%'></td>
                <td align='center'  width='80%'><h1>REPORTES DE CLIENTES POR FECHAS DE CONSUMOS</h1></td>
                </tr>
            </table>";
    echo "<center>             
                <table border='1' cellspacing='0'>
                    <tr>
                        <th>Nro</th><th>CLIENTES</th><th>PRODUCTOS</th><th>FECHAS DE CONSUMOS</th>
                    </tr>";
    $b = 1;
    foreach ($rs as $k => $fila) {
        echo "<tr>
        <td align='center'>" . $b . "</td>
        <td>" . $fila['cliente'] . "</td>
        <td>" . $fila['nombre_producto'] . "</td>
        <td><i>" . $fila['fec_consumo_cliente'] . "</i></td>
        </tr>";
        $b = $b + 1;
    }
    echo "</table></br>
                    </b>DEL :</b>" . $fecha1 . " <b>AL :</b>" . $fecha2. "
            </center>";
}
echo "</body>
    </html>";
?>