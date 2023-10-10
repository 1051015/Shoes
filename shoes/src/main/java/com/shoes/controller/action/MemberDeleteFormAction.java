package com.shoes.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.dao.OrderDAO;
import com.shoes.dao.ZzimDAO;
import com.shoes.dto.MemberVO;
import com.shoes.dto.OrderVO;
import com.shoes.dto.ZzimVO;

public class MemberDeleteFormAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "user/mypage/myMemberDelete.jsp";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		request.setAttribute("mvo", loginUser);
		
		ZzimDAO zdao = ZzimDAO.getInstace();
		ArrayList<ZzimVO> zzimList = zdao.listZzim(loginUser.getId());
		request.setAttribute("zzim", zzimList);
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		ArrayList<Integer> oseqList = orderDAO.selectSeqOrderIng(loginUser.getId());
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		for (int oseq : oseqList) {
			ArrayList<OrderVO> orderListIng = orderDAO.listOrderById(loginUser.getId(), "%", oseq);

			OrderVO orderVO = orderListIng.get(0);
			orderVO.setPname(orderVO.getPname() + " 외 " + orderListIng.size() + "건");
			System.out.println(orderVO.getIndate());

			int totalPrice = 0;
			for (OrderVO ovo : orderListIng) {
				totalPrice += ovo.getPrice() * ovo.getQuantity();
			}
			orderVO.setPrice(totalPrice);
			orderList.add(orderVO);
		}
		request.setAttribute("orderList", orderList);
		
		if(loginUser == null) {
			url = "ShoesServlet?command=login_form";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
