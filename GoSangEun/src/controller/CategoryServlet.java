package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.service.ShopService;
import model.vo.Shop;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/category.go")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		System.out.println("category : " + category);
		System.out.println("cateCode : " + cateCode);
		ShopService ss = new ShopService();
		String page = "";
		
		
		ArrayList<Shop> shopList = ss.selectShopList(cateCode);
	
		if(shopList != null) {
			System.out.println("Servlet shopList : " + shopList);
			page = "shopList.jsp";
			request.setAttribute("shopList", shopList);
			
		}
		else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "식당리스트 불러오기 실패");
			
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
