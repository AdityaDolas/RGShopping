
<!DOCTYPE html>
<%@page import="com.OlShoping.pojo.Address"%>
<%@page import="java.util.Date"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>Payment Receipt BS3 - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Resources/css/bootstrapBill.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    body {
    margin-top: 20px;
}    </style>
    <script src="Resources/java script/jqueryBill-1.11.1.min.js"></script>
    <script src="Resources/java script/bootstrapBill.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
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
String Pname[]=(String[])session.getAttribute("pname");
String Pprice[]=(String[])session.getAttribute("Pprice");
String PQty[]=(String[])session.getAttribute("PQty");
double TotalBill=(double)session.getAttribute("TotalBill");
Address a=(Address)session.getAttribute("u");

%>

    <div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong><%=a.getEmailId()%>
                        <br>
                        <%=a.getStreet() %>
                        <br>
                        <%=a.getLocation()%>,<%=a.getBnum() %> 
                    <br>
                        <%=a.getCity() %>
                        <br>
                       
                        <abbr title="Phone">P:</abbr> <%=a.getPincode() %>
                    </address>
                    </strong>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: <%=new Date() %></em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%for(int i=0;i<Pname.length;i++) {%> 
                        <tr>
                            <td class="col-md-9"><em><%=Pname[i] %></em></h4></td>
                            <td class="col-md-1" style="text-align: center">  <%=PQty[i] %></td>
                            <td class="col-md-1 text-center"><%=Pprice[i]%></td>
                            <td class="col-md-1 text-center"><%=Integer.parseInt(PQty[i])*Double.parseDouble(Pprice[i]) %></td>
                        </tr>
                        <%} %>
                        
                        <tr>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal:&nbsp;</strong>
                            </p>
                            <p>
                                <strong>Tax:&nbsp;</strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong><%= TotalBill%></strong>
                            </p>
                            <p>
                                <strong><%= TotalBill*0.03%></strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td> &nbsp; </td>
                            <td> &nbsp; </td>
                            <td class="text-right"><h4><strong>Total:&nbsp;</strong></h4></td>
                            <td class="text-center text-danger"><h4><strong><%=TotalBill+( TotalBill*0.03)%></strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <button type="button" class="btn btn-success btn-lg btn-block">
                    PRINT RECEIPT&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                </button></td>
            </div>
        </div>
    </div>	<script type="text/javascript">
		</script>
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
