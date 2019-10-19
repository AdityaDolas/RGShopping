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
<br><br><br>
<script type="text/javascript">
function RegisterRedirect(){
	window.location.href="registration.jsp";
}

</script>
<body>

<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
	
<%String smg=(String)request.getAttribute("lmsg");
if(smg!=null){%>
<h2>
<%=smg%></h2>
<%} %>
<form action="LoginServlet" method="post">

<table cellpadding="20" cellspacing="20" border="4" align="center">

<tr>
<td>User Name:</td>
<td><input type="text" name="uname" required></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="password" name="pass" required></td>
</tr>

<tr >
<td colspan="2" align="center"><input type="submit" value="Login" ></td>
</tr>

</table>
<br><br><br>
<center><button type="button" onclick="RegisterRedirect()" >Register Here</button></center>

</form>
</body>
</html>