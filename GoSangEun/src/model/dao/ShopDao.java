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

import model.vo.Review;
import model.vo.Shop;
import model.vo.ShopMenu;
import model.vo.ShopOrder;

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
            s.setCategoryId(rset.getString("CATEGORY_NAME"));
            s.setShopName(rset.getString("SHOP_NAME"));
            s.setShopLogo(rset.getString("SHOP_LOGO"));
            s.setShopPhone(rset.getString("SHOP_PHONE"));
            s.setShopTime(rset.getString("SHOP_TIME"));
            s.setShopInfo(rset.getString("SHOP_INFO"));
            s.setShopAddr(rset.getString("SHOP_ADDRESS"));
            s.setPoint(rset.getDouble("SHOP_POINT"));
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

   public ArrayList<Review> selectReview(Connection con, int shopId) {
      Review r = null;
      ArrayList<Review> list = new ArrayList<Review>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      String sql = prop.getProperty("selectReview");
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, shopId);
         
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            r = new Review();
            
            r.setNo(rset.getInt("REVIEW_NO"));
            r.setShopId(shopId);
            r.setUserId(rset.getString("USER_ID"));
            r.setUserName(rset.getString("USER_NAME"));
            r.setInfo(rset.getString("REVIEW_INFO"));
            r.setPoint(rset.getInt("REVIEW_POINT"));
            
            list.add(r);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return list;
   }
   
   public ArrayList<Shop> selectShopList(Connection conn, String cateCode){
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Shop> sList = new ArrayList<>();
      Shop shop = null;
      
      System.out.println("Dao category 확인 : " + cateCode);
      
      String sql = prop.getProperty("selectShopList");
      
      try {
         pstmt = conn.prepareStatement(sql);
         
         pstmt.setString(1, cateCode);
         
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            shop = new Shop();
            
            shop.setShopId(rset.getInt("SHOP_ID"));
            shop.setCategoryId(rset.getString("CATEGORY_CODE"));
            shop.setShopName(rset.getString("SHOP_NAME"));
            shop.setShopLogo(rset.getString("SHOP_LOGO"));
            shop.setShopPhone(rset.getString("SHOP_PHONE"));
            shop.setShopTime(rset.getString("SHOP_TIME"));
            shop.setShopInfo(rset.getString("SHOP_INFO"));
            shop.setShopAddr(rset.getString("SHOP_ADDRESS"));
            shop.setPoint(rset.getDouble("SHOP_POINT"));
            shop.setMinPrice(rset.getInt("SHOP_PRICE"));
            shop.setDvTime(rset.getInt("SHOP_DVTIME"));
            shop.setDvPrice(rset.getInt("SHOP_DVPRICE"));
            
            sList.add(shop);
         }
         
      }
      catch(SQLException e) {
         e.printStackTrace();
      }
      finally {
         close(rset);
         close(pstmt);
      }
      
      return sList;
   }

   public ArrayList<Shop> sortShop(Connection conn, String sortCol , String cateCode){
	      
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Shop> sList = new ArrayList<>();
	      Shop shop = null;
	      String sql = "";
	      
	      System.out.println("Dao sortColumn 확인 : " + sortCol);
	      System.out.println("Dao cateCode 확인 : " + cateCode);
	      
	      if(sortCol.equals("point")) {
	         sql = prop.getProperty("sortPoint");
	      }
	      else if(sortCol.equals("dvTime")) {
	         sql = prop.getProperty("sortDVTIME");
	      }
	      else {
	         sql = prop.getProperty("sortminPrice");
	      }
	      
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, cateCode);
	         
	         rset = pstmt.executeQuery();
	         
	         while(rset.next()) {
	            shop = new Shop();
	            
	            shop.setShopId(rset.getInt("SHOP_ID"));
	            shop.setCategoryId(rset.getString("CATEGORY_CODE"));
	            shop.setShopName(rset.getString("SHOP_NAME"));
	            shop.setShopLogo(rset.getString("SHOP_LOGO"));
	            shop.setShopPhone(rset.getString("SHOP_PHONE"));
	            shop.setShopTime(rset.getString("SHOP_TIME"));
	            shop.setShopInfo(rset.getString("SHOP_INFO"));
	            shop.setShopAddr(rset.getString("SHOP_ADDRESS"));
	            shop.setPoint(rset.getDouble("SHOP_POINT"));
	            shop.setMinPrice(rset.getInt("SHOP_PRICE"));
	            shop.setDvTime(rset.getInt("SHOP_DVTIME"));
	            shop.setDvPrice(rset.getInt("SHOP_DVPRICE"));
	            
	            sList.add(shop);
	         }
	         
	         System.out.println("dao sList" + sList);
	         
	      }
	      catch(SQLException e) {
	         e.printStackTrace();
	      }
	      finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return sList;
	      
	   }

		public int insertReview(Connection con, int shopId, String info, String userId, String userName, int point) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("insertReview");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, shopId);
				pstmt.setString(2, userId);
				pstmt.setString(3, userName);
				pstmt.setString(4, info);
				pstmt.setInt(5, point);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
		}
		
		public int updateReview(Connection con, int no, String info, int point) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("updateReview");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, info);
				pstmt.setInt(2, point);
				pstmt.setInt(3, no);
				
				result=pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
		}
		
		public int deleteReview(Connection con, int no) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("deleteReview");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, no);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
		}
		
		public int updateShopPoint(Connection con, int shopId) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("updateShopPoint");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, shopId);
				pstmt.setInt(2, shopId);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
		}
		
		public ArrayList<ShopOrder> selectShopOrderList(Connection con, String uSER_ID) {
			ArrayList<ShopOrder> list = new ArrayList<ShopOrder>();
			ShopOrder so = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectShopOrderList");
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, uSER_ID);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					so = new ShopOrder();
					
					so.setMenuName(rset.getString("MENU_NAME"));
					so.setMenuNo(rset.getInt("MENU_NO"));
					so.setOrderAddr(rset.getString("USER_ADDRESS"));
					so.setOrderCheck(rset.getString("ORDER_CHECK"));
					so.setOrderCount(rset.getInt("ORDER_COUNT"));
					so.setOrderId(rset.getInt("ORDER_NO"));
					so.setOrderInfo(rset.getString("ORDER_INFO"));
					so.setOrderSum(rset.getInt("ORDER_SUM"));
					so.setShopId(rset.getInt("SHOP_ID"));
					so.setUserId(uSER_ID);
					
					list.add(so);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
		}
		
		public int updateMyshop(Connection conn , int userId, int shopId , String myShop) {
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("updateMyshop");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, myShop);
				pstmt.setString(2,  shopId + ",");
				pstmt.setInt(3, userId);
				
				result = pstmt.executeUpdate();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				close(pstmt);
			}
			
			return result;
		
			
}

	
}