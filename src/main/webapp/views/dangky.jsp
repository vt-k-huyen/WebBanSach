<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="./css/dangky.css" rel="stylesheet" >
<!------ https://bootsnipp.com/snippets/dlZAN -------->
<!------ Include the above in your HEAD tag ---------->
<body>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<a href="dangnhapController"><input type="submit" name="" value="Đăng nhập" /><br /></a>
			</div>
			<div class="col-md-9 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Customer</a></li>
					<!-- <li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Account</a></li> -->
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Đăng ký</h3>

						<form id="form-Register" action="dangkyController" method="post">
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" name="hoten" class="form-control" placeholder="Họ và tên *" value="" />
									</div>
									<div class="form-group">
										<input type="text" name="diachi" class="form-control" placeholder="Địa chỉ *" value="" />
									</div>
									<div class="form-group">
										<input type="text" name="tendn" class="form-control" placeholder="Tên tài khoản *" value="" />
									</div>
									<div class="form-group">
										<input type="password" name="pass" class="form-control"	placeholder="Mật khẩu *" value="" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" name="email" class="form-control" placeholder="Email *" value="" />
									</div>
									<div class="form-group">
										<input type="text" minlength="10" maxlength="10" name="sdt"	class="form-control" placeholder="SĐT *" value="" />
									</div>
									<input type="submit" class="btnRegister" value="Đăng ký" />
									<input type="hidden" name="action" value="dang-ky" />
								</div>
								<div class="col-md-6">
									<%
									String tb = request.getParameter("tb");
									if (request.getParameter("tb") != null) {
									%>
									<div class="alert alert-danger"><%=tb%></div>
									<%
									}
									%>
								</div>
							</div>
							
						</form>
						
					</div>
					
						
				</div>
			</div>
		</div>

	</div>
</body>
</html>