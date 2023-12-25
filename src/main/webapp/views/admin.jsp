<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Xác nhận hóa đơn</title>
		<link rel="stylesheet"
			href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
		<link rel="stylesheet"
			href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
		<link rel="stylesheet"
			href="<c:url value='/template/admin/assets/css/ace.min.css' />"
			class="ace-main-stylesheet" id="main-ace-style" />
		<script
			src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
		<link rel="stylesheet"
			href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
		<link rel="stylesheet"
			href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script type='text/javascript'
			src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
			
		<script
			src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
		<link rel="stylesheet"
			href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script
			src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
		<script
		src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery.flot.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/jquery.flot.pie.min.js' />"></script>
		<script
		src="<c:url value='/template/admin/assets/js/jquery.flot.resize.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/ace-elements.min.js' />"></script>
		<script src="<c:url value='/template/admin/assets/js/ace.min.js' />"></script>
		<script
			src="<c:url value='/template/admin/assets/js/bootstrap.min.js'/>"></script>
		<!-- page specific plugin scripts -->
		<script
			src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>
</head>
<body class="no-skin">
	<!-- nav-bar -->
	<div id="navbar" class="navbar navbar-default ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> Trang quản trị
				</small>
				</a>
			</div>
			<div
				class="navbar-buttons navbar-header pull-right collapse navbar-collapse"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue dropdown-modal">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle"> 
						Xin chào, ${ADMIN.tenTK}
						<!-- ADMIN -->
						</a>
					</li>
					<li class="light-blue dropdown-modal">
						<a href='<c:url value="dangxuatController"/>'> 
							<i class="ace-icon fa fa-power-off"></i> 
							Thoát
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- nav-bar -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
	
		<!-- /side-bar -->
		<div id="sidebar" class="sidebar responsive ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>
			<div class="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>
				<div class="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<ul class="nav nav-list">
				<li><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i> <span class="menu-text"></span>
						Danh mục <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li>
							<a href='<c:url value="/adminLoaiController"/>'>
								<i class="menu-icon fa fa-caret-right"></i> 
								Quản lý loại sách
							</a>
							 <b class="arrow"></b>
						</li>
						<li>
							<a href='<c:url value="/adminSachController"/>'>
									<i class="menu-icon fa fa-caret-right"></i>
									 Quản lý sách
							</a> 
							<b class="arrow"></b>
						</li>
						<li>
							<a href='<c:url value="/adminXacnhanController"/>'>
									<i class="menu-icon fa fa-caret-right"></i>
									 Xác nhận hóa đơn
							</a> 
							<b class="arrow"></b>
						</li>
						<li>
							<a href='<c:url value="/adminXacnhanController"/>'>
									<i class="menu-icon fa fa-caret-right"></i>
									 Danh sách khách hàng
							</a> 
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
			</ul>
			<div class="sidebar-toggle sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
		<!-- /side-bar -->
		<!-- /.main-content -->
		<div class="main-content">
		<%-- <form action="<c:url value='/admin-club'/>" id="formSubmit" method="get" > --%>
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
								chủ</a></li>
					</ul>
					<!-- /.breadcrumb -->
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
						
							<div class="widget-box table-filter">
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<a flag="info"
												   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
												   title='Bổ sung loại' href='<c:url value="/adminLoaiController"/>'> 
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
												</a>
												<button id="btnDelete" type="button"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								
							<div class="row">
								<div class="col-xs-12">
										<%-- <form action="adminLoaiController" method="post">
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right">Mã loại: </label>
												<div class="col-sm-9">  
													<c:if test="${empty maloai }">
														<input type="text" class="form-control" name="txtmaloai"
															value=""><br>
													</c:if>
													<c:if test="${not empty maloai }">
														<input type="text" class="form-control" name="txtmaloai"
															value="${maloai }"><br>
													</c:if>
												</div>
											</div>
											<br>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right">Tên loại: </label>
												<div class="col-sm-9">  
													<c:if test="${empty tenloai }">
														<input type="text" class="form-control" name="txttenloai"
															value=""><br>
													</c:if>
													<c:if test="${not empty tenloai }">
														<input type="text" class="form-control" name="txttenloai"
															value="${tenloai }"><br>
													</c:if>
												</div>
											</div>
											<div class="form-group">
											
													<input type="submit" name="btnadd" value="Add" class="btn btn-primary"> 
													<input type="submit" name="btnupdate" value="Update" class="btn btn-primary">
												
											</div>
										</form> --%>
										<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
												<th><input type="checkbox" id="checkAll"></th>
													<th>Họ tên</th>
													<th>Tên sách</th>
													<th>Số lượng</th>
													<th>Giá</th>
													<th>Thành tiền</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${ds}"	>
													<tr>
														<td><input type="checkbox" value="${item.maCT}"  id="checkbox_${item.maCT}"></td>
														<td>${item.hoTen}</td>
														<td>${item.tenSach}</td>
														<td>${item.soLuong}</td>
														<td>${item.gia}</td>
														<td>${item.thanhTien}</td>
														<td>
															<c:url var="adminXacnhanURL" value="/adminXacnhanController">
																<c:param name="mact" value="${item.maCT}"></c:param>
															</c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																title="Xác nhận" href='${adminXacnhanURL}'><i class="fa fa-check bigger-110" aria-hidden="true"></i>
															</a>
															<%-- <c:url var="adminXacnhanURL" value="/adminXacnhanController">
																<c:param name="mact" value="${item.maCT}"></c:param>
															</c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																title="Xác nhận" href='${adminXacnhanURL}'><i class="fa-solid fa-xmark bigger-110" aria-hidden="true"></i>
															</a> --%>
															
														</td>
													</tr>
												</c:forEach>	
												</tbody>
										</table>
										<ul class="pagination" id="pagination"></ul>
										<input type="hidden" value="" id="page" name="page" />
										<input type="hidden" value="" id="maxPageItem" name="maxPageItem" />
 										<input type="hidden" value="" id="sortName" name="sortName" />
										<input type="hidden" value="" id="sortBy" name="sortBy" />
										<input type="hidden" value="" id="type" name="type" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- </form> -->
	
		<!-- /.main-content -->
		<!-- footer -->
		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">Ace</span>
						Application &copy; 2013-2014
					</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-rss-square orange bigger-150"></i>
					</a>
					</span>
				</div>
			</div>
		</div>
		<!-- footer -->
		</div>
	</div>
