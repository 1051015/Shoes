package com.shoes.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.controller.action.Action;

public class AdminLogoutAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=admin_login_form";
		HttpSession session = request.getSession(false);

		if (session != null) {
			session.invalidate();
			request.setAttribute("message", "로그아웃 되었습니다.");
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}
