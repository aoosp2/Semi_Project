package model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

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
		
		String filePath = GoDao.class.getResource("/config/go-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}
}
