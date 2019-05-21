function mostrar(index, letter) {
    hide();
    var con = document.getElementById("infoMain" + index);
    con.style.display = 'block';

    var div = document.getElementById("menuForm");
    div.style.gridTemplateAreas = '"a b c"';
}

function hide() {
    var x = document.getElementsByClassName("informacion");
    console.log(x);
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = 'none';
    }
}

function mostrar2(index) {
    var x = document.getElementsByClassName("informacion2");
    console.log(x);
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = 'none';
    }
    var x = document.getElementById("infoSet" + index);
    x.style.display = 'block';
    
}

function hide2() {
    var x = document.getElementsByClassName("informacion2");
    console.log(x);
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = 'none';
    }
}

function btnShow(index) {
    var x = document.getElementsByClassName("contenedor");
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }

    x[index].style.display = "block";
}

function setEnabled(index) {
    var x = document.getElementsByClassName("inpText");
    for (var i = 0; i < x.length; i++) {
        x[i].disabled = false;
    }
}

function setDisabled(index) {
    var x = document.getElementsByClassName("inpText");
    for (var i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }
}