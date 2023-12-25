<%@page import="bean.lichsumuabean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="bean.chitiethdbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hóa đơn mua</title>
    <!-- Bootstrap core CSS -->
    <link href="./shophomepage/css/bootstrap.css" rel="stylesheet">
	
    <!-- Add custom CSS here -->
    <link href="./shophomepage/css/shop-homepage.css" rel="stylesheet">
</head>
<body>

	<%@include file = "/views/navbar.jsp" %>
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
<% 
		long sl = 0, makh = 0;;
		if(session.getAttribute("dn") != null )
		{
			makh = kh.getMakh();
		} 
		java.util.Date date=new java.util.Date(); 
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = dd.format(date);  
		ArrayList<chitiethdbean> dsmua = (ArrayList<chitiethdbean>) request.getAttribute("dsmua");
	%>
    <div class="root">
        <div class="contain">
            <h2 style="text-align: center">HÓA ĐƠN MUA SÁCH</h2>
         <p class="date mb-4"> <b>  Ngay lap:</b><%=strDate%></p>
            <div>
              <p class = "mkh mb-4"><b>Mã khách hàng:</b><%=makh%></p>
                <p class="tenkh mb-4"><b>Tên khách hàng:</b><%=kh.getHoten()%></p>
                <p class="tenkh mb-4"><b>Tổng tiền:</b><%=session.getAttribute("tongtien")%></p>
            </div>
            <table class="table table-bordered mt-20">
                <tr>
                    <th>STT</th>
                    <th>Ten sach</th>
                    <th>So luong</th>
                </tr>
                <!-- vong for lap qua day de hien thi -->
                <% int i = 1;
                	for(chitiethdbean ct : dsmua){ %>
                <tr>
                    <td><%=i %></td>
                    <td><%= ct.getMasach() %></td>
                    <td><%=ct.getSlmua() %></td>
                    <% i++;%>
                </tr>
               <% } %>
                <tr style="font-weight: bold; color: blue; text-align: right">
					<td colspan="9" align="center">
						<form action="xacnhanController" method="post">
								<button type="submit" class="btn-primary">Xác nhận </button>
							<input type="hidden" name="action" value="xac-nhan">
						</form>
						
					</td>
					
				</tr>
            </table>
        </div>
    </div>

                
        </div>

    </div>
    <!-- /.container -->
</body>
</html>