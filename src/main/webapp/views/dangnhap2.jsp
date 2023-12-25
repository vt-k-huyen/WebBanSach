<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>
	<style>
body {
	margin: 0;
	padding: 0;
	background-color: #17a2b8;
	height: 100vh;
}

#login .container #login-row #login-column #login-box {
	margin-top: 120px;
	max-width: 600px;
	height: 320px;
	border: 1px solid #9C9C9C;
	background-color: #EAEAEA;
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}

#login .container #login-row #login-column #login-box #login-form #register-link
	{
	margin-top: -85px;
}
</style>
	<div id="login">
		<%
		String tb = request.getParameter("tb");
		if (request.getParameter("tb") != null) {
		%>
			<%if(tb.equals("Dang-nhap-sai")){%>
				<div class="alert alert-danger">Tài khoản hoặc mật khẩu không đúng</div>
			<%} else if(tb.equals("Not-permission")){%>
				<div class="alert alert-danger">Không thể truy cập</div>
			<%}%>
		<%}%>
		<!--        <h3 class="text-center text-white pt-5">Login form</h3> -->
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="dangnhapController" method="post">
                            <h3 class="text-center text-info">Login</h3>
							
							<div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="txtun" placeholder="Nhập Username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input  type="password" name="txtpw" placeholder="Nhập mật khẩu" id="password" class="form-control">
                            </div>
                            <div class="form-group">
								<!-- <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br> -->
                                <br>
                                <input type="submit" name="login" class="btn btn-info btn-md" value="Đăng nhập">
                                <br>
								
							</div>
                            <div id="register-link" class="text-right">
                                <a href="dangkyController" class="text-info">Đăng ký</a>
                            </div>
                        </form>
					</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>