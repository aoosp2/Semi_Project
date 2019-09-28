package model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import model.vo.Member;

import static common.JDBCTemplate.*;

public class MemberDao {

	private Properties prop;

	public MemberDao() {
		prop = new Properties();

		String filePath = MemberDao.class.getResource("/config/query.properties").getPath();

		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertMember(Connection con, Member m) {

		int result = 0;
		String sql = prop.getProperty("insertMembernocard");
		PreparedStatement pstmt = null;

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, m.getUSER_ID());
			pstmt.setString(2, m.getUSER_NAME());
			pstmt.setString(3, m.getUSER_NICKNAME());
			pstmt.setString(4, m.getUSER_PASSWORD());
			pstmt.setString(5, m.getUSER_PHONE());
			pstmt.setString(6, m.getUSER_EMAIL());
			pstmt.setString(7, m.getUSER_ADDRESS());
			
			result = pstmt.executeUpdate();

			System.out.println("생성된 쿼리 확인 : " + sql);

			if (result > 0)
				con.commit();
			else
				con.rollback();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Member selectMember(Connection con, Member m) {

		Member result = null; // 결과를 담을 객체
		PreparedStatement pstmt = null;
		ResultSet rset = null; // Select의 결과를 담은 객체

		String sql = prop.getProperty("login");

		System.out.println("m dao : " + m);

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, m.getUSER_ID());
			pstmt.setString(2, m.getUSER_PASSWORD());

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = new Member();

				result.setUSER_ID(rset.getString("USER_ID"));
				result.setUSER_PASSWORD(rset.getString("USER_PASSWORD"));

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println("dao result :" + result);

		return result;
	}

	public Member lostId(Connection con, Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;

		try {

			String sql = "UPDATE MEMBER" + " USER_NICKNAME = ?" + ", USER_PASSWORD = ?" + ", USER_PHONE = ?"
					+ ", USER_EMAIL = ?" + ", USER_ADDRESS = ?" + " WHERE USER_ID = ?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, m.getUSER_NICKNAME());
			pstmt.setString(2, m.getUSER_PASSWORD());
			pstmt.setString(3, m.getUSER_PHONE());
			pstmt.setString(4, m.getUSER_EMAIL());
			pstmt.setString(5, m.getUSER_ADDRESS());
			pstmt.setString(6, m.getUSER_ID());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(pstmt);
		}

		return result;
	}
}
