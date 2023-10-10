/*찜 추가,삭제*/
function changeImg(value) {
	/*const img = document.getElementById('heart');*/
	const button = document.querySelector('.heart-img button');
	const img = button.querySelector('img')

	if (value == 0) {
		alert("로그인 후 이용가능한 서비스입니다.");
		location.href = "ShoesServlet?command=login_form";
	}

	if (value == 1) {
		if (img.classList.contains('heart-off')) {
			alert("찜 목록에 저장되었습니다");
			document.frm.action = "ShoesServlet?command=zzim_insert";
			img.src = "images/heart-on.png";

		} else if (img.classList.contains('heart-on')) {
			alert("찜 목록에서 삭제되었습니다");
			document.frm.action = "ShoesServlet?command=zzim_delete";
			img.src = "images/heart-off.png";
		}

		document.frm.submit();
	}

}

/*수량변경*/
var quantity;

function init() {
	quantity = document.frm.quantity.value;
	change();
}

function plus() {
	hm = document.frm.quantity;
	hm.value++;

}

function minus() {
	hm = document.frm.quantity;
	if (hm.value > 1) {
		hm.value--;
	}
}

function change() {
	hm = document.frm.quantity;

	if (hm.value < 0) {
		hm.value = 0;
	}
}

/*장바구니 목록 추가*/
function go_cart(value) {
	if (document.frm.psize.value == "") {
		alert("사이즈를 선택해주세요.");
		frm.psize.focus();
		return false;
	}

	if (value == 0) {
		alert("로그인 후 이용가능한 서비스입니다.");
		location.href = "ShoesServlet?command=cart_list";
	} else if (value == 1) {
		document.frm.action = "ShoesServlet?command=cart_insert";
		document.frm.submit();
	}
}

/*장바구니 목록 삭제*/
function go_cart_delete() {
	var count = 0;
	var cseq = document.getElementsByName("cseq");

	for (var i = 0; i < cseq.length; i++) {
		if (cseq[i].checked == true) {
			count++;
		}
	}

	if (count == 0) {
		alert("삭제할 항목을 선택해 주세요.");
	} else {
		document.frm.action = "ShoesServlet?command=cart_delete";
		document.frm.submit();
	}
}

/*장바구니에서 구매*/
function go_order_insert() {
	document.frm.action = "ShoesServlet?command=order_insert&type=cart";
	document.frm.submit();
}

/*바로 구매*/
function go_order(value) {
	if (document.frm.psize.value == "") {
		alert("사이즈를 선택해주세요.");
		frm.psize.focus();
		return false;
	}

	if (value == 0) {
		alert("로그인 후 이용가능한 서비스입니다.");
		location.href = "ShoesServlet?command=mypage";
	} else if (value == 1) {
		alert("주문이 완료되었습니다.")
		document.frm.action = "ShoesServlet?command=order_insert&type=now";
		document.frm.submit();
	}
}