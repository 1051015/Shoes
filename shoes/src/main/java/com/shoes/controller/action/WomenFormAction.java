package com.shoes.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.dao.ProductDAO;
import com.shoes.dto.ProductVO;

public class WomenFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "user/product/women.jsp";

		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> productWomen = productDAO.WomenProduct();

		request.setAttribute("productWomen", productWomen);

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}

}
