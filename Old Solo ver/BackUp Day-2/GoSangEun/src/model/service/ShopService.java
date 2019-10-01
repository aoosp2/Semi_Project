package model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import model.dao.ShopDao;
import model.vo.Review;
import model.vo.Shop;
import model.vo.ShopMenu;

/**
 * 
 * 식당리스트 , 식당 상세 페이지 부분 Service
 * @author heera
 *
 */
public class ShopService {
	
	private Connection con = null;
	private ShopDao sDao = new ShopDao();

	public Shop selectShop(int shopId) {
		
		con = getConnection();
		
		Shop s = sDao.selectShop(con,shopId);
		
		close(con);
		
		return s;
	}

	public ArrayList<ShopMenu> selectShopMenu(int shopId) {
		con = getConnection();
		
		ArrayList<ShopMenu> list = sDao.selectShopMenu(con,shopId);
		
		close(con);
		
		return list;
	}

	public ArrayList<Review> selectReview(int shopId) {
		con = getConnection();
		
		ArrayList<Review> list = sDao.selectReview(con,shopId);
		
		close(con);
		
		return list;
	}

}
