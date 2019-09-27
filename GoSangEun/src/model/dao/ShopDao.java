package model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static common.JDBCTemplate.*;
import model.vo.Shop;
import model.vo.ShopMenu;

/**
 * 
 * 식당리스트 , 식당상세페이지 부분 Dao
 * @author heera
 *
 */
public class ShopDao {

	private Properties prop;
	
	public ShopDao() {
		
		prop = new Properties();
		
		String filePath = ShopDao.class.getResource("/config/shop-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}

	public Shop selectShop(Connection con, int shopId) {
		Shop s = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectShop");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, shopId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				s = new Shop();
				
				s.setShopId(shopId);
				s.setCategoryId(rset.getString("CATEGORY_CODE"));
				s.setShopName(rset.getString("SHOP_NAME"));
				s.setShopLogo(rset.getString("SHOP_LOGO"));
				s.setShopPhone(rset.getString("SHOP_PHONE"));
				s.setShopTime(rset.getString("SHOP_TIME"));
				s.setShopInfo(rset.getString("SHOP_INFO"));
				s.setShopAddr(rset.getString("SHOP_ADDRESS"));
				s.setPoint(rset.getInt("SHOP_POINT"));
				s.setMinPrice(rset.getInt("SHOP_PRICE"));
				s.setDvTime(rset.getInt("SHOP_DVTIME"));
				s.setDvPrice(rset.getInt("SHOP_DVPRICE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return s;
	}

	public ArrayList<ShopMenu> selectShopMenu(Connection con, int shopId) {
		ShopMenu sm = null;
		ArrayList<ShopMenu> list = new ArrayList<ShopMenu>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectShopMenu");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, shopId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sm = new ShopMenu();
				
				sm.setNo(rset.getInt("MENU_NO"));
				sm.setShopId(shopId);
				sm.setCode(rset.getString("MENU_CODE"));
				sm.setName(rset.getString("MENU_NAME"));
				sm.setPrice(rset.getInt("MENU_PRICE"));
				sm.setInfo(rset.getString("MENU_INFO"));
				
				list.add(sm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}
}
