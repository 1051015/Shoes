<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보 페이지(키즈)</title>
<link href="user/product/css/productDetail_style.css" rel="stylesheet">
<script type="text/javascript" src="user/script/product.js"></script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="contents-width">
		<form method="post" action="ShoesServlet?command=product_detail_kids"
			name="frm" onload="init();">
			<div class="product-detail-box">
				<!-- 사진영역 -->
				<div class="detail-box-left">
					<div class="detail-thumbs-wrap">
						<img src="product_images/${productVO.infoimg}"
							style="width: 580px; height: 580px;">
					</div>

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
								class="btn-brand">${productVO.brand}</span>
							<c:choose>
								<c:when test="${empty sessionScope.loginUser}">
									<span class="heart-img">
										<button type="button" onclick="changeImg(0)"
											class="heart-off-btn">
											<img src="images/heart-off.png" class="heart-off" id="heart">
										</button>
									</span>
								</c:when>
								<c:otherwise>
									<c:if test="${productVO.heart == '1'}">
										<span class="heart-img">
											<button type="button" onclick="changeImg(1)"
												class="heart-off-btn">
												<img src="images/heart-off.png" class="heart-off" id="heart">
											</button>
										</span>
									</c:if>
									<c:if test="${productVO.heart == '2'}">
										<span class="heart-img">
											<button type="button" onclick="changeImg(1)"
												class="heart-on-btn">
												<img src="images/heart-on.png" class="heart-on" id="heart">
											</button>
										</span>
									</c:if>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="prod-name">${productVO.pname}</div>
						<ul class="prod-code-list">
							<li>상품코드 : ${productVO.shoescode}</li>
						</ul>
						<div class="detail-price">
							<span class="prod-price"><span class="price-cost"><fmt:formatNumber
										value="${productVO.price}" pattern="###,###" /></span> <span
								class="price-unit">원</span> </span>
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
									<td><a href="ShoesServlet?command=join_form"
										class="link_arrow"> ★ 회원 가입 시 <span class="spot">5,000P</span>
											즉시 적립 ★
									</a></td>
								</tr>

								<tr>
									<th>색상</th>
									<td><span class="text">${productVO.color}</span></td>
								</tr>

								<tr>
									<th>배송</th>
									<td><span class="text">무료배송 | 대우택배</span></td>
								</tr>

								<tr>
									<th>사이즈</th>
									<td><select name="psize" id="psize">
											<option value="" disabled selected>사이즈를 선택하세요.</option>
											<option value="150">150</option>
											<option value="160">160</option>
											<option value="170">170</option>
											<option value="180">180</option>
											<option value="190">190</option>
											<option value="200">200</option>
											<option value="210">210</option>
											<option value="220">220</option>
									</select></td>
								</tr>

								<tr>
									<th>수량</th>
									<td><div class="quan_area">
											<input type="button" value=" - " onclick="minus()"
												class="minus_btn"><input type="text" name="quantity"
												value="1" size="2" class="quantity" onchange="change()"
												readonly><input type="button" value=" + "
												onclick="plus()" class="plus_btn">
										</div></td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" name="shoescode"
							value="${productVO.shoescode}">
					</div>

					<!-- 장바구니/구매버튼영역 -->
					<div class="btn-wrap col2">
						<c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<button type="button" class="btn btn-lg btn1"
									onclick="go_cart(0)">장바구니 담기</button>
								<button type="button" class="btn btn-lg btn2"
									onclick="go_order(0)">바로구매</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-lg btn1"
									onclick="go_cart(1)">장바구니 담기</button>
								<button type="button" class="btn btn-lg btn2"
									onclick="go_order(1)">바로구매</button>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>

			<!-- 상품상세정보영역 -->
			<div class="product-detail-info">
				<div id="productInfo" class="tab-wrap anchor-tab justify">
					<div class="tab">
						<h2 style="margin-bottom: 10px">상품정보</h2>
					</div>

					<!-- 상품이미지영역 -->
					<div class="tab-content">
						<div id="product-detail-description-wrapper">
							<div class="editor-wrap">
								<div style="text-align: center;">
									<img src="product_images/${productVO.detail1img}"
										style="width: 900px; height: 600px; margin-bottom: 15px;">
									<img src="product_images/${productVO.detail2img}"
										style="width: 900px; height: 600px; margin-bottom: 15px;">
									<img src="product_images/${productVO.detail3img}"
										style="width: 900px; height: 600px; margin-bottom: 40px;">
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
										<td><span>${productVO.color}</span></td>
									</tr>
									<tr>
										<th>사이즈</th>
										<td><span>150 ~ 220</span></td>
										<th>굽높이</th>
										<td><span>뒷굽: 2.5cm</span></td>
									</tr>
									<tr>
										<th>제조사</th>
										<td><span>${productVO.brand}</span></td>
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
						<div class="text-review">
							<h2 style="margin-bottom: 10px">상품리뷰</h2>
						</div>
					</div>
					<div class="review">
						<ul class="note">
							<li>
								<div>
									<img src="images/5star.png" class="rank"> <span
										class="writer">as***&nbsp;&nbsp;2023-09-22</span>
								</div>
								<h3>${productVO.pname}/${productVO.color}</h3>
								<p>우리 아이에게 딱 맞는 신발이에요. 넘 이뻐요~~</p>
							</li>
							<li>
								<div>
									<img src="images/5star.png" class="rank"> <span
										class="writer">ba**&nbsp;&nbsp;2023-09-20</span>
								</div>
								<h3>${productVO.pname}/${productVO.color}</h3>
								<p>아이가 직접 골라서 그런지 정말 좋아해요!!</p>
							</li>
							<li>
								<div>
									<img src="images/3star.png" class="rank"> <span
										class="writer">sk**&nbsp;&nbsp;2023-09-18</span>
								</div>
								<h3>${productVO.pname}/${productVO.color}</h3>
								<p>포장 상자가 좀 훼손되어 있더라구요ㅜㅜ 다음부터는 신경써주세요. 상품은 좋아요~</p>
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