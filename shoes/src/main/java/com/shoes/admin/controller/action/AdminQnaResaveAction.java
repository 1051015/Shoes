package com.shoes.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.controller.action.Action;
import com.shoes.dao.QnaDAO;
import com.shoes.dto.QnaVO;

public class AdminQnaResaveAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ShoesServlet?command=admin_qna_list";

	    String qseq = request.getParameter("qseq").trim();
	    String reply =request.getParameter("reply").trim();
	    
	    QnaVO qnaVO = new QnaVO();
	    qnaVO.setQseq(Integer.parseInt(qseq));
	    qnaVO.setReply(reply);    
	    
	    QnaDAO qnaDAO = QnaDAO.getInstance();
	    qnaDAO.updateQna(qnaVO);
	    
	    response.sendRedirect(url);
	}
}
