package com.shoes.controller;

import com.shoes.admin.controller.action.AdminIndexAction;
import com.shoes.admin.controller.action.AdminLoginAction;
import com.shoes.admin.controller.action.AdminLogoutAction;
import com.shoes.admin.controller.action.AdminMemberListAction;
import com.shoes.admin.controller.action.AdminOrderListAction;
import com.shoes.admin.controller.action.AdminOrderSaveAction;
import com.shoes.admin.controller.action.AdminProductDetailAction;
import com.shoes.admin.controller.action.AdminProductInsertAction;
import com.shoes.admin.controller.action.AdminProductInsertFormAction;
import com.shoes.admin.controller.action.AdminProductListAction;
import com.shoes.admin.controller.action.AdminProductUpdateAction;
import com.shoes.admin.controller.action.AdminProductUpdateFormAction;
import com.shoes.admin.controller.action.AdminQnaDetailAction;
import com.shoes.admin.controller.action.AdminQnaListAction;
import com.shoes.admin.controller.action.AdminQnaResaveAction;
import com.shoes.controller.action.Action;
import com.shoes.controller.action.BrandFormAction;
import com.shoes.controller.action.CartDeleteAction;
import com.shoes.controller.action.CartInsertAction;
import com.shoes.controller.action.CartListAction;
import com.shoes.controller.action.IdCheckFormAction;
import com.shoes.controller.action.IndexAction;
import com.shoes.controller.action.JoinAction;
import com.shoes.controller.action.JoinFormAction;
import com.shoes.controller.action.KidsFormAction;
import com.shoes.controller.action.LoginAction;
import com.shoes.controller.action.LoginFormAction;
import com.shoes.controller.action.LogoutAction;
import com.shoes.controller.action.MemberDeleteAction;
import com.shoes.controller.action.MemberDeleteFormAction;
import com.shoes.controller.action.MemberUpdateAction;
import com.shoes.controller.action.MemberUpdateFormAction;
import com.shoes.controller.action.MenFormAction;
import com.shoes.controller.action.ModelsFormAction;
import com.shoes.controller.action.MyPageAction;
import com.shoes.controller.action.OnlywingsFormAction;
import com.shoes.controller.action.OrderInsertAction;
import com.shoes.controller.action.OrderListAction;
import com.shoes.controller.action.ProductDetailAction;
import com.shoes.controller.action.ProductDetailKidsAction;
import com.shoes.controller.action.PwdUpdateAction;
import com.shoes.controller.action.PwdUpdateFormAction;
import com.shoes.controller.action.QnaListAction;
import com.shoes.controller.action.QnaViewAction;
import com.shoes.controller.action.QnaWriteAction;
import com.shoes.controller.action.QnaWriteFormAction;
import com.shoes.controller.action.WomenFormAction;
import com.shoes.controller.action.ZzimDeleteAction;
import com.shoes.controller.action.ZzimInsertAction;

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
		/* 상품 상세 정보 페이지 화면(키즈) */
		else if (command.equals("product_detail_kids"))
			action = new ProductDetailKidsAction();
		/* 마이페이지 화면 */
		else if (command.equals("mypage"))
			action = new MyPageAction();
		/* 찜 목록에 넣기 */
		else if (command.equals("zzim_insert"))
			action = new ZzimInsertAction();
		/* 찜 삭제 하기 */
		else if (command.equals("zzim_delete"))
			action = new ZzimDeleteAction();
		/* 회원 탈퇴 폼 이동 */
		else if (command.equals("member_delete_form"))
			action = new MemberDeleteFormAction();
		/* 회원 탈퇴 */
		else if (command.equals("member_delete"))
			action = new MemberDeleteAction();
		/* 비밀번호 변경 화면 */
		else if (command.equals("pwd_update_form"))
			action = new PwdUpdateFormAction();
		/* 비밀번호 변경 완료 */
		else if (command.equals("update_pwd"))
			action = new PwdUpdateAction();
		/* 회원 정보 변경 화면 */
		else if (command.equals("member_update_form"))
			action = new MemberUpdateFormAction();
		/* 회원정보 변경 완료 */
		else if (command.equals("update_member"))
			action = new MemberUpdateAction();
		/* 회원정보 변경 완료 */
		else if (command.equals("update_member"))
			action = new MemberUpdateAction();
		/* Qna리스트 화면 */
		else if (command.equals("qna_list"))
			action = new QnaListAction();
		/* qna 작성 화면 */
		else if (command.equals("qna_write_form"))
			action = new QnaWriteFormAction();
		/* qna 작성 완료!! */
		else if (command.equals("qna_write"))
			action = new QnaWriteAction();
		/* qna 작성글 보기 */
		else if (command.equals("qna_view"))
			action = new QnaViewAction();
		/* 장바구니 화면 */
		else if (command.equals("cart_list"))
			action = new CartListAction();
		/* 장바구니 목록 추가 기능 */
		else if (command.equals("cart_insert"))
			action = new CartInsertAction();
		/* 장바구니 목록 삭제 기능 */
		else if (command.equals("cart_delete"))
			action = new CartDeleteAction();
		/* 주문하기 */
		else if (command.equals("order_insert"))
			action = new OrderInsertAction();
		/* 주문 목록 보기 */
		else if (command.equals("order_list"))
			action = new OrderListAction();
		/* brand 화면 */
		else if (command.equals("brand_form"))
			action = new BrandFormAction();
		/* men 화면 */
		else if (command.equals("men_form"))
			action = new MenFormAction();
		/* women 화면 */
		else if (command.equals("women_form"))
			action = new WomenFormAction();
		/* kids 화면 */
		else if (command.equals("kids_form"))
			action = new KidsFormAction();
		/* models 화면 */
		else if (command.equals("models_form"))
			action = new ModelsFormAction();
		/* only wings 화면 */
		else if (command.equals("onlywings_form"))
			action = new OnlywingsFormAction();

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
		/* 상품리스트 화면 */
		else if (command.equals("admin_product_list"))
			action = new AdminProductListAction();
		/* 상품리스트 상세보기 화면 */
		else if (command.equals("admin_product_detail"))
			action = new AdminProductDetailAction();
		/* 상품 수정 화면 */
		else if (command.equals("admin_product_update_form"))
			action = new AdminProductUpdateFormAction();
		/* 상품 수정 기능 */
		else if (command.equals("admin_product_update"))
			action = new AdminProductUpdateAction();
		/* 상품 등록 화면 */
		else if (command.equals("admin_product_insert_form"))
			action = new AdminProductInsertFormAction();
		/* 상품 등록 기능 */
		else if (command.equals("admin_product_insert"))
			action = new AdminProductInsertAction();
		/* 주문 정보 화면 */
		else if (command.equals("admin_order_list"))
			action = new AdminOrderListAction();
		/* 주문 처리 기능 */
		else if (command.equals("admin_order_save"))
			action = new AdminOrderSaveAction();
		/* qna list */
		else if (command.equals("admin_qna_list"))
			action = new AdminQnaListAction();
		/* qna리스트 상세정보페이지 */
		else if (command.equals("admin_qna_detail"))
			action = new AdminQnaDetailAction();
		/* qna답글 작성 */
		else if (command.equals("admin_qna_repsave"))
			action = new AdminQnaResaveAction();

		return action;
	}
}
