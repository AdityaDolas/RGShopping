package com.OlShoping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OlShoping.doa.productDao;
import com.OlShoping.pojo.product;


@WebServlet("/productServlet")
public class productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	product p=new product();
	productDao pd=new productDao();



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String action=request.getParameter("action");
		if(action!=null&&action.equals("delete"))
		{

			int id=Integer.parseInt(request.getParameter("Pid")) ;
			boolean b=pd.deleteProduct(id);
			if(b)
			{
				response.sendRedirect("productServlet");	
			}

		}
		else if(action!=null && action.equals("edit"))
		{
			int id=Integer.parseInt(request.getParameter("Pid"));

			product p=pd.getproductById(id);
		
			session.setAttribute("pa", p);
			response.sendRedirect("UpdateProduct.jsp");
		}
		else if (action!=null && action.equals("SearchProduct"))
        {
			String category=request.getParameter("category");
			List<product> li=pd.GetProductByCategory(category);
			session.setAttribute("clist", li);
			request.setAttribute("cl", "cl");
			RequestDispatcher rd=request.getRequestDispatcher("indexPage.jsp");
		rd.forward(request, response);
			
			
			
		}

		else 
		{
			List<product>li=pd.getlist();
			session.setAttribute("plist",li);
			response.sendRedirect("ProductList.jsp");
			
		}


	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		String name=request.getParameter("prodname"); 
		String category=request.getParameter("category");
		String quantity=request.getParameter("prodqty");
		String price=request.getParameter("prodprice");
		String description=request.getParameter("proddes");

		p.setProductname(name);
		p.setProductcatagory(category);
		p.setProductquantity(quantity);
		p.setProductprice(price);
		p.setProductdescription(description);

		if (action !=null && action.equals("addProduct"))
		{
			boolean b=pd.addproduct(p);


			if(b)
			{
				response.sendRedirect("Success.jsp");
			}
			else
			{
				response.sendRedirect("Error.jsp");
			}


		}	

		else if (action !=null && action.equals("UpdateProduct")) {
			int id=Integer.parseInt(request.getParameter("pid")) ;
			p.setPid(id);
			boolean b=pd.editProduct(p);
			
			if(b)
			{
				response.sendRedirect("productServlet");
			}
		}
		else if(action !=null && action.equals("SearchProduct"))
		{
			String searchProduct=request.getParameter("searchProduct");
			System.out.println(searchProduct);
			List<product> li=pd.GetSearchProduct(searchProduct);
			System.out.println(li);
			HttpSession session=request.getSession();
			session.setAttribute("Search", li);
			request.setAttribute("ps", "ps");
			RequestDispatcher rd=request.getRequestDispatcher("SearchProduct.jsp");
			rd.forward(request, response);
		}


	}

}
