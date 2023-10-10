package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.MemberDAO;
import com.shoes.dto.MemberVO;

public class MemberDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=index";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		String id = loginUser.getId();
		
		MemberDAO mdao = MemberDAO.getInstance();
		mdao.deleteMember(id);
		
		if(session != null) {
			session.invalidate();
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
