function uploadFile(id) {
    var input = document.createElement('input');
    input.type = 'file';

    input.onchange = function (e) { 
       // getting a hold of the file reference
       var file = e.target.files[0]; 
       console.log(file.name);
       document.getElementById("ja-file--loaded").innerText = file.name;
       document.getElementById("ja-image--doc1").src = "Pictures/baseline-cloud_done-24px.png";
    };

    input.click();
}