</body>
</html>
<%-- <%@page import="bean.adminxacnhanbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
		ArrayList<adminxacnhanbean> ds = (ArrayList<adminxacnhanbean>) request.getAttribute("ds");
		khachhangbean kh = (khachhangbean) session.getAttribute("dn");
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
                   	<li class="active"><a href="adminLoaiController">Quản lý loại</a>
                    </li>
                    <li><a href="adminSachController">
                 	  Quản lý sách
                    </a>
                    </li>		
					<li><a href="adminXacnhanController">Xác nhận hóa đơn</a></li> 
					<li><a href="admindsController">Danh sách khách hàng</a></li> 
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
		<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ArrayList<adminxacnhanbean> ds = (ArrayList<adminxacnhanbean>) request.getAttribute("ds");
		khachhangbean kh = (khachhangbean) session.getAttribute("dn");
		%>
		<table class="table table-hover">
        <%for(adminxacnhanbean xn : ds){%>
        	<tr>
        		<td><%=xn.getHoTen() %></td>
        		<td><%=xn.getTenSach() %></td>
        		<td><%=xn.getSoLuong() %></td>
        		<td><%=xn.getGia() %></td>
        		<td><%=xn.getThanhTien() %></td>
        		<td><a href="adminXacnhanController"> Xác nhận</a></td>
        	</tr>
       <% }%>
        </table>

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
	<table class="table table-hover">
		<tr>
			<th>Họ tên</th>
			<th>Tên sách</th>
			<th>Số lượng</th>
			<th>Giá</th>
			<th>Thành tiền</th>
			<th></th>
		</tr>
		<c:forEach var="xn" items="${ds}">
			<tr>
				<td>${xn.getHoTen()}</td>
				<td>${xn.getTenSach()}</td>
				<td>${xn.getSoLuong()}</td>
				<td>${xn.getGia()}</td>
				<td>${xn.getThanhTien()}</td>
				<td><a href="adminXacnhanController?mact=${xn.getMaCT()}">Xác nhận</a></td>
			</tr>
		</c:forEach>
	</table>
	<!-- /.container -->
    
    <!-- JavaScript -->
    <script src="shophomepage/js/jquery-1.10.2.js"></script>
    <script src="shophomepage/js/bootstrap.js"></script>

</body>

</html>
 --%>