/**
 * 
 */

function loginCheck() {
	if (document.frm.uid.value == "") {
		alert("아이디를 입력해주세요.")
		return false;
	}

	if (document.frm.pwd.value == "") {
		alert("암호는 반드시 입력해야 합니다.")
		return false;
	}
}


function joinCheck() {
	if (document.frm.memName.value.length == 0) {
		alert("이름을 써 주세요.");
		frm.memName.focus();
		return false;
	}

	if (document.frm.uid.value.length == 0) {
		alert("아이디를 써 주세요.");
		frm.uid.focus();
		return false;
	}

	if (document.frm.uid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.uid.focus();
		return false;
	}

	if (document.frm.pwd.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}

	if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}

	if (document.frm.reid.value.length == 0) {
		alert("중복 체크를 하지 않았습니다.");
		frm.uid.focus();
		return false;
	}
	alert('회원가입이 완료되었습니다.');
	form.reset();
	return true;
}


function idCheck() {
	if (document.frm.uid.value == "") {
		alert("아이디를 입력해 주세요.");
		document.frm.uid.focus();
		return;
	}

	var url = "idCheck.do?uid=" + document.frm.uid.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200")
}


function idok() {
	opener.frm.uid.value = document.frm.uid.value;
	opener.frm.reid.value = document.frm.uid.value;
	self.close();
}
