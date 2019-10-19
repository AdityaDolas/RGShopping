<%@page import="java.util.List"%>
<%@page import="com.OlShoping.doa.productDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Page Content Sider Bar -->
	<div class="col-lg-3">
		<%List<String> li=new productDao().GetCatagory(); %>
		<h1 class="my-4">Shop Name</h1>
		<div class="list-group">
			<%for(String c:li){ %>

			<a href="productServlet?action=SearchProduct&category=<%=c %>" class="list-group-item"> <%=c %>
			</a>
			<%} %>
		</div>

	</div>
</body>
</html>