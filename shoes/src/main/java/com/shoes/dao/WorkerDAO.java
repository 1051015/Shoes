package com.shoes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBManager;

public class WorkerDAO {
	private WorkerDAO() {
	}

	private static WorkerDAO instance = new WorkerDAO();

	public static WorkerDAO getInstance() {
		return instance;
	}

	// 사용자 인증을 위한 메소드 : -1:아이디 존재 X
	// 0:아이디 존재하지만 비밀번호 불일치
	// 1:아이디와 비밀번호 모두 일치

	// 아이디를 검색 조건으로 주어서 비밀번호를 얻어온다..
	public int workerCheck(String id, String pwd) {
		String sql = "select pwd from worker where id=?";
		int result = -1;

		// DB와 연동
		Connection conn = null;
		// 쿼리문(select)을 수행하기 위한 문장 객체
		PreparedStatement pstmt = null;
		// 결과값을 저장할 ResultSet
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				// 전달인자로 준 아이디와 일치하는 행이 존재
				result = 0; // 등록된 관리자
				String dbPwd = rs.getString(1); // DB에 저장된 비밀번호
				// DB의 비밀번호와 입력한 비밀번호 일치 여부
				if (dbPwd.equals(pwd))
					result = 1; // 비밀번호 마저도 일치
			}
			DBManager.close(conn, pstmt, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
