// DOM Loading
$(document).ready(function(){	
	
});

// DOM & css, image, js Loading
$(window).load(function(){

});

// login - form check
function loginFormCheck(){
    var form = document.loginForm;
    if(form.id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.id.focus();
        return false;
    }else if(form.password.value == ""){
        alert("비밀번호 값을 입력하세요.");
        form.password.focus();
        return false;
    }else{
        return true;
    }
}

// join - form check
function joinFormCheck(){
    var form = document.joinForm;
    if(form.id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.id.focus();
        return false;
    }
    
    if(form.password.value == ""){
        alert("비밀번호 값을 입력하세요.");
        form.password.focus();
        return false;
    }else if(form.passwordCheck.value == "" ){
        alert("비밀번호 확인 값을 입력하세요.");
        form.passwordCheck.focus();
        return false;
    }else if(form.name.value == ""){
        alert("이름 값을 입력하세요.");
        form.name.focus();
        return false;
    }else if(form.tel.value == ""){
        alert("휴대폰 번호 값을 입력하세요.");
        form.tel.focus();
        return false;
    }else if(form.email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.email.focus();
        return false;
    }else{
        if(form.passwordCheck.value != form.password.value){
            alert("비밀번호 값이 다릅니다. 다시 확인해 주세요.");
            form.passwordCheck.focus();
            return false;
        }        
        return true;
    }
    
}

// accountfind id - form check
function findIdFormCheck(){
    var form = document.findIdForm;
    if(form.name.value == ""){
        alert("이름 값을 입력하세요.");
        form.name.focus();
        return false;
    }else if(form.email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.email.focus();
        return false;
    }else{
        return true;
    }
}

// accountfind id - form check
function findPasswordFormCheck(){
    var form = document.findPasswordForm;
    if(form.id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.id.focus();
        return false;
    }else if(form.email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.email.focus();
        return false;
    }else{
        return true;
    }
}