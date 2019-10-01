package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.MemberService;
import model.vo.Member;

/**
 * Servlet implementation class MemberUpdate
 */
@WebServlet("/memberUpdate")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateMemberServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 회원 정보 수정용 데이터 불러오기
		String USER_NICKNAME = request.getParameter("USER_NICKNAME");
		String USER_PASSWORD = request.getParameter("USER_PASSWORD");
		String USER_PHONE = request.getParameter("USER_PHONE");
		String USER_EMAIL = request.getParameter("USER_EMAIL");
		String USER_ADDRESS = request.getParameter("USER_ADDRESS");

		// 해당 회원을 구분짓는 ID 받아오기
		HttpSession session = request.getSession(false);

		Member m = (Member) session.getAttribute("member");

		m.setUSER_NICKNAME(USER_NICKNAME);
		m.setUSER_PASSWORD(USER_PASSWORD);
		m.setUSER_PHONE(USER_PHONE);
		m.setUSER_EMAIL(USER_EMAIL);
		m.setUSER_ADDRESS(USER_ADDRESS);


		System.out.println("변경한 회원 정보 확인: " + m);

		MemberService ms = new MemberService();

		if (ms.updateMember(m) > 0) {
			// 회원 정보 수정 성공!

			System.out.println("회원 정보 수정 완료!");

			session.invalidate();

			RequestDispatcher view = request.getRequestDispatcher("views/login.jsp");

			view.forward(request, response);
		} else {
			// 회원 정보 수정 실패!
			response.sendRedirect("views/common/errorPage.jsp");
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
