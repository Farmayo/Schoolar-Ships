function Mostrar(id) {
    if (document.getElementById(id) && document.getElementById('btn4')) {
        var contenedor = document.getElementById(id);
        contenedor.style.display = (contenedor.style.display == 'none') ? 'grid' : 'none';
        var contenedor2 = document.getElementById('btn4');
        contenedor2.style.display = (contenedor2.style.display == 'grid') ? 'none' : 'grid';
    }
    }
    window.onload = function(){
        Mostrar(id);

    return true;
}