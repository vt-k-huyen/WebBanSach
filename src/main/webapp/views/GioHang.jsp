<%@page import="bean.khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.giohangbean"%>
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

    <title>Giỏ hàng</title>

    <!-- Bootstrap core CSS -->
    <link href="./shophomepage/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="./shophomepage/css/shop-homepage.css" rel="stylesheet">

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ArrayList<giohangbean> dsg = (ArrayList<giohangbean>)session.getAttribute("dsg");
	 	ArrayList<loaibean> dsl = (ArrayList<loaibean>) request.getAttribute("dsl");
	 	khachhangbean kh =(khachhangbean) session.getAttribute("dn");
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
    <!-- Page-content -->
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

<!--             <div class="col-md-9"> -->

               <div class="col-md-9">

				<div>

					<h2 style="text-align: center">THÔNG TIN GIỎ HÀNG</h2>
					<%if(dsg.isEmpty() == false){ %>
						<table class="table-hover" align="center" border="1">
							<tbody>
								<tr style="text-align: center; font-weight: bold">
									<td width="50px"><input type="checkbox" id="checkAll"></td>
									<td>Mã sách</td>
									<td>Tên sách</td>
									<td>Ảnh bìa</td>
									<td>Số lượng</td>
									<td>Đơn giá</td>
									<td>Thành tiền</td>
									<td width="50px"></td>
									<td width="50px"></td>
									<td width="50px"></td>
								</tr>

								<%
						/* 	if(session.getAttribute("gh")!=null){  */
							/* g= new giohangbo();
							g=(giohangbo)session.getAttribute("gh"); */
							
							int sh = dsg.size(); 
							for(int i=0; i< sh ;i++){ %>
								<tr style="text-align: center; font-weight: bold">
									<form action="gioController" method="post">
										<td>
											<input class="form-check-input" type="checkbox" name="check<%=dsg.get(i).getMasach()%>" id="check<%=dsg.get(i).getMasach()%>">
										</td>
									</form>
									<td><%=dsg.get(i).getMasach() %></td>
									<td><%=dsg.get(i).getTensach() %></td>
									<td>
										<img class="slide-image" src="<%=dsg.get(i).getAnh()%>">
									</td>
									<form action="gioController?ms=<%=dsg.get(i).getMasach() %>" method="post">
										<td>
											<input class="form-check-input" type="number" min="1" name="txtsl" value="<%=dsg.get(i).getSoluong() %>" style="background-color: yellow">
										<td><%=dsg.get(i).getGia() %></td>
										<input type="hidden" value="sua" name="action"/>
										<td><%=dsg.get(i).getThanhtien() %></td>
										<td><input type="submit" value="Cập Nhật"></td>
									</form>									
									<form action="gioController?ms=<%=dsg.get(i).getMasach() %>" method="post">
										<td><input type="submit" value="Xóa"></td>
										<input type="hidden" value="tra-sach" name="action"/>
									</form>
									<td><a href="/BookStore/Details/13"> Chi tiết </a></td>
								</tr>
							<%}
						/* } */
							%>

							<tr style="font-weight: bold; text-align: right; color: red">
								<%if(session.getAttribute("dsg") != null) {%>
								<td colspan="4"><%=session.getAttribute("tongsach") %></td>
								<td colspan="5"><%=session.getAttribute("tongtien")%></td>
								<%} else{%>
								<td colspan="4">Tổng sách = 0</td>
								<td colspan="5">Tổng tiền = 0</td>
								<%} %>
							</tr>
							<!-- <tr style="font-weight: bold; color: blue; text-align: right">
								<td colspan="9">
									<form action="IndexGio.jsp" method="post">
										<input type="submit" value="Xóa">
									</form>
								</td>
							</tr> -->
							<tr style="font-weight: bold; color: blue; text-align: right">
								<td colspan="9">
									<form action="gioController" method="post">
										<input type="submit" value="Xóa giỏ hàng">
										<input type="hidden" value="xoa-gio" name="action"/>
									</form>
								</td>
							</tr>
							<form action="dathangController" method="post">
								<tr style="font-weight: bold; color: blue; text-align: right">
									<!-- <td colspan="9" align="center"><a href="dathangController">ĐẶTHÀNG</a></td> -->
									<td colspan="9" align="center">
										<button type="submit" class="btn-primary"> Đặt mua</button>
									</td>
									<input type="hidden" name="action" value="dat-hang">
									<% if(kh!= null){%>
										<input type="hidden" name="makh" value="<%=kh.getMakh()%>">
									<% } else {%>									
										<input type="hidden" name="makh" value="">
										<%} %>
								</tr>
							</form>
						</tbody>
					</table>
					<%} else if(dsg.isEmpty() == true ){%>
					Giỏ hàng trống
					<div>
						<form action="sachController" method="post">
							<input type="submit" value="Mua sách">
						</form>
					</div>
					<%} %>
				</div>
			</div>

            </div>

        </div>

    <!-- </div> -->
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