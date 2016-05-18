<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>

<link rel="shortcut icon" href="image/favicon.ico" />

<link rel="stylesheet" href="static/css/shopping/style.css" media="all">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="static/css/shopping/shopping_info.css" media="all">

</head>
<body>

	<jsp:include page="../base/nav_content.jsp"></jsp:include>
	
	<%
		String islogin = "none";
		String info = "none";
		String list = "none";
		String username = (String) session.getAttribute("username");
		if (username == null) {
			islogin = "block";
		} else {
			
		}
	%>
	
	<div class="info" class="wrap" style="display: <%=islogin%>">
		<h1>你现在还未登录，请点击右上方的登录方可查看购物车信息 ~~</h1>
	</div>
	<div class="info" class="wrap" style="display: <%=info%>">
		<h1>你现在还没有购物信息 ~~</h1>
	</div>
	
	<div class="isinfo" class="wrap" style="display: <%=list%>">
		<h1>购买信息如下 ~~</h1>
	</div>

</body>
</html>