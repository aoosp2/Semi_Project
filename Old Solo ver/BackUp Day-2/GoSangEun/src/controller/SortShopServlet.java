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
 * Servlet implementation class SortShopServlet
 */
@WebServlet("/sort.go")
public class SortShopServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortShopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String sort = request.getParameter("sort");
      String category = request.getParameter("category");
      
      
      String sortCol = "";
      String cateCode = "";
      
      System.out.println("정렬 기준 : " + sort);
      System.out.println("sort category : " + category);
      
      ShopService ss = new ShopService();
      
      switch(sort) {
      case "point"   : sortCol = "SHOP_POINT" ;
                   break;
      case "minPrice" : sortCol = "SHOP_PRICE" ;
                   break;
      case "dvTime"  : sortCol = "SHOP_DVTIME";
                   break;
      }
      
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
      System.out.println("sortColumn : " + sortCol);
      System.out.println("sort cateCode : " + cateCode);
      
      ArrayList<Shop> sList = ss.sortShop(sortCol , cateCode);
      
      String page = "";
      
      if(sList != null) {
         System.out.println("Servlet shopList : " + sList);
         page = "shopList.jsp";
         request.setAttribute("shopList", sList);
      }
      else {
         page = "views/common/errorPage.jsp";
         request.setAttribute("msg", "식당리스트 정렬 실패");
         System.out.println("식당리스트 정렬 실패");
         
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