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
</head>
<%String Uname=(String)session.getAttribute("userName");%>

<body>
<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<br>
	<br>
	<form action="AddressServlet" method="post">
	<input type="hidden" name="action" value="AddressPage">
<h1 align="center" style="font-style: !important;" >ADD NEW ADDRESS</h1>
<br>
<table cellpadding="20" cellspacing="20" border="4" align="center">
<tr>
<td>Email Id:</td>
<td><input type="text" name="email" value="<%=Uname %>" readonly="readonly">
</td>
</tr>
<tr>
<td>Street:</td>
<td><input type="text" name="street" required>
</td>
</tr>
<tr>
<td>Building Number:</td>
<td><input type="text" name="Bnum" required>
</td>
</tr>
<tr>
<td>Location/Town:</td>
<td><input type="text" name="location" required>
</td>
</tr>
<tr>
<td>City/District:</td>
<td><input type="text" name="city" required>
</td>
</tr>
<tr>
<td>State:</td>
<td><input type="text" name="state" required>
</td>
</tr>
<tr>
<td>Pin Code:</td>
<td><input type="text" name="pincode" required>
</td>
</tr>
<tr>
<td align="center" colspan="2"><input type="submit" value="Payment" ></td>
</tr>
</table>
</form>
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