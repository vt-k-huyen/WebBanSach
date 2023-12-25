<%@page import="bean.khachhangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Trang chủ</title>

    <!-- Bootstrap core CSS -->
    <link href="./shophomepage/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="./shophomepage/css/shop-homepage.css" rel="stylesheet">

</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	ArrayList<sachbean> dss = (ArrayList<sachbean>)request.getAttribute("dss");
	ArrayList<loaibean> dsl = (ArrayList<loaibean>) request.getAttribute("dsl");
	ArrayList<giohangbean> dsg = (ArrayList<giohangbean>)session.getAttribute("dsg");
	khachhangbean kh = (khachhangbean)session.getAttribute("dn");
	%>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#home">Start Bootstrap</a>
            </div>
			<!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                   	<li class="active"><a href="sachController">Trang chủ</a>
                    </li>
                    <li><a href="gioController">
                 	   <%
						String gh = request.getParameter("gh");
						if (gh == null) {
							gh = "";
						}
						if(session.getAttribute("dsg") == null){
							%> Giỏ Hàng (0) <% } else{
		                    %> Giỏ hàng (<%=session.getAttribute("tongsach") %>)
									<%} %>
                    </a>
                    </li>
                    <%
					if (session.getAttribute("dn") != null) {
					%>				
					<li><a href="lichsumuaController">Lịch sử mua hàng</a></li>
					<%
					}
					%>     
                </ul>
                <%
				if (session.getAttribute("dn") == null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="dangkyController"><span
							class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
					<li><a href="dangnhapController"><span
							class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
				</ul>
				<%
				} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Xin chào: <%=kh.getHoten()%></a></li>
					<li><a href="dangxuatController"></span> Đăng xuất</a></li>

				</ul>
				<%
				}
				%>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">

            <div class="col-md-3">
            	<p class="lead"> TÌM KIẾM SÁCH</p>
                <form method = "post" action = "sachController">
					Tim kiem <br>
					<input type = "text" name="txttim" placeholder ="Nhap key" class="form-control"/>
					<input type = "submit" name="th" value ="Search" class="btn-primary" />
				</form>
            	
            
                <p class="lead">LOẠI SÁCH</p>
                <div class="list-group">
                    <%
					for (loaibean loai : dsl) {
					%>
					<a href="sachController?ml=<%=loai.getMaloai()%>" class="list-group-item"> <%=loai.getTenloai()%> </a>
					<%
						}
					%>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/ancient-place.jpg" style=" height:317.81px;width:847.5px !important" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Logo.jpg" style=" height:317.81px;width:847.5px !important" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/kayaks.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">
					<%
					int n = dss.size();
					for(int i = 0; i < n; i++)
					{
						sachbean s = dss.get(i);
					%>
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="<%=s.getAnh() %>" alt="<%=s.getTensach()%>" style="height:150px,weight:320px">
                            <div class="caption">
                                <h4 class="pull-right"><%=s.getGia()%></h4>
                                <h4><a href="#"><%=s.getTensach() %></a></h4>
                                <!-- <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p> -->
                            </div>
                            <div class="ratings">
                                <p class="pull-right">Giá: <%=s.getGia() %></p>
                                <p>
                                    <span><%=s.getTacgia() %> </span>
                                </p>
                            </div>
                            <form action="gioController?ms=<%=s.getMasach() %>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&tg=<%=s.getTacgia()%>&anh=<%=s.getAnh()%>" method="post">
                                    	
								<input type="hidden" value="them" name="action"/>
								<button type="submit" class="btn-primary"> Đặt mua</button>
									
                            </form>
                
                        </div>
                    </div>
                  <%} %>
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Company 2013 - Template by <a href="http://maxoffsky.com/">Maks</a>
                    </p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->
    
    <!-- JavaScript -->
    <script src="shophomepage/js/jquery-1.10.2.js"></script>
    <script src="shophomepage/js/bootstrap.js"></script>

</body>

</html>
