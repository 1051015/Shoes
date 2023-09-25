<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보 페이지</title>
<link href="user/product/css/productDetail_style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="contents-width">
		<form method="post" action="ShoesServlet?command=product_detail">
			<div class="product-detail-box">
				<!-- 사진영역 -->
				<div class="detail-box-left">
					<div class="detail-thumbs-wrap">
						<img id="big" src="images/product/nike01_men_info.PNG"
							style="width: 580px; height: 580px;">
					</div>
					<!-- <div class="detail-images">
						<div class="swiper-container">
							<ul class="swiper-wrapper">
								<li class="swiper-slide"><img class="small"
									src="images/아디다스/아디다스01_01.PNG"
									style="width: 100px; height: 100px;"></li>
								<li class="swiper-slide"><img class="small"
									src="images/아디다스/아디다스01_02.PNG"
									style="width: 100px; height: 100px;"></li>
								<li class="swiper-slide"><img class="small"
									src="images/아디다스/아디다스01_03.PNG"
									style="width: 100px; height: 100px;"></li>
								<li class="swiper-slide"><img class="small"
									src="images/아디다스/아디다스01_04.PNG"
									style="width: 100px; height: 100px;"></li>
								<li class="swiper-slide"><img class="small"
									src="images/아디다스/아디다스01_05.PNG"
									style="width: 100px; height: 100px;"></li>
							</ul>
						</div>
					</div> -->

					<!-- <script type="text/javascript">
						var bigPic = document.querySelector("#big"); // 큰 사진
						var smallPics = document.querySelectorAll(".small"); // 작은 사진(여러개)

						for (var i = 0; i < smallPics.length; i++) {
							smallPics[i].addEventListener("click", changepic); // 이벤트 처리
							/* 
							onclick으로 하면 하나의 요소에 하나의 이벤트만 사용가능
							smallPics[i].onclick = changepic;
							 */
						}
						function changepic() { // 사진 바꾸는 함수
							var smallPicAttribute = this.getAttribute("src");
							bigPic.setAttribute("src", smallPicAttribute);
						}
					</script> -->

					<!-- 추가설명영역 -->
					<div class="detail-add-box">
						<div class="rating-box">
							<img src="images/rating.png">
						</div>
						<div class="appraisal-box">
							<ul>
								<li><span class="label">사이즈</span>정 사이즈</li>
								<li><span class="label">색상</span>화면과 같음</li>
								<li><span class="label">발볼</span>적당함</li>
								<li><span class="label">발등</span>적당함</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 상품정보영역 -->
				<div class="detail-box-right">
					<div class="detail-box-header">
						<div class="detail-brand-box">
							<span class="icon-brand wings">WINGS</span> <span
								class="btn-brand">브랜드명</span>
						</div>
						<div class="prod-name">상품명</div>
						<ul class="prod-code-list">
							<li>상품코드 : 1010094724</li>
						</ul>
						<div class="detail-price">
							<span class="prod-price"><span class="price-cost">79,000</span>
								<span class="price-unit">원</span> </span>
						</div>
					</div>

					<!-- 주문정보영역 -->
					<div class="border-line-box tbl-form-wrap form-view">
						<table class="tbl-form">
							<colgroup>
								<col style="width: 200px;">
								<col>
							</colgroup>
							<tbody>
								<tr class="first">
									<th>통합멤버십 혜택</th>
									<td>
										<!-- <span class="text point-type" style="display: none;"></span> -->
										<a href="ShoesServlet?command=join_form" class="link_arrow">
											★ 회원 가입 시 <span class="spot">5,000P</span> 즉시 적립 ★
									</a>
									</td>
								</tr>

								<tr>
									<th>색상</th>
									<td><span class="text">색상</span></td>
								</tr>

								<tr>
									<th>배송</th>
									<td><span class="text">일반배송(무료배송)</span></td>
								</tr>

								<tr>
									<th><span class="text-size-guide" id="text-size-guide">사이즈</span></th>
									<td class="optionButtonType">
										<ul class="size-list">
											<li><button type="button" class="btn-prod-size">220</button></li>
											<li><button type="button" class="btn-prod-size">225</button></li>
											<li><button type="button" class="btn-prod-size">230</button></li>
											<li><button type="button" class="btn-prod-size">235</button></li>
											<li><button type="button" class="btn-prod-size">240</button></li>
											<li><button type="button" class="btn-prod-size">245</button></li>
											<li><button type="button" class="btn-prod-size">250</button></li>
											<li><button type="button" class="btn-prod-size">255</button></li>
											<li><button type="button" class="btn-prod-size">260</button></li>
											<li><button type="button" class="btn-prod-size">265</button></li>
											<li><button type="button" class="btn-prod-size">270</button></li>
											<li><button type="button" class="btn-prod-size">275</button></li>
											<li><button type="button" class="btn-prod-size">280</button></li>
											<li><button type="button" class="btn-prod-size">285</button></li>
											<li><button type="button" class="btn-prod-size">290</button></li>
											<li><button type="button" class="btn-prod-size">295</button></li>
											<li><button type="button" class="btn-prod-size">300</button></li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- 결제금액영역 -->
					<div class="total-sum-time">
						<div class="flex-box">
							<span class="text">총 결제금액</span>
							<div class="right-box">
								<!-- <span style="display: none;"> </span> -->
								<span class="sum-value"><span>0</span>&nbsp;<span
									class="unit">원</span></span>
							</div>
						</div>
					</div>

					<!-- 사이즈 선택 시 가격 계산 영역 -->
					<div class="prod-option-wrap">
						<div class="prod-option-scroll">
							<ul>
								<li><div class="option-amount-sum">
										<span class="color-code-text"><span>290</span></span> <span
											class="ui-spinner ui-corner-all ui-widget ui-widget-content">
											<input type="number" class="input-spinner ui-spinner-input"
											value="1" title="구매개수">
										</span>
									</div></li>
							</ul>
						</div>
					</div>

					<!-- 장바구니/구매버튼영역 -->
					<div class="btn-wrap col2">
						<button type="button" class="btn btn-lg btn1"
							onclick="location.href='ShoesServlet?command=cart_form'">장바구니</button>
						<button type="button" class="btn btn-lg btn2">바로구매</button>
					</div>
				</div>
			</div>

			<!-- 상품상세정보영역 -->
			<div class="product-detail-info">
				<div id="productInfo" class="tab-wrap anchor-tab justify">
					<div class="tab">
						<h2 style="margin-bottom: 10px">상품정보</h2>
					</div>
					<div class="tab-content">
						<!-- 상품이미지영역 -->
						<div id="product-detail-description-wrapper">
							<div class="editor-wrap">
								<div style="text-align: center;">
									<img src="images/product/ex.png"
										style="width: 900px; height: 600px; margin-bottom: 15px;">
									<img src="images/product/nike01_men_detail2.PNG"
										style="width: 900px; height: 600px; margin-bottom: 15px;">
									<img src="images/product/nike01_men_detail3.PNG"
										style="width: 900px; height: 600px; margin-bottom: 40px;">
									<!-- <img src="https://via.placeholder.com/900x600"
										style="width: 900px; height: 600px; margin-bottom: 40px;"> -->
								</div>
							</div>
						</div>

						<!-- 상품정보제공 고시영역 -->
						<div class="border-line-box-header">
							<div class="text-head3">
								<h2>상품정보제공 고시</h2>
							</div>
						</div>

						<div class="border-line-box tbl-form-wrap form-view product-view"
							id="product-detail-notice-wrapper">
							<table class="tbl-form">
								<colgroup>
									<col style="width: 153px;">
									<col>
									<col style="width: 153px;">
									<col>
								</colgroup>
								<tbody id="product-detail-notice">
									<tr>
										<th>소재</th>
										<td><span>천연가죽(소)</span></td>
										<th>색상</th>
										<td><span>색상</span></td>
									</tr>
									<tr>
										<th>사이즈</th>
										<td><span>220 / 225 / 230 / 235 / 240 / 245 / 250
												/ 255 / 260 / 265 / 270 / 275 / 280 / 290 / 300</span></td>
										<th>굽높이</th>
										<td style="vertical-align: middle;"><span>뒷굽:
												2.8cm</span></td>
									</tr>
									<tr>
										<th>제조사</th>
										<td><span>ADIDAS</span></td>
										<th>제조국</th>
										<td><span>인도네시아</span></td>
									</tr>
									<tr>
										<th>A/S</th>
										<td><span>080-777-1004</span></td>
										<th>제조년월</th>
										<td><span>상품별 입고시기에 따라 상이하여, 배송 받으신 제품의 라벨 참고
												바랍니다.</span></td>
									</tr>
									<tr>
										<th>품질보증기준</th>
										<td style="vertical-align: middle;"><span>관련 법 및
												소비자 분쟁 해결 기준에 따름 (품질보증기간 : 구입일로부터 6개월 이내)</span></td>
										<th>소재별 관리방법</th>
										<td><span>상품 착용 및 세탁 시에는 제품에 부착된 라벨 및 취급 주의사항을 꼭
												먼저 확인해 주시길 바랍니다. 가벼운 오염물이 묻었을 때에는 부드러운 솔로 털어내주시기 바랍니다. 물에
												젖었을 때에는 바람이 잘 통하는 응달에 건조해 주시기 바랍니다. 올바르지 않은 클리너 사용은 황변, 탈색의
												원인이 되므로 사용에 주의하시기 바랍니다. 밝은 색상의 캔버스 제품 세탁은 전문 세탁 업체를 이용하시는 것을
												권장해드립니다.</span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="tbl-text-right">
							<div>
								<img src="images/text_notice.png">
							</div>
						</div>
					</div>

					<!-- 상품리뷰영역 -->
					<div class="product-review">
						<div class="text-head4">
							<h2 style="margin-bottom: 10px">상품리뷰</h2>
						</div>
					</div>
					<div class="review">
						<ul class="note">
							<li>
								<div>
									<img src="images/5star.png" class="rank"> <span
										class="writer">qw**&nbsp;&nbsp;2023-09-20</span>
								</div>
								<h3>상품명/색상/사이즈</h3>
								<p>요즘 트렌드에 맞는 신발인 것 같아요. 넘 이뻐요ㅎㅎ</p>
							</li>
							<li>
								<div>
									<img src="images/5star.png" class="rank"> <span
										class="writer">ho**&nbsp;&nbsp;2023-09-19</span>
								</div>
								<h3>상품명/색상/사이즈</h3>
								<p>색상이 너무 이뻐서 구매했는데 실물과 사진이 거의 똑같아서 매무 만족합니다!!</p>
							</li>
							<li>
								<div>
									<img src="images/3star.png" class="rank"> <span
										class="writer">gu****&nbsp;&nbsp;2023-09-18</span>
								</div>
								<h3>상품명/색상/사이즈</h3>
								<p>상품은 나쁘지 않은데요... 배송이 생각보다 너무 느린 것 같아요ㅠㅠ</p>
							</li>
						</ul>
						<div class="paging">
							<span class="prev"> <a href="#">< 이전</a>
							</span> <span class="num"> <a href="#" class="on">1</a>
							</span> <span class="next"> <a href="#">다음 ></a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>