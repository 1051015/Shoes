package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.dao.CartDAO;

public class CartDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=cart_list";

//		String cseq = request.getParameter("cseq");
//
//		System.out.println(cseq);
//		CartDAO cartDAO = CartDAO.getInstance();
//		cartDAO.deleteCart(Integer.parseInt(cseq));

		String[] cseqArr = request.getParameterValues("cseq");

		for (String cseq : cseqArr) {
			System.out.println(cseq);
			CartDAO cartDAO = CartDAO.getInstance();
			cartDAO.deleteCart(Integer.parseInt(cseq));
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}
