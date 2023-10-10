package com.shoes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shoes.dto.CartVO;
import com.shoes.dto.OrderVO;
import com.shoes.dto.ProductVO;

import util.DBManager;

public class OrderDAO {
	private OrderDAO() {
	}

	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {
		return instance;
	}

	// 카트에서 구매
	public int insertOrder(ArrayList<CartVO> cartList, String id) {
		int maxOseq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			conn = DBManager.getConnection();

			String selectMaxOseq = "select max(oseq) from orders";
			pstmt = conn.prepareStatement(selectMaxOseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				maxOseq = rs.getInt(1);
			}
			pstmt.close();

			String insertOrder = "insert into orders(oseq, id) values(orders_seq.nextval, ?)";
			pstmt = conn.prepareStatement(insertOrder);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

			for (CartVO cartVO : cartList) {
				insertOrderDetail(cartVO, maxOseq);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return maxOseq;
	}

	public void insertOrderDetail(CartVO cartVO, int maxOseq) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();

			String insertOrderDetail = "insert into order_detail(odseq, oseq, "
					+ "shoescode, quantity) values(order_detail_seq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(insertOrderDetail);
			pstmt.setInt(1, maxOseq);
			pstmt.setString(2, cartVO.getShoescode());
			pstmt.setInt(3, cartVO.getQuantity());
			pstmt.executeUpdate();
			pstmt.close();

			String updateCartResult = "update cart set result=2 where cseq=?";
			pstmt = conn.prepareStatement(updateCartResult);
			pstmt.setInt(1, cartVO.getCseq());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 즉시구매
	public int nowinsertOrder(ArrayList<ProductVO> productList, String id, int quantity) {
		int maxOseq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			conn = DBManager.getConnection();

			String selectMaxOseq = "select max(oseq) from orders";
			pstmt = conn.prepareStatement(selectMaxOseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				maxOseq = rs.getInt(1);
			}
			pstmt.close();

			String insertOrder = "insert into orders(oseq, id) values(" + "orders_seq.nextval, ?)";
			pstmt = conn.prepareStatement(insertOrder);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

			for (ProductVO productVO : productList) {
				nowinsertOrderDetail(productVO, maxOseq, quantity);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return maxOseq;
	}

	public void nowinsertOrderDetail(ProductVO productVO, int maxOseq, int quantity) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();

			String insertOrderDetail = "insert into order_detail(odseq, oseq, "
					+ "shoescode, quantity) values(order_detail_seq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(insertOrderDetail);
			pstmt.setInt(1, maxOseq);
			pstmt.setString(2, productVO.getShoescode());
			pstmt.setInt(3, quantity);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 사용자가 주문 내역 검색
	public ArrayList<OrderVO> listOrderById(String id, String result, int oseq) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql = "select * from order_view where id=? " + "and result like '%'||?||'%' and oseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, result);
			pstmt.setInt(3, oseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO orderVO = new OrderVO();
				orderVO.setOdseq(rs.getInt("odseq"));
				orderVO.setOseq(rs.getInt("oseq"));
				orderVO.setId(rs.getString("id"));
				orderVO.setIndate(rs.getTimestamp("indate"));
				orderVO.setShoescode(rs.getString("shoescode"));
				orderVO.setQuantity(rs.getInt("quantity"));
				orderVO.setMname(rs.getString("mname"));
				orderVO.setZipNum(rs.getString("zip_num"));
				orderVO.setAddress(rs.getString("address"));
				orderVO.setPhone(rs.getString("phone"));
				orderVO.setPname(rs.getString("pname"));
				orderVO.setPrice(rs.getInt("price"));
				orderVO.setResult(rs.getString("result"));
				orderList.add(orderVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return orderList;
	}

	// 현재 진행 중인 주문 내역만 조회
	public ArrayList<Integer> selectSeqOrderIng(String id) {
		ArrayList<Integer> oseqList = new ArrayList<Integer>();
		String sql = "select distinct oseq from order_view " + "where id=? and result='1' order by oseq desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				oseqList.add(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return oseqList;
	}

	/* 관리자 모드에서 사용되는 메소드 */
	public ArrayList<OrderVO> listOrder(String member_name) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql = "select * from order_view where mname like '%'||?||'%' " + "order by result, oseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (member_name == "") {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, member_name);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO orderVO = new OrderVO();
				orderVO.setOdseq(rs.getInt("odseq"));
				orderVO.setOseq(rs.getInt("oseq"));
				orderVO.setId(rs.getString("id"));
				orderVO.setIndate(rs.getTimestamp("indate"));
				orderVO.setShoescode(rs.getString("shoescode"));
				orderVO.setQuantity(rs.getInt("quantity"));
				orderVO.setMname(rs.getString("mname"));
				orderVO.setZipNum(rs.getString("zip_num"));
				orderVO.setAddress(rs.getString("address"));
				orderVO.setPhone(rs.getString("phone"));
				orderVO.setPname(rs.getString("pname"));
				orderVO.setPrice(rs.getInt("price"));
				orderVO.setResult(rs.getString("result"));
				orderList.add(orderVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return orderList;
	}

	public void updateOrderResult(String oseq) {
		String sql = "update order_detail set result='2' where odseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
