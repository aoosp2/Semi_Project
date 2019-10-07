package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.OHService;
import model.vo.Member;
import model.vo.OrderHistory;

/**
 * Servlet implementation class OrderHistoryListServlet
 */
@WebServlet("/ohList.go")
public class OrderHistoryListServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public OrderHistoryListServlet() {
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
      String userId = m.getUSER_ID();
      ArrayList<OrderHistory> list = new OHService().selectList(userId);

      String page = "";
      
      if(list != null) {
         session.setAttribute("OHList", list);
         System.out.println("OHList 테스트" + list);
         page = "MyPage.jsp";
      } else {
         System.out.println("불러오기 실패!!!");
      }
            
      request.getRequestDispatcher(page).forward(request, response);

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