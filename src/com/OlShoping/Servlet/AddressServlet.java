package com.OlShoping.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.OlShoping.doa.AddreessDao;
import com.OlShoping.pojo.Address;


@WebServlet("/AddressServlet")
public class AddressServlet extends HttpServlet {
	Address a=new Address();
	AddreessDao ad=new AddreessDao();
	private static final long serialVersionUID = 1L;




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session=request.getSession();
		String action=request.getParameter("action");
		if(action!=null && action.equals("edit"))
		{
			String de=request.getParameter("emailid");
			Address b=ad.GetAddressId(Integer.parseInt(de));
			session.setAttribute("u", b);
			response.sendRedirect("UpdateAddress.jsp");
	
			
		}
		else if(action!=null && action.equals("delet"))
		{
			String da=request.getParameter("emailid");
			boolean b=ad.DeleteAddressByAddId(Integer.parseInt(da));
			if(b)
			{
				response.sendRedirect("AddressServlet");	
			}

		}
		else {
			List<Address> li=ad.getlist();
			session.setAttribute("Alist", li);
			response.sendRedirect("AddressList.jsp");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String action=request.getParameter("action");

		String Uname=(String)session.getAttribute("userName");	
		String street=request.getParameter("street");
		String Bnum=request.getParameter("Bnum");
		String location=request.getParameter("location");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		a.setStreet(street);
		a.setBnum(Bnum);
		a.setLocation(location);
		a.setCity(city);
		a.setState(state);
		a.setPincode(pincode);
		a.setEmailId(Uname);

		if(action!=null && action.equals("AddressPage"))
		{
			boolean b=ad.AddAddress(a);
			if(b)
			{
				response.sendRedirect("Payment.jsp");
			}
		}
		else if(action!=null && action.equals("UpdateAddressPage"))
		{
			int aid=Integer.parseInt(request.getParameter("aid"));
			a.setAddId(aid);
			boolean b=ad.UpdateAddressById(a);
			if(b)
			{
				
				Address b1=ad.GetAddressId(aid);
				session.setAttribute("u", b1);
				response.sendRedirect("Payment.jsp");
			}
		}




	}

}
