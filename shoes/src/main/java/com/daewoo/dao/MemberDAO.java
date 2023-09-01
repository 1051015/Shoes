package com.daewoo.dao;

import java.sql.*;
import javax.sql.*;

import com.daewoo.dto.MemberVO;

import javax.naming.*;

public class MemberDAO {
	public MemberDAO() {

	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	// 커넥션 풀 메소드 정의
	public Connection getConnection() throws Exception {
		Connection conn = null;

		Context init = new InitialContext();
		Context env = (Context) init.lookup("java:/comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/mysql");
		conn = ds.getConnection();
		return conn;

	}

	// 사용자 인증시 사용하는 메소드
	public int userCheck(String uid, String pwd) {
		int result = -1;
		String sql = "select pwd from member where uid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1; // 아이디와 패스워드가 일치
				} else {
					result = 0; // 아이디는 있는데 패스워드가 일치하지 않을 때
				}
			} else {
				result = -1; // 아이디도 존재하지 않을 때
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 아이디로 회원 정보 가져오는 메소드
	public MemberVO getMember(String uid) {
		MemberVO mVo = null;
		String sql = "select * from member where uid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVo = new MemberVO();
				mVo.setUid(rs.getString("uid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setMemName(rs.getString("memName"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setEmail(rs.getString("email"));
				mVo.setAddr1(rs.getString("addr1"));
				mVo.setAddr2(rs.getString("addr2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	// 아이디 중복 체크를 위한 메소드
	public int confirm(String uid) {
		int result = -1;
		String sql = "select uid from member where uid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1; // 아이디가 존재할 때
			} else {
				result = -1; // 아이디가 존재하지 않을 때
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 회원 가입 메서드
	public int insertMember(MemberVO mvo) {
		int result = -1;
		String sql = "insert into member values(?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getUid());
			pstmt.setString(2, mvo.getPwd());
			pstmt.setString(3, mvo.getMemName());
			pstmt.setString(4, mvo.getPhone());
			pstmt.setString(5, mvo.getEmail());
			pstmt.setString(6, mvo.getAddr1());
			pstmt.setString(7, mvo.getAddr2());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 회원 정보 수정 메소드
	public int updateMember(MemberVO mvo) {
		int result = -1;
		String sql = "update member set pwd=?, phone=?, email=?, addr1=?, addr2=? where uid =?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getPwd());
			pstmt.setString(2, mvo.getPhone());
			pstmt.setString(3, mvo.getEmail());
			pstmt.setString(4, mvo.getAddr1());
			pstmt.setString(5, mvo.getAddr2());
			pstmt.setString(6, mvo.getUid());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

}
