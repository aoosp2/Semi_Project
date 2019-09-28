package model.service;

import java.sql.Connection;

import model.dao.MemberDao;
import model.vo.Member;

import static common.JDBCTemplate.*;

public class MemberService {

	private Connection con;
	private MemberDao mDao = new MemberDao();

	public int insertMember(Member m) {
		Connection con = getConnection();

		int result = mDao.insertMember(con, m);

		if (result >= 1)
			commit(con);
		else
			rollback(con);

		close(con);
		return result;
	}

	public Member loginMember(Member m) {
		con = getConnection();

		Member result = mDao.selectMember(con, m);

		System.out.println("m service : " + m);

		close(con);

		return result;

	}

	public Member lostId(Member m) {
		con = getConnection();

		Member result = mDao.lostId(con, m);

		System.out.println("id 찾기 service : " + m);

		close(con);

		return result;
	}

	public int updateMember(Member m) {
		con = getConnection();

		int result = mDao.updateMember(con, m);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		close(con);

		return result;
	}

}