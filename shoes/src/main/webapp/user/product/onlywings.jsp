<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Only Wings</title>
<link rel="stylesheet" href="user/css/index_style.css">
</head>
<body>
<%@ include file="/header.jsp"%>

<div class="ranking">
	<h1>ONLY WINGS</h1>
	<h2>★오직 WINGS에서만 볼 수 있는 상품들★</h2>
	<h2>★다양한 코디에 맞게 저희 WINGS만의 특별한 상품을 만나보세요★</h2>
	<div class="box">
		<ul>
			<c:forEach items="${productAll}" var="productVO" begin="0" end="9" step="2">
				<li class="product">
					<a href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}">
					<img src="product_images/${productVO.mainimg}" style="width: 280px; height: 280px;"></a>
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
	
	<div class="box">
		<ul>
			<c:forEach items="${productAll}" var="productVO" begin="31" end="40" step="2">
				<li class="product">
					<a href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}">
					<img src="product_images/${productVO.mainimg}" style="width: 280px; height: 280px;"></a>
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
	
	<div class="box">
		<ul>
			<c:forEach items="${productAll}" var="productVO" begin="41" end="50" step="2">
				<li class="product">
					<a href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}">
					<img src="product_images/${productVO.mainimg}" style="width: 280px; height: 280px;"></a>
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
	
	<div class="box">
		<ul>
			<c:forEach items="${productAll}" var="productVO" begin="61" end="70" step="2">
				<li class="product">
					<a href="ShoesServlet?command=product_detail&shoescode=${productVO.shoescode}">
					<img src="product_images/${productVO.mainimg}" style="width: 280px; height: 280px;"></a>
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