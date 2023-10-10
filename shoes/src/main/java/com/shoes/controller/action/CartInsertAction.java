package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.CartDAO;
import com.shoes.dto.CartVO;
import com.shoes.dto.MemberVO;

public class CartInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=cart_list";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "ShoesServlet?command=login_form";
		} else {
			CartVO cartVO = new CartVO();
			cartVO.setId(loginUser.getId());
			cartVO.setShoescode(request.getParameter("shoescode"));
			cartVO.setPsize(Integer.parseInt(request.getParameter("psize")));
			cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			

			CartDAO cartDAO = CartDAO.getInstance();
			cartDAO.insertCart(cartVO);
		}
		response.sendRedirect(url);
	}
}
