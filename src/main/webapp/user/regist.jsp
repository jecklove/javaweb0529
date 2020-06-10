<%@page import="org.jgs1905.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link href="<%= request.getContextPath() %>/static/main.css" rel="stylesheet">
</head>
<body>
	
	<%
		User user = (User)request.getAttribute("user");
	%>
	
	<div id="pageContent">
		<h3>注册页面</h3>
		<form action="registHandler.jsp" method="post">
			<p>真实姓名：<input type="text" name="real_name" value="<%= user == null ? "" : user.getReal_name() %>"></p>
			<p>用户名：<input type="text" name="username" value="<%= user == null ? "" : user.getUsername() %>"></p>
			<p>密码：<input type="password" name="password" value="<%= user == null ? "" : user.getPassword() %>"></p>
			<p><input type="submit" value="注册"></p>
			<p><a href="login.jsp">已有账号？立即登录！</a></p>
			<p style="color:red;"><%= request.getAttribute("message") == null ? "" : request.getAttribute("message") %></p>
		</form>
	</div>

</body>
</html>