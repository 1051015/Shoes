package com.shoes.controller;

import com.shoes.admin.controller.action.AdminIndexAction;
import com.shoes.admin.controller.action.AdminLoginAction;
import com.shoes.admin.controller.action.AdminLogoutAction;
import com.shoes.admin.controller.action.AdminMemberListAction;
import com.shoes.controller.action.Action;
import com.shoes.controller.action.BrandFormAction;
import com.shoes.controller.action.CartFormAction;
import com.shoes.controller.action.IdCheckFormAction;
import com.shoes.controller.action.IndexAction;
import com.shoes.controller.action.JoinAction;
import com.shoes.controller.action.JoinFormAction;
import com.shoes.controller.action.LoginAction;
import com.shoes.controller.action.LoginFormAction;
import com.shoes.controller.action.LogoutAction;
import com.shoes.controller.action.MemberUpdateFormAction;
import com.shoes.controller.action.MyPageAction;
import com.shoes.controller.action.OrderFormAction;
import com.shoes.controller.action.ProductDetailAction;
import com.shoes.controller.action.PwdUpdateFormAction;

public class ActionFactory {
	private ActionFactory() {
		super();
	}

	private static ActionFactory instance = new ActionFactory();

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command); // 동작 확인용 출력

		/* 사용자 기능 구현 */
		/* 메인 화면 */
		if (command.equals("index"))
			action = new IndexAction();
		/* 로그인 화면 */
		else if (command.equals("login_form"))
			action = new LoginFormAction();
		/* 로그인 기능 */
		else if (command.equals("login"))
			action = new LoginAction();
		/* 로그아웃 기능 */
		else if (command.equals("logout"))
			action = new LogoutAction();
		/* 회원가입 화면 */
		else if (command.equals("join_form"))
			action = new JoinFormAction();
		/* 아이디 중복확인 화면 및 기능 */
		else if (command.equals("id_check_form"))
			action = new IdCheckFormAction();
		/* 회원가입 기능 */
		else if (command.equals("join"))
			action = new JoinAction();
		/* 상품 상세 정보 페이지 화면 */
		else if (command.equals("product_detail"))
			action = new ProductDetailAction();
		/* 마이페이지 화면 */
		else if (command.equals("mypage"))
			action = new MyPageAction();
		/* 회원 정보 변경 화면 */
		else if (command.equals("member_update_form"))
			action = new MemberUpdateFormAction();
		/* 비밀번호 변경 화면 */
		else if (command.equals("pwd_update_form"))
			action = new PwdUpdateFormAction();
		/* 장바구니 화면 */
		else if (command.equals("cart_form"))
			action = new CartFormAction();
		/* 주문하기 화면 */
		else if (command.equals("order_form"))
			action = new OrderFormAction();
		/* brand 화면 */
		else if (command.equals("brand_form"))
			action = new BrandFormAction();

		/* 관리자 기능 구현 */
		/* 로그인 화면 */
		if (command.equals("admin_login_form"))
			action = new AdminIndexAction();
		/* 로그인 기능 */
		else if (command.equals("admin_login"))
			action = new AdminLoginAction();
		/* 로그아웃 기능 */
		else if (command.equals("admin_logout"))
			action = new AdminLogoutAction();
		/* 회원리스트 화면 */
		else if (command.equals("admin_member_list"))
			action = new AdminMemberListAction();

		return action;
	}
}
