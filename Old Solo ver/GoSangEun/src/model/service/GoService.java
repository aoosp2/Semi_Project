package model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import model.dao.GoDao;
import model.vo.ShopOrder;

/**
 * 그 외 Service
 * @author heera
 *
 */
public class GoService {
   
   private GoDao gDao = new GoDao();

   public int insertOrder(ShopOrder sod) {
      Connection con = getConnection();
      
      int result = gDao.insertOrder(con, sod);
      
      if(result > 0) commit(con);
      else rollback(con);
      
      return result;
   }

   
}