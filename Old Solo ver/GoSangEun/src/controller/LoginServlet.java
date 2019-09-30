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
 * Servlet implementation class login
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");

		String USER_ID = request.getParameter("USER_ID");
		String USER_PASSWORD = request.getParameter("USER_PASSWORD");

		Member m = new Member(USER_ID, USER_PASSWORD);
		System.out.println("m controller : " + m);

		MemberService ms = new MemberService();

		m = ms.loginMember(m);

		System.out.println("m result : " + m);

		if (m != null) {
			// 로그인 성공!!
			System.out.println("로그인 성공 : " + m);

			RequestDispatcher view = request.getRequestDispatcher("index.jsp");

			// 로그인 정보 유지하기
			HttpSession session = request.getSession();

			session.setAttribute("member", m);

			view.forward(request, response);

		} else {
			System.out.println("로그인 실패");

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