package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.ShopService;
import model.vo.Member;

/**
 * Servlet implementation class InsertMyShopServlet
 */
@WebServlet("/myInsert.go")
public class InsertMyShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertMyShopServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		
		Member m = (Member) session.getAttribute("member");
		
		String[] myArr = null;
		ArrayList myList = new ArrayList();
		
		int shopId = Integer.parseInt(request.getParameter("shopId"));
		System.out.println("shopId : " + shopId);
		int userId = -1;
		String myShop = "";
		System.out.println("즐겨찾기 서블릿 : " + shopId);

		if (m != null) {
			System.out.println("즐겨찾기 서블릿 : " + m);
			userId = m.getUSER_NO();
			System.out.println("즐겨찾기 서블릿 : " + userId);
			myShop = m.getMyShop();
			
			System.out.println("즐겨찾기 서블릿 : " + myShop);
			if(myShop == null) {
				m.setMyShop("");
			}
			int result = new ShopService().updateMyshop(userId, shopId ,myShop);
			if(result > 0) {
				System.out.println("즐겨찾기 update 성공!");
				m.setMyShop(m.getMyShop()+ shopId + ","  );
				response.getWriter().print("즐겨찾기 성공해써!");
				
			}
			else {
				System.out.println("즐겨찾기 update 실패!");
			}
			
			myArr = m.getMyShop().split(",");
			
			// 중복되는 shopId 일때는 즐겨찾기 목록에서 삭제
			/*for(int i = 0; i < myArr.length ; i++) {
				if(shopId == Integer.parseInt(myArr[i])) {
					
				}
			}*/
			
			
			/*for(int i = 0 ; i < myArr.length ; i++) {
				if(!myArr[i].equals("")) {
					myList.add(Integer.parseInt(myArr[i]));
				}
			}
					
			System.out.println("myList : " + myList);*/
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
