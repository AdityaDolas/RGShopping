<%@page import="java.util.List"%>
<%@page import="com.OlShoping.pojo.user"%>
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
		List<user> li = (List<user>) session.getAttribute("ulist");
	%>
	<table cellpadding="20" cellspacing="20" border="4" align="center">
		<tr>
		<th>Name</th>
		<th>contact</th>
		<th>address</th>
		<th>email</th>
		<th>password</th>
		<th colspan="2">Action</th>
		</tr>
		<%
			for (user u : li) {
		%>
		<tr>
			<td><%=u.getName()%></td>
			<td><%=u.getContact()%></td>
			<td><%=u.getAddress()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getPass()%></td>
			<td><a href="user?action=delet&emailid=<%=u.getEmail()%>">Delete</a></td>
			<td><a href="user?action=edit&emailid=<%=u.getEmail()%>">EDIT</a></td>
		</tr>

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