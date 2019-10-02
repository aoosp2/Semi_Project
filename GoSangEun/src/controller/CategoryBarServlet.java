package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.service.ShopService;
import model.vo.Shop;

/**
 * Servlet implementation class CategoryBarServlet
 */
@WebServlet("/cBar.go")
public class CategoryBarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryBarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json; charset = UTF-8");
		
		String category = request.getParameter("category");
		String cateCode = "";
		
		switch(category) {
		case "한식" : cateCode = "KO";
					 break;
		case "중식" : cateCode = "CH";
					 break;
		case "족발" : cateCode = "ZOK";
		 			 break;
		case "치킨" : cateCode = "CK";
		 			 break;
		case "피자" : cateCode = "PZ";
		 			 break;
		case "즐찾" : cateCode = ""; // 즐겨찾기는 더 생각해보깅
		 			 break;
		
		}
		
		System.out.println("cBar category : " + category);
		System.out.println("cBar cateCode : " + cateCode);
		
		ShopService ss = new ShopService();
				
		ArrayList<Shop> shopList = ss.selectShopList(cateCode);

		new Gson().toJson(shopList, response.getWriter());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
