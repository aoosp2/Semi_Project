package model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import model.dao.GoDao;
import model.vo.Kakao;
import model.vo.ShopOrder;

/**
 * 그 외 Service
 * 
 * @author heera
 *
 */
public class GoService {

	private GoDao gDao = new GoDao();

	public ArrayList<ShopOrder> selectMemberCart(String userId) {

		Connection con = getConnection();

		ArrayList<ShopOrder> soList = new GoDao().selectMemberCart(con, userId);

		close(con);

		return soList;
	}

//(so,userId,orderInfo,addr,pay);
	public int updateOrder(String userId, String orderInfo, String addr) {

		Connection con = getConnection();

		int result = new GoDao().updateOrder(con, userId, orderInfo, addr);
		System.out.println("GoServlet : " + result);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		close(con);

		return result;
	}

}