<?php
session_start();
require_once("../../../../../conexion.php"); ?>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Highcharts Example</title>

		<style type="text/css">
#container {
    height: 400px;
}

.highcharts-figure,
.highcharts-data-table table {
    min-width: 310px;
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #ebebeb;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}

.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

		</style>
	</head>
	<body>

<script src="../../code/highcharts.js"></script>
<script src="../../code/highcharts-3d.js"></script>
<script src="../../code/modules/exporting.js"></script>
<script src="../../code/modules/export-data.js"></script>
<script src="../../code/modules/accessibility.js"></script>

<figure class="highcharts-figure">
    <div id="container"></div>
    <!--<p class="highcharts-description">
        Chart designed to show the difference between 0 and null in a 3D column
        chart. A null point represents missing data, while 0 is a valid value.
    </p>-->
</figure>


		<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        type: 'column',
        options3d: {
            enabled: true,
            alpha: 10,
            beta: 25,
            depth: 70
        }
    },
    title: {
        text: 'Reporte de precios de productos',
        align: 'left'
    },
    /*subtitle: {
        text: 'Source: ' +
            '<a href="https://www.ssb.no/en/statbank/table/08804/"' +
            'target="_blank">SSB</a>',
        align: 'left'
    },*/
    subtitle: {
        text: 'ELABORADO POR SAMUEL VALE',
        align: 'left'
    },

    plotOptions: {
        column: {
            depth: 25
        }
    },
    xAxis: {
        categories: [/*'Belgium', 'China', 'Denmark', 'Fiji', 'Germany', 'Netherlands', 'Russia',
        'Sweden', 'Turkey', 'United States', 'Unspecified', 'Vietnam'*/
        <?php
                $sql = $db-> Prepare("SELECT *
                                    FROM productos
                                    WHERE _estado = 'A'
                                    ");
                $rs= $db->GetAll($sql);
                foreach($rs as $k=> $fila){
                ?>
                    ['<?php echo $fila["nombre_producto"]; ?>', <?php echo $fila["precio"]; ?>],
                    <?php    
                }
            ?>
    ],
        labels: {
            skew3d: true,
            style: {
                fontSize: '16px'
            }
        }
    },
    yAxis: {
        title: {
            text: 'precios en bs.',
            margin: 20
        }
    },
    tooltip: {
        valueSuffix: ' MNOK'
    },
    series: [{
        name: 'Total de Precios',
        data: [/*16076, 112688, 39452, 0, 94352,
    30495, 21813, 95908, 11596, 53771, null, 8270*/
    <?php
                $sql = $db-> Prepare("SELECT *
                                    FROM productos
                                    WHERE _estado = 'A'
                                    ");
                $rs= $db->GetAll($sql);
                foreach($rs as $k=> $fila){
                ?>
                    ['<?php echo $fila["nombre_producto"]; ?>', <?php echo $fila["precio"]; ?>],
                    <?php    
                }
            ?>
]
    }]
});

		</script>
	</body>
</html>
