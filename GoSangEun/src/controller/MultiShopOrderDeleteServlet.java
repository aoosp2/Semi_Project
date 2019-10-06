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
import model.vo.ShopOrder;

/**
 * Servlet implementation class MultiShopOrderDeleteServlet
 */
@WebServlet("/MultiDelete.s")
public class MultiShopOrderDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MultiShopOrderDeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("MultiUserId");
		String URL = request.getParameter("URL");
		HttpSession session = request.getSession();

		if (userId == null) {
			int result = new ShopService().deleteShopOrder();

			if (result > 0) {
				System.out.println("비회원 장바구니 전체 삭제 성공");
				ArrayList<ShopOrder> nSo = new ShopService().selectShopOrderList();
				session.setAttribute("NonShopOrder", nSo);
			} else {
				System.out.println("비회원 장바구니 전체 삭제 실패");
			}
			
		} else {
			int result = new ShopService().deleteShopOrder(userId);
			
			if (result > 0) {
				System.out.println("회원 장바구니 전체 삭제 성공");
				ArrayList<ShopOrder> So = new ShopService().selectShopOrderList(userId);
				session.setAttribute("ShopOrder", So);
			} else {
				System.out.println("회원 장바구니 전체 삭제 실패");
			}

		}

		response.sendRedirect(URL);

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
