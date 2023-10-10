<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINGS</title>
<link rel="stylesheet" href="user/css/index_style.css?v=1">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="slideshow-container">
	    <div class="slide">
	      <img src="images/ad/ad1.jpg" alt="이미지 1">
	    </div>
	    
	    <div class="slide">
	      <img src="images/ad/ad2.jpg" alt="이미지 2">
	    </div>
	    
	    <div class="slide">
	      <img src="images/ad/ad3.jpg" alt="이미지 3">
	    </div>
	    
	    <div class="slide">
	      <img src="images/ad/ad6.jpg" alt="이미지 4">
	    </div>
	    <!-- 추가 이미지를 여기에 추가합니다. -->
	</div>
	
	<script src="user/script/adscript.js"></script>

	<div class="ranking">
		<h1>BEST ITEMS</h1>
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="60" end="64"
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
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="37" end="41"
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

		<h1>MD'S PICK</h1>
			<div class="box">
				<ul>
					<c:forEach items="${productAll}" var="productVO" begin="28" end="32"
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

	<h1>NEW ITEMS</h1>
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="41" end="45"
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
	
	<h1>TOP BRAND</h1>
	<div class="brandbox">
		<ul>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/nike2.png" style="width: 480px; height: 480px;"></a>
			</li>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/addidas.png" style="width: 480px; height: 480px;"></a>
			</li>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/asics.png" style="width: 480px; height: 480px;"></a>
			</li>
		</ul>
	</div>
	<div class="brandbox">
		<ul>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/cloudzero.png" style="width: 480px; height: 480px;"></a>
			</li>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/macmoc.png" style="width: 480px; height: 480px;"></a>
			</li>
			<li class="brandproduct">
			<a href="ShoesServlet?command=brand_form"><img src="images/product/p-31.png" style="width: 480px; height: 480px;"></a>
			</li>
		</ul>
	</div>

	<h1>HOT SALE</h1>
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="46" end="50"
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

	<h1>RANKING</h1>
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="0" end="4"
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
		<div class="box">
			<ul>
				<c:forEach items="${productAll}" var="productVO" begin="5" end="9"
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