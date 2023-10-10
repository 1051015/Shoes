package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.MemberDAO;
import com.shoes.dto.MemberVO;

public class MemberUpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=index";

		HttpSession session = request.getSession();
	
		MemberVO mvo = new MemberVO();
		mvo.setId(request.getParameter("id"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setPhone(request.getParameter("phone"));

		session.setAttribute("id", request.getParameter("id"));

		MemberDAO mdao = MemberDAO.getInstance();
		mdao.updateMember(mvo);
		
		session.invalidate();

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
