package model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import model.vo.OrderHistory;

public class OHDao {

	private Properties prop;
	
	public OHDao() {

		prop = new Properties();

		String filePath = OHDao.class.getResource("/config/orderhistory.properties").getPath();

		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<OrderHistory> selectList(Connection con, String userId) {
		ArrayList<OrderHistory> list = new ArrayList<OrderHistory>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectOHList");

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				OrderHistory oh = new OrderHistory();
				
				oh.setOrdergroup(rset.getInt("ORDER_GROUP"));
				oh.setOrderno(rset.getInt("ORDER_NO"));
				oh.setShopid(rset.getInt("SHOP_ID"));
				oh.setUserId(userId);
				oh.setMenuNo(rset.getInt("MENU_NO"));
				oh.setOrderCount(rset.getInt("ORDER_COUNT"));
				oh.setOrderSum(rset.getInt("ORDER_SUM"));
				oh.setOrderInfo(rset.getString("ORDER_INFO"));
				oh.setOrderDate(rset.getDate("ORDER_DATE"));
				oh.setDvAddress(rset.getString("DV_ADDRESS"));
				oh.setMenuName(rset.getString("MENU_NAME"));
				oh.setMenuPrice(rset.getInt("MENU_PRICE"));
				oh.setShopDvPrice(rset.getInt("SHOP_DVPRICE"));
				oh.setShopName(rset.getString("SHOP_NAME"));
				oh.setShopLogo(rset.getString("SHOP_LOGO"));
				oh.setMenuCode(rset.getString("MENU_CODE"));
				
				list.add(oh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}
}
