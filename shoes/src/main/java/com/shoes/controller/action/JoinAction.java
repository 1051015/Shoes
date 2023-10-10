package com.shoes.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.MemberDAO;
import com.shoes.dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		HttpSession session = request.getSession();
		MemberVO memberVO = new MemberVO();

		memberVO.setId(request.getParameter("id"));
		memberVO.setPwd(request.getParameter("pwd"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setZipNum(request.getParameter("zip_num"));
		memberVO.setAddress(request.getParameter("addr1") + request.getParameter("addr2"));
		memberVO.setPhone(request.getParameter("phone"));

		session.setAttribute("id", request.getParameter("id"));

		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(memberVO);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}