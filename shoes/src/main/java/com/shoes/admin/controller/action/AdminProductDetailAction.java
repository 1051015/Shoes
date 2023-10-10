package com.shoes.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.controller.action.Action;
import com.shoes.dao.ProductDAO;
import com.shoes.dto.ProductVO;

public class AdminProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "admin/product/productDetail.jsp";

		String shoescode = request.getParameter("shoescode").trim();

		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(shoescode);

		request.setAttribute("productVO", productVO);

		// 상품 리스트(product_list.jsp) 페이지에서 쿼리 스트링으로 넘겨준 현재 페이지를 얻어온다.
		String tpage = "1";
		if (request.getParameter("tpage") != null) {
			tpage = request.getParameter("tpage");
		}
//		String brandList[] = { "0", "아디다스", "나이키", "아식스", "p-31", "클라우드제로", "맥목" };
		request.setAttribute("tpage", tpage);
//		int index = Integer.parseInt(productVO.getBrand().trim());
//		request.setAttribute("brand", brandList[index]);

		request.getRequestDispatcher(url).forward(request, response);
	}
}
