package com.shoes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shoes.dto.CartVO;

import util.DBManager;

public class CartDAO {
	private CartDAO() {
	}

	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}

	/* 장바구니 목록 추가 */
	public void insertCart(CartVO cartVO) {
		String sql = "insert into cart(cseq, id, shoescode, psize, quantity) values(cart_seq.nextval, ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartVO.getId());
			pstmt.setString(2, cartVO.getShoescode());
			pstmt.setInt(3, cartVO.getPsize());
			pstmt.setInt(4, cartVO.getQuantity());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	/* 장바구니 목록 */
	public ArrayList<CartVO> listCart(String userId) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		String sql = "select * from cart_view where id=? order by cseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CartVO cartVO = new CartVO();
				cartVO.setCseq(rs.getInt(1));
				cartVO.setId(rs.getString(2));
				cartVO.setShoescode(rs.getString(3));
				cartVO.setMname(rs.getString(4));
				cartVO.setPname(rs.getString(5));
				cartVO.setQuantity(rs.getInt(6));
				cartVO.setPsize(rs.getInt(7));
				cartVO.setIndate(rs.getTimestamp(8));
				cartVO.setPrice(rs.getInt(9));
				cartVO.setColor(rs.getString(10));
				cartVO.setInfoimg(rs.getString(11));
				cartList.add(cartVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cartList;
	}

	/* 장바구니 목록 삭제 */
	public void deleteCart(int cseq) {
		String sql = "delete cart where cseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
