package com.daewoo.lbi;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daewoo.dao.MemberDAO;
import com.daewoo.dto.MemberVO;

/**
 * Servlet implementation class MemberUpdate
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uid = request.getParameter("uid");
		MemberDAO mdao = MemberDAO.getInstance();

		MemberVO mvo = mdao.getMember(uid);
		request.setAttribute("mvo", mvo);

		RequestDispatcher rd = request.getRequestDispatcher("member/memberUpdate.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 폼에서 입력한 회원 정보를 획득하기
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		

		// 회원 정보를 vo 객체에 담기
		MemberVO mvo = new MemberVO();
		mvo.setUid(uid);
		mvo.setPwd(pwd);
		mvo.setPhone(phone);
		mvo.setEmail(email);
		mvo.setAddr1(addr1);
		mvo.setAddr2(addr2);

		MemberDAO mdao = MemberDAO.getInstance();
		mdao.updateMember(mvo);
		response.sendRedirect("login.do");
	}

}
