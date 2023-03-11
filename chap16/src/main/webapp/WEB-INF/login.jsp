<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页面</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
	<style >
	body{
	margin: 0;
	padding: 0;

}

a{
	color: #666;
	text-decoration: none;
}
p{
color:white;
}
.logo{
height:100px;

width:168px;
 background: url("imgaes/首页logo.jpg");
background-size: 100% 100%; 


}

#bigBox
{
	margin: 0 auto;
	margin-top: 100px;
	padding: 20px 50px;
	background-color: #000000;
	width: 500px;
	height: 420px;
	border-radius: 20px;
	text-align: center;
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
}
#bigBox h1
{
	font-size: 40px;
	color: floralwhite;
}
#bigBox .inputBox
{
	margin-top: 35px;
}
#bigBox .inputBox .inputText
{
	margin-top: 20px;
}
#bigBox .inputBox .inputText input
{
	border: 0;
	padding: 10px 10px;
	border-bottom: 1px solid white;
	background-color: #00000000;
	color: white;
	width: 200px;
	height: 40px;
	font-size: 20px;
}
#bigBox .inputBox .inputText i
{
	color: white;
}
#bigBox .inputBox .inputButton
{
	border: 0;
	width: 200px;
	height: 50px;
	color: white;
	margin-top: 55px;
	border-radius:20px;
	background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%,#b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
}

</style>
</head>
<body>
<div class="logo">
</div>
	<div id="bigBox">
			<h1>LOGIN</h1>
			<div class="inputBox">
				<form action="login" method="post">
					<div class="inputText">
						<i class="fa fa-user-circle" style="color: whitesmoke;"></i>
						<input type="text" placeholder="账号" name="userName" value="${requestScope.userName}"/>
					</div>
					<div class="inputText">
						<i class="fa fa-key" style="color: whitesmoke;"></i>
						<input type="password" placeholder="密码" name="password"/>
					</div>
					</br>
				<div class="adminbox"><i class="fa fa-user-circle" style="color: whitesmoke;">管理员登录</i><input type="checkbox"name="ad" value="ad"/></div>
				<input type="submit" class="inputButton" value="登录" />
					<a href="register"><input type="button" class="inputButton" value="注册" /></a>
				</form>
				<p >${requestScope.msg} </p>
			</div>
		</div>
</body>
</html>
