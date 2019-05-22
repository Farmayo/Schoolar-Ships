function editData(classId) {
    var x = document.getElementsByClassName(classId);
    for(var i = 0; i < x.length; i++) {
        x[i].disabled = false;
    }
    
    var btn = document.getElementById("btn-e-" + classId);
    console.log(btn);
    console.log(classId);
    if(btn) {
        btn.style.display = "none";
        btn = document.getElementById("btn-s-" + classId);
        btn.style.display = "block";
    }
}

function updateData(classId) {
    console.log(classId);
    var x = document.getElementsByClassName(classId);
    for(var i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }
    
    var btn = document.getElementById("btn-e-" + classId);
    if(btn) {
        btn.style.display = "block";
        btn = document.getElementById("btn-s-" + classId);
        btn.style.display = "none";
    }
}

function saveDataDB(classId) {
    
    var x = document.getElementsByClassName(classId);
    
    $.ajax({
        url: 'ControlUpdateUserManager',
        data: {
            id: x[0].value,
            name: x[1].value,
            password: x[2].value,
            email: x[3].value,
            rol: x[4].value
        },
        type: 'POST',
        cache: false,
        success: function (data, textStatus, jqXHR) {
            if(parseInt(data) === 200) {
                updateData(classId);
                showMessage(data, {classId: 'ja-success', message: 'Usuario actualizado correctamente'});
            } else {
                showMessage(data, {classId: 'ja-alert', message: 'Por favor intentelo de nuevo'});
            }
        }, error: function (jqXHR, textStatus, errorThrown) {
            
        }
    });
}

function deleteDataDB(classId, index, table) {
    console.log(table);
    var servlet = "";
    if(table === 'u') {
        servlet = 'ControlDeleteUseRManager';
    } else {
        servlet = 'ControlDeleteRequestManager';
    }
    
    $.ajax({
        url: servlet,
        data: {
            id: classId
        },
        type: 'POST',
        cache: false,
        success: function (data, textStatus, jqXHR) {
            if (parseInt(data) === 200) {
                showMessage(data, {classId: 'ja-success', message: 'Usuario eliminado correctamente'});
                deleteCellUser(index, table);
            } else {
                showMessage(data, {classId: 'ja-alert', message: 'Por favor intentelo de nuevo'});
            }
        }, error: function (jqXHR, textStatus, errorThrown) {
            
        }
    });
}

function showMessage(data, out) {
    var x = document.getElementById("result");
    x.classList.add(out.classId);
    x.innerText = out.message;
}

function deleteCellUser(index, table) {
    document.getElementById("body-users-" + table).deleteRow(index);
}


function buttonMenu(classIndex) {
    var x = document.getElementsByClassName("ja-tables");
    for(var i = 0; i < x.length; i++) {
        x[i].style.display = 'none';
        document.getElementById("ja-tables-" + i).classList.remove('selected');
    }
    x[classIndex].style.display = 'block';
    
    var btnMenu = document.getElementById("ja-tables-" + classIndex);
    btnMenu.classList.add('selected');
}