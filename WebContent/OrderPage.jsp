
<!DOCTYPE html>
<%@page import="com.OlShoping.pojo.Cart"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>


    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>Shopping Cart Bootstrap 4 + FontAwesome ( Beta 2 ) - Bootsnipp.com</title>
       <!-- Bootstrap core CSS -->
<link href="Resources/css/bootstrap1.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="Resources/css/homepage.css" rel="stylesheet">
<br><br><br>

        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Resources/css/bootstrapCart.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    

.quantity {
    float: left;
    margin-right: 15px;
    background-color: #eee;
    position: relative;
    width: 80px;
    overflow: hidden
}

.quantity input {
    margin: 0;
    text-align: center;
    width: 15px;
    height: 15px;
    padding: 0;
    float: right;
    color: #000;
    font-size: 20px;
    border: 0;
    outline: 0;
    background-color: #F6F6F6
}

.quantity input.qty {
    position: relative;
    border: 0;
    width: 100%;
    height: 40px;
    padding: 10px 25px 10px 10px;
    text-align: center;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    background-clip: padding-box
}

.quantity .minus, .quantity .plus {
    line-height: 0;
    background-clip: padding-box;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    -webkit-background-size: 6px 30px;
    -moz-background-size: 6px 30px;
    color: #bbb;
    font-size: 20px;
    position: absolute;
    height: 50%;
    border: 0;
    right: 0;
    padding: 0;
    width: 25px;
    z-index: 3
}

.quantity .minus:hover, .quantity .plus:hover {
    background-color: #dad8da
}

.quantity .minus {
    bottom: 0
}
.shopping-cart {
    margin-top: 20px;
}    </style>
    <script src="Resources/java script/jquery-1.11.1.min.js"></script>
    <script src="Resources/java script/bootstrap.min.js"></script>
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
</head>
<!-- <form action="CartServlet" method="post"> -->
<body>
<%
String Pname[]=(String[])session.getAttribute("pname");
String Pprice[]=(String[])session.getAttribute("Pprice");
String PQty[]=(String[])session.getAttribute("PQty");
double TotalBill=(double)session.getAttribute("TotalBill");
%>
<!-- Navigation -->
	<jsp:include page="Nav.jsp"></jsp:include>
	

    <script src="https://use.fontawesome.com/c560c025cf.js"></script>
<div class="container">
   <div class="card shopping-cart">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                Order Product
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
                    <!-- PRODUCT -->
                     <%for(int i=0;i<Pname.length;i++) {%> 
                    <div class="row">
                        <!-- <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="Resources/images/Earrings.jpg" alt="prewiew" width="120" height="80">
                        </div> -->
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><%=Pname[i] %></strong></h4>
                            
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong><%=Pprice[i]%><span class="text-muted">RS</span></strong></h6>
                                
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                              <h6><strong><%=PQty[i]%><span class="text-muted"></span></strong></h6>
                                
                                </div>
                            </div>
                      
                        </div>
                    </div>
                    <hr>
                   <%} %>
                    
                    <hr>
                    <!-- END PRODUCT -->
                <div class="pull-right">
                    
                </div>
            </div>
            <div class="card-footer">
                <div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
                    <div class="row">
                        
                       
                    </div>
                </div>
                <div class="pull-right" style="margin: 10px">
                <div class="pull-left" style="margin: 5px">
                <a href="AddressList.jsp" ><button name="SelectAddress" value="SELECT ADDRESS" >SELECT ADDRESS</button></a>
                    </div>
                    
                    
                    <div class="pull-right" style="margin: 5px">
                        Total price: <b><%=TotalBill%></b>
                    </div>
                </div>
            </div>
        </div>
</div>	<script type="text/javascript">
		</script>
		<br><br><br>
		
	<%-- <jsp:include page="AddressList.jsp"></jsp:include> --%>
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
<!-- </form> -->
</html>
