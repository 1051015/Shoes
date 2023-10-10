/*검색*/
function go_search(value) {
	if (value == 0) {
		document.afrm.action = "ShoesServlet?command=admin_member_list";
		document.afrm.submit();
	} else if (value == 1) {
		document.afrm.action = "ShoesServlet?command=admin_product_list";
		document.afrm.submit();
	} else if (value == 2) {
		document.afrm.action = "ShoesServlet?command=admin_order_list";
		document.afrm.submit();
	}
}

/*상품 상세보기*/
function go_detail(tpage, shoescode) {
	// 상품 상세 보기 페이지에서 다시 상품 리스트로 돌아왔을 경우 현재 페이지로
	// 돌아올 수 있도록 하기 위해서 현재 페이지 번호를 쿼리 스트링으로 넘겨준다.
	document.afrm.action = "ShoesServlet?command=admin_product_detail&tpage=" +
		tpage + "&shoescode=" + shoescode;
	document.afrm.submit();
}

/*상품 등록 화면*/
function go_insert() {
	document.afrm.action = "ShoesServlet?command=admin_product_insert_form";
	document.afrm.submit();
}

/*상품 등록 취소*/
function go_mov() {
	document.afrm.action = "ShoesServlet?command=admin_product_list";
	document.afrm.submit();
}

/*상품 등록하기*/
function go_save() {
	if (document.afrm.shoescode.value == '') {
		alert('상품코드을 입력하세요.');
		document.afrm.shoescode.focus();
	} else if (document.afrm.pname.value == '') {
		alert('상품명을 입력하세요.');
		document.afrm.pname.focus();
	} else if (document.afrm.price.value == '') {
		alert('가격을 입력하세요.');
		document.afrm.price.focus();
	} else if (document.afrm.brand.value == '') {
		alert('브랜드명을 입력하세요.');
		document.afrm.brand.focus();
	} else if (document.afrm.color.value == '') {
		alert('색상을 입력하세요.');
		document.afrm.color.focus();
	} else if (document.afrm.mainimg.value == '') {
		alert('메인 이미지를 선택하세요.');
		document.afrm.mainimg.focus();
	} else if (document.afrm.infoimg.value == '') {
		alert('서브 이미지를 선택하세요.');
		document.afrm.infoimg.focus();
	} else if (document.afrm.detail1img.value == '') {
		alert('상세 이미지1을 선택하세요.');
		document.afrm.detail1img.focus();
	} else if (document.afrm.detail2img.value == '') {
		alert('상세 이미지2를 선택하세요.');
		document.afrm.detail2img.focus();
	} else if (document.afrm.detail3img.value == '') {
		alert('상세 이미지3을 선택하세요.');
		document.afrm.detail3img.focus();
	} else {
		if (confirm('등록하시겠습니까?')) {
			document.afrm.encoding = "multipart/form-data";
			document.afrm.action = "ShoesServlet?command=admin_product_insert";
			document.afrm.submit();
		}
	}
}

/*상품 리스트로 이동*/
function go_list(tpage) {
	//상품 리스트로 이동하되 현재 페이지를 쿼리 스트링으로 넘긴다.
	document.afrm.action = "ShoesServlet?command=admin_product_list&tpage=" + tpage;
	document.afrm.submit();
}

/*상품 수정 화면*/
function go_modify(tpage, shoescode) {
	//현재 페이지를 쿼리 스트링으로 넘긴다.
	document.afrm.action = "ShoesServlet?command=admin_product_update_form&tpage=" +
		tpage + "&shoescode=" + shoescode;
	document.afrm.submit();
}

/*상품 수정하기*/
function go_modify_save(tpage, shoescode) {
	if (document.afrm.pname.value == '') {
		alert('상품명을 입력하세요.');
		document.afrm.pname.focus();
	} else if (document.afrm.price.value == '') {
		alert('가격을 입력하세요.');
		document.afrm.price.focus();
	} else if (document.afrm.pcount.value == '') {
		alert('수량을 입력하세요.');
		document.afrm.pcount.focus();
	} else if (document.afrm.brand.value == '') {
		alert('브랜드명을 입력하세요.');
		document.afrm.brand.focus();
	} else if (document.afrm.color.value == '') {
		alert('색상을 입력하세요.');
		document.afrm.color.focus();
	} else if (document.afrm.mainimg.value == '') {
		alert('메인 이미지를 선택하세요.');
		document.afrm.mainimg.focus();
	} else if (document.afrm.infoimg.value == '') {
		alert('서브 이미지를 선택하세요.');
		document.afrm.infoimg.focus();
	} else if (document.afrm.detail1img.value == '') {
		alert('상세 이미지1을 선택하세요.');
		document.afrm.detail1img.focus();
	} else if (document.afrm.detail2img.value == '') {
		alert('상세 이미지2를 선택하세요.');
		document.afrm.detail2img.focus();
	} else if (document.afrm.detail3img.value == '') {
		alert('상세 이미지3을 선택하세요.');
		document.afrm.detail3img.focus();
	} else {
		if (confirm('수정하시겠습니까?')) {
			document.afrm.encoding = "multipart/form-data";
			document.afrm.action = "ShoesServlet?command=admin_product_update";
			document.afrm.submit();
		}
	}
}

/*수정 취소*/
function go_cancel(tpage, shoescode) {
	document.afrm.action = 'ShoesServlet?command=admin_product_detail&tpage=' + tpage + "&shoescode=" + shoescode;
	document.afrm.submit();
}

/*주문 처리*/
function go_order_save() {
	var count = 0;
	var result = document.getElementsByName("result");

	for (var i = 0; i < result.length; i++) {
		if (result[i].checked == true) {
			count++;
		}
	}

	if (count == 0) {
		alert("처리할 항목을 선택해 주세요.");
	} else {
		document.afrm.action = 'ShoesServlet?command=admin_order_save';
		document.afrm.submit();
	}
}