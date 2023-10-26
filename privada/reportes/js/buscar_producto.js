"use strict"
function buscar_producto(){
    var d1, d2, d3,  d11, ajax,url,param, contenedor;
    contenedor=document.getElementById('producto1');
    d1=document.formu.marca.value;
    d2=document.formu.nombre_producto.value;
    d3=document.formu.imagen.value;
    
    ajax=nuevoAjax();
    url="ajax_buscar_producto.php"
    param="marca="+d1+"&nombre_producto="+d2+"&imagen="+d3;
    //alert(param);
    ajax.open("POST",url,true);
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.onreadystatechange=function(){
        if(ajax.readyState==4){
            contenedor.innerHTML=ajax.responseText;
        }
    }
    ajax.send(param);
}