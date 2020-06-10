<%@page import="java.net.URLDecoder"%>
<%@page import="org.jgs1905.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
<link href="<%= request.getContextPath() %>/static/main.css" rel="stylesheet">
</head>
<body>
	<%
		User user = (User)request.getAttribute("user");
		if (user == null) {
			user = (User)session.getAttribute("user");
		}
		
		// 通过request对象获取浏览器的cookie
		Cookie[] cookies = request.getCookies();
		String username = "";
		String password = "";
		String rememberMe = "";
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("rememberMe")) {
					rememberMe = cookie.getValue();
				}
				if (cookie.getName().equals("username")) {
					// 通过转码解决中文cookie内容的问题
					username = URLDecoder.decode(cookie.getValue(), "utf-8");
				}
				if (cookie.getName().equals("password")) {
					password = cookie.getValue();
				}
			}
		}
		
	%>
	<div id="pageContent">
		<h3>登录页面</h3>
		<form action="loginHandler.jsp" method="post">
			<p>用户名：<input type="text" name="username" value="<%= user == null ? username : user.getUsername() %>"></p>
			<p>密码：<input type="password" name="password" value="<%= user == null ? password : "" %>"></p>
			<p><input type="checkbox" name="rememberMe" value="rememberMe" <%= user == null && rememberMe.equals("rememberMe") ? "checked" : "" %>>记住我</p>
			<p><input type="submit" value="登录"></p>
			<p><a href="regist.jsp">没有账号？立即注册！</a></p>
			
			<%
				String message = (String)session.getAttribute("message");
				session.removeAttribute("message");
			%>
			<p style="color:red;"><%= message == null ? "" : message %></p>
		</form>
	</div>

</body>
</html>