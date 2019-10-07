package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.GoService;
import model.service.MemberService;
import model.service.ShopService;
import model.vo.Member;
import model.vo.ShopOrder;


/**
 * Servlet implementation class InsertOrderServlet
 */
@WebServlet("/oUpdate.go")
public class UpdateOrderServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateOrderServlet() {
        super();
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  HttpSession session = request.getSession(false);
      
	  System.out.println("카카오 또는 현금 결제 성공!");
	  
	  
	  
	  Member m = (Member)session.getAttribute("member");
	  
	  // soList nullpoint해결하기
	  ArrayList<ShopOrder> soList = (ArrayList<ShopOrder>)session.getAttribute("soList");
	  ArrayList<ShopOrder> noList = (ArrayList<ShopOrder>)session.getAttribute("noList");

	  ArrayList<ShopOrder> slist = null;
	  ArrayList<ShopOrder> nlist = null;
	  
	 
	  String userId = "";
	  String userPWD = "";
	  System.out.println("userID : "+userId);
	  int totalPrice = 0;
	  if(m != null) {
		
		  
		 
		  for(int i = 0; i < soList.size() ; i++) {
			  totalPrice += soList.get(i).getOrderSum();
		  }
		  totalPrice += soList.get(0).getDvPrice();
	  }
	  else {
		 
		  for(int i = 0; i < noList.size() ; i++) {
			  totalPrice += noList.get(i).getOrderSum();
		  }
		  totalPrice += noList.get(0).getDvPrice();
	  }
   
	  String phone = request.getParameter("phone");	  
	  String addr = request.getParameter("addr");
	  String orderInfo = request.getParameter("textrequest");
	  String pay = request.getParameter("pay");
	  
	  request.setAttribute("pay", pay);
	  System.out.println("UpdateOrder 서블릿 !");
	  System.out.println("phone : " + phone);
	  System.out.println("totalPrice : " + totalPrice);
	  System.out.println("addr : " + addr);
	  System.out.println("orderInfo : " + orderInfo);
	  System.out.println("pay : " + pay);

	  // Service,dao pay 추가!!!!!!!!!
	  int result = 0;
	  if(m != null) {
		  userId = m.getUSER_ID();
		  userPWD = m.getUSER_PASSWORD();
		  result = new GoService().updateOrder(userId,orderInfo,addr);
	  }
	  else {
		  result = new ShopService().updateNoOrder(orderInfo,addr,phone);
	  }
	  System.out.println("결제완료 result : "+result);
	  
	  if(result > 0) {
		  slist = new ShopService().selectShopOrderList(userId);
		  session.setAttribute("ShopOrder", slist);
		  nlist = new ShopService().selectShopOrderList();
		  session.setAttribute("NonShopOrder", nlist);
		  m = new Member(userId, userPWD);
	         
	      m = new MemberService().loginMember(m);
	      System.out.println("새로운 멤버 : " + m);
		  session.setAttribute("member", m);
		  
		  request.getRequestDispatcher("ordercompt.jsp").forward(request, response);
	  }else {
		  request.setAttribute("msg", "주문 완료 실패");
		  request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
	  }
	  
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}