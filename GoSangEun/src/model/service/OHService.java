package model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import model.dao.OHDao;
import model.vo.OrderHistory;

public class OHService {

	private Connection con = null;
	private OHDao ohDao = new OHDao();
	
	
	public ArrayList<OrderHistory> selectList(String userId) {
		con = getConnection();
		
		ArrayList<OrderHistory> list = ohDao.selectList(con, userId);
		
		close(con);
		
		return list;
	}



}
