package com.daewoo.lbi;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daewoo.dao.MemberDAO;
import com.daewoo.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("member/join.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String memName = request.getParameter("memName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");

		MemberVO mvo = new MemberVO();
		mvo.setUid(uid);
		mvo.setPwd(pwd);
		mvo.setMemName(memName);
		mvo.setPhone(phone);
		mvo.setEmail(email);
		mvo.setAddr1(addr1);
		mvo.setAddr2(addr2);

		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.insertMember(mvo);

		HttpSession session = request.getSession();
		if (result == 1) {
			session.setAttribute("uid", mvo.getUid());
			request.setAttribute("message", "회원 가입에 성공했습니다.");
		} else {
			request.setAttribute("message", "회원 가입에 실패하였습니다.");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("member/login.jsp");
		rd.forward(request, response);

	}

}
