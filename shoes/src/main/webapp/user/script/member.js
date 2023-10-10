/*아이디 중복확인 화면*/
function idOK() {
	opener.frm.id.value = document.frm.id.value;
	opener.frm.reid.value = document.frm.id.value;
	self.close();
}

/*아이디 중복확인*/
function idCheck() {
	if (document.frm.id.value == "") {
		alert('아이디 중복확인을 하십시오.');
		document.frm.id.focus();
		return;
	}
	var url = "ShoesServlet?command=id_check_form&id=" + document.frm.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}

/*회원가입 시 우편번호 및 주소*/
function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			var addr = '';
			if (data.userSelectedType === 'R') {
				addr = data.roadAddress;
			} else {
				addr = data.jibunAddress;
			}

			$("#zip_code").val(data.zonecode);
			$("#addr").val(addr);
			$("#addr_dtl").val("");
			$("#addr_dtl").focus();
		}
	}).open();
}


/*회원가입 시 유효성 검사*/
function joinCheck() {
	if (document.frm.agree.checked == false) {
		alert('약관에 동의해 주세요.');
		document.frm.agree.focus();
	} else if (document.frm.id.value == "") {
		alert("아이디를 입력해 주세요.");
		document.frm.id.focus();
	} else if (document.frm.id.value != document.frm.reid.value) {
		alert("중복확인을 클릭해 주세요.");
		document.frm.id.focus();
	} else if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요.");
		document.frm.pwd.focus();
	} else if ((document.frm.pwd.value != document.frm.pwdCheck.value)) {
		alert("비밀번호 확인이 일치하지 않습니다.");
		document.frm.pwd.focus();
	} else if (document.frm.name.value == "") {
		alert("회원성명을 입력해 주세요.");
		document.frm.name.focus();
	} else if (document.frm.email.value == "") {
		alert("이메일을 입력해 주세요.");
		document.frm.email.focus();
	} else if (document.frm.zip_num.value == "") {
		alert("우편번호를 입력해 주세요.");
		document.frm.zip_num.focus();
	} else if (document.frm.addr1.value == "") {
		alert("주소를 입력해 주세요.");
		document.frm.addr1.focus();
	} else if (document.frm.addr2.value == "") {
		alert("상세주소를 입력해 주세요.");
		document.frm.addr2.focus();
	} else if (document.frm.phone.value == "") {
		alert("휴대폰번호를 입력해 주세요.");
		document.frm.phone.focus();
	} else {
		alert("회원가입이 완료되었습니다.");
		document.frm.action = "ShoesServlet?command=join";
		document.frm.submit();
	}
}

