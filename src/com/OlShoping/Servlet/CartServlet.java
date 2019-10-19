package com.OlShoping.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OlShoping.doa.Cartdao;
import com.OlShoping.pojo.Cart;

import sun.security.util.Length;



@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Cartdao cd=new Cartdao();
	
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session=request.getSession();
	String action=request.getParameter("action");
	
	String uname=(String)session.getAttribute("userName");
	
	
	if(action!=null&&action.equals("cart"))
	{
		int pid=Integer.parseInt(request.getParameter("pid"));
		 boolean b=cd.AddToCart(pid,uname );
		 if(b) {
		request.setAttribute("Smsg", "Product added successfully.");
		RequestDispatcher rd=request.getRequestDispatcher("indexPage.jsp");
	rd.include(request, response);
		 }
	}
	else if(action!=null&& action.equals("deleteCart"))
	{
		int cid=Integer.parseInt(request.getParameter("cid"));
		boolean b=cd.DeleteCart(cid);
		if(b)
		{
			response.sendRedirect("CartServlet");
		}
	}
	else
	{
		List<Cart> li=cd.GetList(uname);
		
		session.setAttribute("CartList", li);
		response.sendRedirect("CartList.jsp");
	}
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String[] pname=request.getParameterValues("Pname");
		String[] Pprice=request.getParameterValues("Price");
		String[] PQty=request.getParameterValues("qyt");
		double TotalBill=0;
	for(int i=0;i<pname.length;i++)
	
			TotalBill=TotalBill+(Integer.parseInt(PQty[i])*Double.parseDouble(Pprice[i]));	
	
	session.setAttribute("pname", pname);
	session.setAttribute("Pprice", Pprice);
	session.setAttribute("PQty", PQty);
	session.setAttribute("TotalBill", TotalBill);
	response.sendRedirect("OrderPage.jsp");
	
	

}
}