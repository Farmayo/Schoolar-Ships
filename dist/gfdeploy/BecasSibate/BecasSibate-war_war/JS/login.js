function openRequest() {
    var dialog = document.getElementById("requestInfo");
    dialog.classList.remove("hide");
}

function closeRequest() {
    var dialog = document.getElementById("requestInfo");
    dialog.classList.add("hide");
}

function login() {
    var userIn = document.getElementById("username");
    var passwordIn = document.getElementById("password");
        
    $.ajax({
        url: 'ControlLogin',
        data: {
            user: userIn.value,
            password: passwordIn.value
        },
        type: 'POST',
        cache: false,
        success: function (data) {
            
            if(data.indexOf(".jsp") === -1 ) {
                var alertLogin = document.getElementById("alertLogin");
                console.log(data);
                alertLogin.innerHTML = data;
            } else {
                window.location.href = data;
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            var alertLogin = document.getElementById("alertLogin");
            alertLogin.innerHTML = "Intentalo de nuevo";
        }
    });
}

function request() {
    var nameIn = document.getElementById("nameR");
    var lastnameIn = document.getElementById("lastnameR");
    var emailIn = document.getElementById("emailR");
    var commentIn = document.getElementById("commentR");
    
    $.ajax({
        url: 'ControlRequestInfoLogin',
        data: {
            name: nameIn.value,
            lastname: lastnameIn.value,
            email: emailIn.value,
            comment: commentIn.value
        },
        type: 'POST',
        cache: false,
        success: function (data) {
            var resp = document.getElementById("responseRequest");
            resp.classList.replace("ja-alert", "ja-success");
            resp.innerHTML = data;
            
            nameIn.value = "";
            lastnameIn.value = "";
            emailIn.value = "";
            commentIn.value = "";
        },
        error: function (jqXHR, textStatus, errorThrown) {
            var resp = document.getElementById("responseRequest");
            resp.classList.replace("ja-success", "ja-alert");
            resp.innerHTML = textStatus;
        }
    });
}

