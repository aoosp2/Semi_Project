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
      
	   
	  response.setContentType("application/json; charset = UTF-8");
	  
	  String sort = request.getParameter("sort");
      String category = request.getParameter("category");
      
      
      String sortCol = "";
      
      
      System.out.println("정렬 기준 : " + sort);
      System.out.println("sort category : " + category);
      
      ShopService ss = new ShopService();
      
      switch(sort) {
      case "별점"   : sortCol = "point" ;
                   break;
      case "최소 배달 금액" : sortCol = "minPrice" ;
                   break;
      case "배달 시간"  : sortCol = "dvTime";
                   break;
      }
 
      System.out.println("sortColumn : " + sortCol);
   
      
      ArrayList<Shop> sList = ss.sortShop(sortCol , category);
      
      new Gson().toJson(sList , response.getWriter());
      
      
      
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}