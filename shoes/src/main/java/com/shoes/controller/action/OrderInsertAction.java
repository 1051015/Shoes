package com.shoes.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.CartDAO;
import com.shoes.dao.OrderDAO;
import com.shoes.dao.ProductDAO;
import com.shoes.dto.CartVO;
import com.shoes.dto.MemberVO;
import com.shoes.dto.ProductVO;

public class OrderInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=order_list";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "ShoesServlet?command=login_form";
		} else {
			String type = request.getParameter("type");
			System.out.println("타입 : " + type);

			if (type.equals("now")) {
				int quantity = Integer.parseInt(request.getParameter("quantity"));
				String shoescode = request.getParameter("shoescode");
				ProductDAO productDAO = ProductDAO.getInstance();
				ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
				productList.add(productDAO.getProduct(shoescode));

				OrderDAO orderDAO = OrderDAO.getInstance();

				int maxOseq = orderDAO.nowinsertOrder(productList, loginUser.getId(), quantity);
				url = "ShoesServlet?command=order_list&oseq=" + maxOseq;
				
			} else if (type.equals("cart")) {
				CartDAO cartDAO = CartDAO.getInstance();
				ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());

				OrderDAO orderDAO = OrderDAO.getInstance();

				int maxOseq = orderDAO.insertOrder(cartList, loginUser.getId());
				url = "ShoesServlet?command=order_list&oseq=" + maxOseq;
			}

		}
		response.sendRedirect(url);
	}
}
