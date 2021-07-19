// DOM Loading
$(document).ready(function(){	

});

// DOM & css, image, js Loading
$(window).load(function(){
   
});

// myinfo - form check
function myInfoFormFormCheck(){
    var form = document.myInfoForm;
    if(form.member_name.value == ""){
        alert("이름 값을 입력하세요.");
        form.member_name.focus();
        return false;
    }else if(form.member_pw.value == ""){
        alert("비밀번호 값을 입력하세요.");
        form.member_pw.focus();
        return false;
    }else if(form.member_pw2.value == "" ){
        alert("비밀번호 확인 값을 입력하세요.");
        form.member_pw2.focus();
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
