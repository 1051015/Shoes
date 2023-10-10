package com.shoes.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.dao.ProductDAO;
import com.shoes.dto.ProductVO;

public class IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/index.jsp";

		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> productAll = productDAO.AllProduct();

		request.setAttribute("productAll", productAll);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
