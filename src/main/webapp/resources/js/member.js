// DOM Loading
$(document).ready(function(){	
	
});

// DOM & css, image, js Loading
$(window).load(function(){
	// id/pw find
	var outputBox = $('.output-box');
		hasValueId = outputBox.find('.join-id .value').text();
		hasValuePw = outputBox.find('.join-password .value').text();
		tabMenu = $('.tab-menu li');
		
	outputBox.hide();
	if(hasValueId != ""){
		$('.join-id').closest(outputBox).show();
	}else if(hasValuePw != ""){
		$('.join-password').closest(outputBox).show();
		tabMenu.eq(1).click();
	}
});

// login - form check
function loginFormCheck(){
    var form = document.loginForm;
    if(form.member_id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.member_id.focus();
        return false;
    }else if(form.member_pw.value == ""){
        alert("비밀번호 값을 입력하세요.");
        form.member_pw.focus();
        return false;
    }else{
        return true;
    }
}

// join - form check
function joinFormCheck(){
    var form = document.joinForm;
    if(form.member_id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.member_id.focus();
        return false;
    }
    
    if(form.member_pw.value == ""){
        alert("비밀번호 값을 입력하세요.");
        form.member_pw.focus();
        return false;
    }else if(form.member_pw2.value == "" ){
        alert("비밀번호 확인 값을 입력하세요.");
        form.member_pw2.focus();
        return false;
    }else if(form.member_name.value == ""){
        alert("이름 값을 입력하세요.");
        form.member_name.focus();
        return false;
    }else if(form.member_tel.value == ""){
        alert("휴대폰 번호 값을 입력하세요.");
        form.member_tel.focus();
        return false;
    }else if(form.member_email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.member_email.focus();
        return false;
    }else{
        if(form.member_pw2.value != form.member_pw.value){
            alert("비밀번호 값이 다릅니다. 다시 확인해 주세요.");
            form.member_pw2.focus();
            return false;
        }else{
			return true;
		}
    }
    
}

// accountfind id - form check
function findIdFormCheck(){
    var form = document.findIdForm;
    if(form.member_name.value == ""){
        alert("이름 값을 입력하세요.");
        form.member_name.focus();
        return false;
    }else if(form.member_email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.member_email.focus();
        return false;
    }else{
        return true;
    }
}

// accountfind id - form check
function findPasswordFormCheck(){
    var form = document.findPasswordForm;
    if(form.member_id.value == ""){
        alert("아이디 값을 입력하세요.");
        form.member_id.focus();
        return false;
    }else if(form.member_email.value == ""){
        alert("이메일 주소 값을 입력하세요.");
        form.member_email.focus();
        return false;
    }else{
        return true;
    }
}