package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.ProductDAO;
import com.shoes.dao.ZzimDAO;
import com.shoes.dto.MemberVO;
import com.shoes.dto.ProductVO;
import com.shoes.dto.ZzimVO;

public class ZzimInsertAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=mypage";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		request.setAttribute("mvo", loginUser);
		
		
		if(loginUser == null) {
			url = "ShoesServlet?command=login_form";
		} else {
			ZzimVO zvo = new ZzimVO();
			zvo.setId(loginUser.getId());
			zvo.setShoescode(request.getParameter("shoescode"));
			ZzimDAO zdao =  ZzimDAO.getInstace();
			zdao.insertZzim(zvo);
			
			ProductVO pvo = new ProductVO();
			pvo.setShoescode(request.getParameter("shoescode"));
			ProductDAO pdao = ProductDAO.getInstance();
			pdao.updateZzim(pvo);
		}
		response.sendRedirect(url);
	}
}
