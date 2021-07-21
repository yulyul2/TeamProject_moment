// DOM Loading
$(document).ready(function(){	
    var uploadInput = $('#post_photo2');
    var btnAdd = $('#photoAdd');
    var btnDelete = $('#photoDelete');
    var preview = $('#photoPreview');

    // photo upload
    uploadInput.on('change', photoUpload);

    // photo delete
    btnDelete.on('click', function(){
        preview.empty();
        preview.hide();
        $(this).hide();
        btnAdd.show();
    });
});

// DOM & css, image, js Loading
$(window).load(function(){
   
});

// photo upload
function photoUpload(input){
    var file = input.target.files[0];
    var btnAdd = document.querySelector('#photoAdd');
    var btnDelete = document.querySelector('#photoDelete');
    var preview = document.querySelector('#photoPreview');
    
    if(!file.type.match("image/.*")){
        alert("이미지만 업로드 가능합니다.");
        return;
    }

    btnAdd.style.display = 'none';
    btnDelete.style.display = 'block';
    preview.style.display = 'block';

    var reader = new FileReader();

    reader.addEventListener("load", function () {
        var uploadImg = document.createElement("img");
        uploadImg.setAttribute("class", 'image-load');
        uploadImg.src = URL.createObjectURL(file);   
        uploadImg.src = this.result;
        preview.appendChild(uploadImg);
        // image resize
        imageReSize();
    }, false);
    reader.readAsDataURL(file);
}

// post write - form check
function postWriteFormCheck(){
    var form = document.postWriteForm;
	var uploadInput = document.querySelector("#post_photo2");
	
    if(form.post_content.value == ""){
        alert("글 내용을 작성하세요.");
        form.post_content.focus();
        return false;
    }else if( uploadInput.files.length == 0 ){
	    alert("사진을 등록하세요.");
        return false;
	}else{
        return true;
    }
}