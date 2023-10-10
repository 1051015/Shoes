function pwdCheck() {
	if (document.myfrm.pwd.value == "") {
		alert("새 비밀번호를 입력해주세요");
		document.myfrm.pwd.focus();
		return false;
	}

	if (document.myfrm.pwd.value != document.myfrm.pwd_check.value) {
		alert("비밀번호가 일지하지 않습니다.");
		document.myfrm.pwd.focus();
		return false;
	}
	
	alert("비밀번호가 수정되었습니다");
	return true;
}

function updateCheck() {
	var pwd = document.getElementById('pwdValue').value;
	if (document.myfrm.pwd.value != pwd) {
		alert("비밀번호가 일치하지 않습니다");
		document.myfrm.pwd.focus();
		return false;
	}
	alert("정보가 수정되었습니다");
	return true;
}

function deleteMember() {
	var pwd = document.getElementById('pwdValue').value;
	if (document.myfrm.pwd.value != pwd) {
		alert("비밀번호가 일치하지 않습니다");
		document.myfrm.pwd.focus();
		return false;
	}
	alert("회원 탈퇴 완료");
	return true;
}

