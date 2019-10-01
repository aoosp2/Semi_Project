package model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import model.vo.ShopOrder;
import static common.JDBCTemplate.*;


/**
 * 
 * 그 외 Dao
 * @author heera
 *
 */
public class GoDao {

   private Properties prop;
   
   public GoDao() {
      
      prop = new Properties();
      
      String filePath = GoDao.class.getResource("/config/go-query.properties").getPath();
      
      try {
         prop.load(new FileReader(filePath));
      }
      catch(IOException e) {
         e.printStackTrace();
      }
   }

   public int insertOrder(Connection con, ShopOrder sod) {
int result = 0;
      
      PreparedStatement pstmt = null;
      String sql = prop.getProperty("insertOrder");
      
      try {
         pstmt.setInt(1, sod.getOrderId());
         pstmt.setInt(2, sod.getShopId());
         pstmt.setString(3, sod.getUserId());
         pstmt.setInt(4, sod.getMenuNo());
         pstmt.setInt(5, sod.getOrderCount());
         pstmt.setInt(6, sod.getOrderSum());
         pstmt.setString(7, sod.getOrderInfo());
         pstmt.setString(8, sod.getOrderAddr());
         
      }catch(SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      return result;
   
   }
}