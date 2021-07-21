// DOM Loading
$(document).ready(function(){	

});

// DOM & css, image, js Loading
$(window).load(function(){
   
});

// post write - form check
function postWriteFormCheck(){
    var form = document.postWriteForm;
    if(form.post_content.value == ""){
        alert("글 내용을 작성하세요.");
        form.post_content.focus();
        return false;
    }else{
        return true;
    }
}