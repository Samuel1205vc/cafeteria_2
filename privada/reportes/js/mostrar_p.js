"use strict"
function mostrar(id_producto){
    var d1, ventanaCalendario;
    d1 = id_producto;
    ventanaCalendario = window.open("ficha_tecnica_productos1.php?id_producto=" + d1 , "calendario", "width=600, height=550, left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
}