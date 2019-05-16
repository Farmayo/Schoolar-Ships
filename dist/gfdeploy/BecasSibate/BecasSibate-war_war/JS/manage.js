function editData(classId) {
    var x = document.getElementsByClassName(classId);
    for(var i = 0; i < x.length; i++) {
        x[i].disabled = false;
    }
    
    var btn = document.getElementById("btn-e-" + classId);
    btn.style.display = "none";
    document.getElementById("btn-s-" + classId);
    btn.style.display = "block";
}

function updateData(classId) {
    console.log(classId);
    var x = document.getElementsByClassName(classId);
    for(var i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }
    
    var btn = document.getElementById("btn-e-" + classId);
    btn.style.display = "block";
    document.getElementById("btn-s-" + classId);
    btn.style.display = "none";
}