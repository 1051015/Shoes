package com.shoes.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.controller.action.Action;
import com.shoes.dao.WorkerDAO;

public class AdminLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=admin_login_form";
		String message = "";
		String id = request.getParameter("id").trim();
		String pwd = request.getParameter("pwd").trim();
		
		WorkerDAO workerDAO = WorkerDAO.getInstance();
		int result = workerDAO.workerCheck(id, pwd);
		
		if (result == 1) {	// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			url = "ShoesServlet?command=admin_member_list";
		} else if (result == 0) {
			message = "비밀번호를 확인하세요.";
		} else if (result == -1) {
			message = "아이디를 확인하세요.";
		}
		
		request.setAttribute("message", message);
		request.getRequestDispatcher(url).forward(request, response);
	}
}
