<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Quản lý loại sách</title>
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
										<form action="adminLoaiController" method="post">
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
										</form>
										<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
												<th><input type="checkbox" id="checkAll"></th>
													<th>Mã loại sách</th>
													<th>Tên loại sách</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${dsl}">
													<tr>
														<td><input type="checkbox" value="${item.maloai}"  id="checkbox_${item.maloai}"></td>
														<td>${item.maloai}</td>
														<td>${item.tenloai}</td>
														<td>
															<c:url var="editURL" value="/adminLoaiController">
																<c:param name="txtmaloai" value="${item.maloai }"></c:param>
																<c:param name="txttenloai" value="${item.tenloai}"></c:param>
																<c:param name="tab" value="select"></c:param>
															</c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																title="Cập nhật" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															</a>
															<c:url var="deleteURL" value="/adminLoaiController">
																<c:param name="txtmaloai" value="${item.maloai}"></c:param>
																<c:param name="tab" value="delete"></c:param>
															</c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																title="Xóa" href='${deleteURL}'><i class="fa fa-trash-o bigger-110" aria-hidden="true"></i>
															</a>
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
<%-- <%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	String maloai = (String)request.getAttribute("maloai");	
	String tenloai = (String) request.getAttribute("tenloai");
	%>
	<form action="adminLoaiController" method="post">
	Mã loại: <input type="text" name="txtmaloai" value="<%=(maloai==null) ?"":maloai %>"><br>
	Tên lọai: <input type="text" name="txttenloai" value="<%=(tenloai==null) ?"":tenloai %>"><br>
	<input type="submit" name="btnadd" value="Add" class="btn btn-primary">
	<input type="submit" name="btnupdate" value="Update" class="btn btn-primary">
	</form>
	Danh sách loại

	<div class="container">
		<div class="row">
			<table class="table table-hover">
				<%
				ArrayList<loaibean> dsl = (ArrayList<loaibean>) request.getAttribute("dsl");
				if (dsl != null) {
					for (loaibean loai : dsl) {
				%>
				<tr>
					<td><%=loai.getMaloai()%></td>
					<td><%=loai.getTenloai()%></td>
					<td><a
						href="adminLoaiController?txtmaloai=<%=loai.getMaloai()%>&txttenloai=<%=loai.getTenloai()%>&tab=select">Select</a>
					</td>
					<td><a
						href="adminLoaiController?txtmaloai=<%=loai.getMaloai()%>&tab=delete">Select</a></td>
				</tr>
				<%
				}
				%>
				<%
				} else {
				%>
				Danh sách trống
				<%
				}
				%>
			</table>
		</div>
	</div>
</body>
</html> --%>