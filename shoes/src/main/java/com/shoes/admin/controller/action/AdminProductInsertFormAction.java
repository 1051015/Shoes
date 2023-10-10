package com.shoes.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.controller.action.Action;

public class AdminProductInsertFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "admin/product/productInsert.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}
}
