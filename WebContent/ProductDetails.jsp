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
	<br><br><br>

<form action="productServlet" method=post>
<input type="hidden" name="action" value="addProduct">

<h3 align="center">PRODUCT INFORMATION</h3>
<br><br>
<table cellpadding="20" cellspacing="20" border="4" align="center">
<tr>
<td>Product name:</td>
<td><input type="text" name="prodname" required></td>
</tr>
<tr>
<td>category:</td>
<td><select name="category" required>
<option value="jewelary">Jewellary</option>
<option value="clothes">Clothes</option>
<option value="beauty">Beauty</option>
<option value="footwear">Footwear</option>
</select>
</td>
</tr>

<tr>
<td>quantity:</td>
<td><input type="text" name="prodqty" required></td>
</tr>

<tr>
<td>Product price:</td>
<td><input type="text" name="prodprice" required></td>
</tr>

<tr>
<td>Product Description:</td>
<td><input type="text" name="proddes" required></td>
</tr >

<tr ><td ><input type="submit" value="SAVE" align="middle"></td>
<td><input type="submit" value="EDIT" align="middle"></td>
</tr>
</table>

</form>

<br><br><br>
		

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
</body>
</html>