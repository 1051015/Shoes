<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브랜드별 신발 페이지</title>
<link rel="stylesheet" href="user/product/css/category.css?v=1">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="ranking">
		<h1>BRAND SHOES</h1>
		<h2>★ADIDAS★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="0" end="3"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>

		<h2>★NIKE★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="4" end="7"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>
		
		<h2>★ASICS★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="8" end="11"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>

		<h2>★P-31★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="12" end="15"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>
		
		<h2>★CLOUD ZERO★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="16" end="19"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>

		<h2>★MACMOC★</h2>
		<div class="box">
			<ul>
				<c:forEach items="${productBrand}" var="productVO" begin="20" end="23"
					step="1">
					<li class="product"><a
						href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}"><img
							src="product_images/${productVO.mainimg}"
							style="width: 280px; height: 280px;"></a>
						<div class="product_info">
							<h4>${productVO.brand}</h4>
							<p>${productVO.pname}</p>
							<br> <span class="price"> <fmt:formatNumber
									value="${productVO.price}" pattern="###,###" />원
							</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>