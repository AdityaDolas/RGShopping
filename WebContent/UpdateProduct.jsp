<%@page import="com.OlShoping.pojo.product"%>
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

<%product p=(product)session.getAttribute("pa"); 
%>

<form action="productServlet" method="post">
<input type="hidden" name="action" value="UpdateProduct">

<h3 align="center">PRODUCT INFORMATION</h3>
<table cellpadding="10" cellspacing="10" border="2" align="center">

<tr>
<td>Product name:</td>
<td><input type="text" name="pid" value="<%=p.getPid()%>" readonly="readonly"></td>
</tr>
<tr>
<td>Product name:</td>
<td><input type="text" name="prodname" value="<%=p.getProductname()%>"></td>
</tr>
<tr>
<td>category:</td>
<td><select name="category">
<option value=<%=p.getProductcatagory() %>><%=p.getProductcatagory() %></option>

<option value="jewellery">Jewellery</option>
<option value="clothes">Clothes</option>
<option value="beauty">Beauty</option>
<option value="gifts">Gifts</option>
<option value="footwear">Footwear</option>
</select>
</td>
</tr>

<tr>
<td>quantity:</td>
<td><input type="text" name="prodqty" value="<%=p.getProductquantity() %>"></td>
</tr>

<tr>
<td>Product price:</td>
<td><input type="text" name="prodprice" value="<%=p.getProductprice() %>"></td>
</tr>

<tr>
<td>Product Description:</td>
<td><input type="text" name="proddes" value=<%=p.getProductdescription() %>></td>
</tr >

<tr ><td ><input type="submit" value="SAVE" align="middle"></td>
<td><input type="submit" value="EDIT" align="middle"></td>
</tr>
</table>

</form>
</body>
</html>