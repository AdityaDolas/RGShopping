<%@page import="java.util.ArrayList"%>
<%@page import="com.OlShoping.doa.AddreessDao"%>
<%@page import="com.OlShoping.pojo.Address"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
       <!-- Bootstrap core CSS -->
<link href="Resources/css/bootstrap1.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="Resources/css/homepage.css" rel="stylesheet">
<br><br><br>
</head>
<%
	String Uname = (String) session.getAttribute("userName");
%>
<body>
<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<%
		List<Address> li = new AddreessDao().GetAddressListByEmail(Uname);
	%>
	<div class="container">
  <div class="row">
    <div class="col-sm">
     <br>
    </div>
    <div class="col-sm" align="center">
       <button style="position: absolute;" width="4">
			<a href="AddressPage.jsp" style="color: purple; size:"20" shape="circle">ADD NEW ADDRESS</a>
		</button>
    </div>
    <div class="col-sm">
      <br>
    </div>
  </div>
</div>
	<div align="left" class="container-fluid">
		<br>
	</div>

	<br>
	<table align="center" cellpadding="10" cellspacing="10" border="2">


		<tr>
			<th>STREET</th>
			<th>BUILDINGNUMBER</th>
			<th>LOCATION</th>
			<th>CITY</th>
			<th>STATE</th>
			<th>PINCODE</th>
			<th>EMAILID</th>
			<th colspan="2">Action</th>
		</tr>

		<%
			for (Address a : li) {
		%>
		<tr>
			<td><%=a.getStreet()%></td>
			<td><%=a.getBnum()%></td>
			<td><%=a.getLocation()%></td>
			<td><%=a.getCity()%></td>
			<td><%=a.getState()%></td>
			<td><%=a.getPincode()%></td>
			<td><%=a.getEmailId()%>
			<td><a
				href="AddressServlet?action=delet&emailid=<%=a.getAddId()%>">delete</a></td>
			<td><a
				href="AddressServlet?action=edit&emailid=<%=a.getAddId()%>">SELECT</a></td>
		</tr>

		<%
			}
		%>
	

	</table>

	<br>
	<br>
	<br>
	<div class="col-sm" align="center" >
      <button>
		<a href="Payment.jsp" style="color: purple; size:" 20" shape="circle">PLACE
			ORDER</a>
	</button>
	 </div>
<br><br><br>
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
</html>