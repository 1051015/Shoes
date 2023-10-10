package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.dao.ProductDAO;
import com.shoes.dto.ProductVO;

public class ProductDetailKidsAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "user/product/productDetailKids.jsp";

		String shoescode = request.getParameter("shoescode").trim();

		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(shoescode);

		request.setAttribute("productVO", productVO);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
