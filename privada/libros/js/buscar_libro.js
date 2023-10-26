"use strict"
function buscar_libro(){
    var d, d1, d2, d3, ajax, url, param, contenedor;
    contenedor =document.getElementById('libros1');
    d = document.formu.dato.value;
    d1 = document.formu.codigo.value;
    d2 = document.formu.titulo.value;
    d3 = document.formu.editorial.value;
    
    /*alert(d);
    alert(d1);
    alert(d2);
    alert(d3);*/

    ajax =nuevoAjax();
    url = "ajax_buscar_libro.php"
    param = "dato="+d+"&codigo="+d1+"&titulo="+d2+"&editorial="+d3;

    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.onreadystatechange = function(){ 
    if(ajax.readyState==4 ){
       contenedor.innerHTML=ajax.responseText;
    }

    }
    ajax.send(param);
}

