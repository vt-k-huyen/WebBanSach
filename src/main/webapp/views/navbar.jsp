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
    <!-- Bootstrap core CSS -->
    <link href="./shophomepage/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="./shophomepage/css/shop-homepage.css" rel="stylesheet">

</head>
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