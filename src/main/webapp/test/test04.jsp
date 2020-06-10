<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试页面4</title>
</head>
<body>

	<h1>测试页面4</h1>
	
	项目根路径：<%= request.getContextPath() %>
	<br>
	本次请求的url地址：<%= request.getRequestURL() %>
	<br>
	本次请求的uri地址：<%= request.getRequestURI() %>
	<br>
	获取资源真实路径：<%= application.getRealPath("/") %>
	<br>

</body>
</html>