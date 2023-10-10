package com.shoes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shoes.dto.ZzimVO;

import util.DBManager;

public class ZzimDAO {
	private ZzimDAO() {
		
	}
	
	private static ZzimDAO instance = new ZzimDAO();
	
	public static ZzimDAO getInstace() {
		return instance;
	}
	
	/* 찜 목록 추가 */
	public void insertZzim(ZzimVO zvo) {
		String sql = "insert into zzim(zseq, id, shoescode) values(zzim_seq.nextval, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, zvo.getId());
			pstmt.setString(2, zvo.getShoescode());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	/* 찜 목록 */
	public ArrayList<ZzimVO> listZzim(String userId) {
		ArrayList<ZzimVO> zzimList = new ArrayList<ZzimVO>();
		String sql = "select * from zzim_view where id=? order by zseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ZzimVO zvo = new ZzimVO();
				zvo.setZseq(rs.getInt(1));
				zvo.setId(rs.getString(2));
				zvo.setShoescode(rs.getString(3));
				zvo.setMname(rs.getString(4));
				zvo.setPname(rs.getString(5));
				zvo.setPrice(rs.getInt(6));
				zvo.setBrand(rs.getString(7));
				zvo.setInfoimg(rs.getString(8));
				zvo.setHeart(rs.getString(9));
				zzimList.add(zvo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return zzimList;
	}

	/* 찜 목록 삭제 */
	public void deleteZzim(String shoescode) {
		String sql = "delete zzim where shoescode=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, shoescode);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
