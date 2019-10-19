<%@page import="com.OlShoping.pojo.product"%>
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
<body>
<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
<%
List<product> li=(List<product>)session.getAttribute("plist");
%>
<table cellpadding="20" cellspacing="20" border="4" align="center">
<tr>
<th>Product_ID</th><th>Product_Name</th><th>Product_Category</th><th>Product_Quantity</th><th>Product_Price</th><th>Product_description</th>
<th colspan="2">Action</th>
<%for(product p:li) {%>
<tr>
<td><%=p.getPid() %></td>
<td><%=p.getProductname() %></td>
<td><%=p.getProductcatagory() %></td>
<td><%=p.getProductquantity()%></td>
<td><%=p.getProductprice() %></td>
<td><%=p.getProductdescription() %></td>
<td><a href="productServlet?action=delete&Pid=<%=p.getPid()%>">DELETE</a></td>
<td><a href="productServlet?action=edit&Pid=<%=p.getPid()%>">EDIT</a></td></tr>
<%} %>

</table>
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