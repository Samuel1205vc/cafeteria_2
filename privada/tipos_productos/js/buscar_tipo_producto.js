"use strict"
function buscar_tipos_productos(){
    var d3, ajax, url, param, contenedor;
    contenedor =document.getElementById('tipos_productos1');
    d3 = document.formu.nombre.value;
    ajax =nuevoAjax();
    url = "ajax_buscar_tipo_producto.php"
    param = "&nombre="+d3;

    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.onreadystatechange = function(){ 
    if(ajax.readyState==4 ){
       contenedor.innerHTML=ajax.responseText;
    }

    }
    ajax.send(param);
}