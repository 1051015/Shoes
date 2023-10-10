package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.dao.ProductDAO;
import com.shoes.dao.ZzimDAO;
import com.shoes.dto.ProductVO;

public class ZzimDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=mypage";
		
		String shoescode = request.getParameter("shoescode");
		
		ZzimDAO zdao = ZzimDAO.getInstace();
		zdao.deleteZzim(shoescode);
		
		ProductVO pvo = new ProductVO();
		pvo.setShoescode(request.getParameter("shoescode"));
		ProductDAO pdao = ProductDAO.getInstance();
		pdao.deleteHeart(pvo);
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
