
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.OlShoping.doa.productDao"%>
<%@page import="com.OlShoping.pojo.product"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="Resources/css/bootstrap1.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="Resources/css/homepage.css" rel="stylesheet">

</head>

<body>
	<%
		String msg = (String) request.getAttribute("Smsg");
		if (msg != null) {
	%>
	<h2 align="center" style="color: red;"><%=msg%></h2>
	<%
		}
	%>
	<%
		String uname = (String) session.getAttribute("userName");
		String admin = (String) session.getAttribute("adminName");
	%>
	<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<form action="productServlet" method="post">
		<input type="hidden" name="action" value="SearchProduct">

		<table align="center">
			<tr>
				<td><input type="text" name="searchProduct"></td>
				<td><input type="submit" value="search Product"></td>
			</tr>

		</table>
	</form>
	<br>
	<br>
	<br>

	<!-- Page Content -->
	<div class="container">

		<div class="row">







			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
				<%-- <jsp:include page="SliderBar.jsp"></jsp:include> --%>


				<div class="row">

					<%
						productDao pd = new productDao();
						String ps = (String) request.getAttribute("ps");
						List<product> li = null;
						if (ps != null) {

							li = (List<product>) session.getAttribute("Search");
						} else {

							li = pd.getlist();
						}

						for (product p : li) {
					%>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="Resources/images/<%=p.getProductname()%>.jpg" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#"><%=p.getProductname()%></a>
								</h4>
								<h5><%=p.getProductprice()%>RS.
								</h5>
								<p class="card-text"><%=p.getProductdescription()%></p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small><br>

								<%
									if (uname == null && admin == null) {
								%>
								<a href="Login.jsp">ADD To Cart</a>
								<%
									}
								%>
								<%
									if (uname != null) {
								%>
								<a href="CartServlet?action=cart&pid=<%=p.getPid()%>">ADD To
									Cart</a>
								<%
									}
								%>
								<%
									if (admin != null) {
								%>
								<a href="#"><button>Delete</button></a> <a href="#"><button>Edit</button></a>
								<%
									}
								%>
							</div>
						</div>
					</div>
					<%
						}
					%>


				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="Resources/java script/bootstrap1.bundle.min.js"></script>
	<script src="Resources/java script/jquery.slim.min.js"></script>

</body>

</html>
