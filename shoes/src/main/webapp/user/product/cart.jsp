<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니 페이지</title>
<link rel="stylesheet" href="user/product/css/cart_order_style.css">
<script type="text/javascript" src="user/script/cart_order.js"></script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<section class="cart">
		<div class="cart__information">
			<ul>
				<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
				<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
				<li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기
					바랍니다.</li>
			</ul>
		</div>

		<form name="orderform" id="orderform" method="post" class="orderform"
			action="ShoesServlet?command=cart" onsubmit="return false;">

			<input type="hidden" name="cmd" value="order">
			<div class="basketdiv" id="basket">
				<div class="row head">
					<div class="subdiv">
						<div class="check">선택</div>
						<div class="img">이미지</div>
						<div class="pname">상품명</div>
					</div>
					<div class="subdiv">
						<div class="basketprice">가격</div>
						<div class="num">수량</div>
						<div class="sum">합계</div>
					</div>
					<div class="subdiv">

						<div class="basketcmd">삭제</div>
					</div>
					<div class="split"></div>
				</div>


				<div class="row data">
					<div class="subdiv">
						<div class="check">
							<input type="checkbox" name="buy" value="260" checked=""
								onclick="javascript:basket.checkItem();">&nbsp;
						</div>
						<div class="img">
							<img src="images/product/nike.png" width="60">
						</div>
						<div class="pname">
							<span>nike 운동화</span>
						</div>
					</div>
					<div class="subdiv">
						<div class="basketprice">
							<input type="hidden" name="p_price" id="p_price1" class="p_price"
								value="40000">40,000원
						</div>
						<div class="num">
							<div class="updown">
								<input type="text" name="p_num1" id="p_num1" size="2"
									maxlength="4" class="p_num" value="2"
									onkeyup="javascript:basket.changePNum(1);"> <span
									onclick="javascript:basket.changePNum(1);"><button
										class="fas up" type="button" onclick="fnCalCount('p',this);">+</button></span>
								<span onclick="javascript:basket.changePNum(1);"><button
										class="fas down" type="button" onclick="fnCalCount('p',this);">-</button></span>
							</div>
						</div>
						<div class="sum">40,000원</div>
					</div>
					<div class="subdiv">
						<div class="basketcmd">
							<a href="javascript:void(0)" class="abutton"
								onclick="javascript:basket.delItem();">삭제</a>
						</div>
					</div>
				</div>
				<div class="row data">
					<div class="subdiv">
						<div class="check">
							<input type="checkbox" name="buy" value="261" checked=""
								onclick="javascript:basket.checkItem();">&nbsp;
						</div>
						<div class="img">
							<img src="images/product/addidas2.png" width="60">
						</div>
						<div class="pname">
							<span>addidas 운동화</span>
						</div>
					</div>
					<div class="subdiv">
						<div class="basketprice">
							<input type="hidden" name="p_price" id="p_price2" class="p_price"
								value="20000">20,000원
						</div>
						<div class="num">
							<div class="updown">
								<input type="text" name="p_num2" id="p_num2" size="2"
									maxlength="4" class="p_num" value="1"
									onkeyup="javascript:basket.changePNum(2);"> <span
									onclick="javascript:basket.changePNum(2);"><button
										class="fas up" type="button" onclick="fnCalCount('p',this);">+</button></span>
								<span onclick="javascript:basket.changePNum(2);"><button
										class="fas down" type="button" onclick="fnCalCount('p',this);">-</button></span>
							</div>
						</div>
						<div class="sum">20,000원</div>
					</div>
					<div class="subdiv">
						<div class="basketcmd">
							<a href="javascript:void(0)" class="abutton"
								onclick="javascript:basket.delItem();">삭제</a>
						</div>
					</div>
				</div>
				<div class="row data">
					<div class="subdiv">
						<div class="check">
							<input type="checkbox" name="buy" value="262" checked=""
								onclick="javascript:basket.checkItem();">&nbsp;
						</div>
						<div class="img">
							<img src="images/product/asics.png" width="60">
						</div>
						<div class="pname">
							<span>asics 운동화</span>
						</div>
					</div>
					<div class="subdiv">
						<div class="basketprice">
							<input type="hidden" name="p_price" id="p_price3" class="p_price"
								value="30000">30,000원
						</div>
						<div class="num">
							<div class="updown">
								<input type="text" name="p_num3" id="p_num3" size="2"
									maxlength="4" class="p_num" value="1"
									onkeyup="javascript:basket.changePNum(3);"> <span
									onclick="javascript:basket.changePNum(3);"><button
										class="fas up" type="button" onclick="fnCalCount('p',this);">+</button></span>
								<span onclick="javascript:basket.changePNum(3);"><button
										class="fas down" type="button" onclick="fnCalCount('p',this);">-</button></span>

							</div>
						</div>
						<div class="sum">30,000원</div>
					</div>
					<div class="subdiv">
						<div class="basketcmd">
							<a href="javascript:void(0)" class="abutton"
								onclick="javascript:basket.delItem();">삭제</a>
						</div>
					</div>
				</div>

			</div>

			<div class="right-align basketrowcmd">
				<a href="javascript:void(0)" class="abutton"
					onclick="javascript:basket.delCheckedItem();">선택상품삭제</a> <a
					href="javascript:void(0)" class="abutton"
					onclick="javascript:basket.delAllItem();">장바구니비우기</a>
			</div>

			<div class="bigtext right-align sumcount" id="sum_p_num">상품갯수:
				4개</div>
			<div class="bigtext right-align box red summoney" id="sum_p_price">결제금액:
				130,000원</div>

			<div id="goorder" class="">
				<div class=""></div>
				<div class="buttongroup center-align cmd">
					<a href="ShoesServlet?command=order_form">주문하기</a><a href="ShoesServlet?command=index">WINGS 바로가기</a>
				</div>
		</form>
	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>