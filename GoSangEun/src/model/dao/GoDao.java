package model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;



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
}
