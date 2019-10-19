<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%String Uname=(String)session.getAttribute("userName");
String Admin=(String)session.getAttribute("adminName");%>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Online Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">

				<li class="nav-item active"><a class="nav-link"
					href="indexPage.jsp">Home <span class="sr-only">(current)</span>
				</a></li>


			

				<li class="nav-item"><a class="nav-link" href="#">About</a></li>


				<%if(Uname!=null && Admin==null) {%>
				<li class="nav-item"><a class="nav-link" href="CartServlet">CartList</a>
				</li>
			
					<li class="nav-item"><a class="nav-link" href="SearchProduct.jsp">SearchProduct
						</a></li>
				<%} %>
				<%if(Uname==null && Admin!=null) {%>
				<li class="nav-item"><a class="nav-link" href="user">User
						List</a></li>
			
				<li class="nav-item"><a class="nav-link" href="productServlet">Product
						List</a></li>
							<li class="nav-item"><a class="nav-link"
					href="ProductDetails.jsp">Product Details</a></li>
				<%} %>
				<%if(Uname!=null || Admin!=null) {%>


				<li class="nav-item"><a class="nav-link" href="LoginServlet">Log
						Out</a></li>
				<%} %>
				<%if(Uname==null && Admin==null) {%>
				<li class="nav-item"><a class="nav-link"
					href="registration.jsp">Registration</a></li>
						<li class="nav-item active"><a class="nav-link"
					href="Login.jsp">Login <span class="sr-only">(current)</span>
				</a></li>
				<%} %>
			</ul>
		</div>
	</div>
	</nav>

</body>
</html>