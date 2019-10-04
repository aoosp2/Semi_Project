package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.MemberService;
import model.service.ShopService;
import model.vo.Member;
import model.vo.ShopOrder;

/**
 * Servlet implementation class ShopOrderDeleteServlet
 */
@WebServlet("/OrderDelete.s")
public class ShopOrderDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShopOrderDeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int orderNo = Integer.parseInt(request.getParameter("orderNo"));
		String uri = request.getParameter("reURI");
		String userId = request.getParameter("USER_ID");
		HttpSession session = request.getSession();

		int result = new ShopService().deleteShopOrder(orderNo);
		ArrayList<ShopOrder> so = new ShopService().selectShopOrderList(userId);

		if (result > 0) {
			System.out.println("선택한 메뉴 삭제 성공!");
			session.setAttribute("ShopOrder", so);
		} else {
			System.out.println("선택한 메뉴 삭제 실패!");
		}

		response.sendRedirect(uri);
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
