<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页</title>
</head>
<body>
	<h1>hello jsp</h1>
	<%-- 
	<%
		request.getRequestDispatcher("main.jsp").forward(request, response);
	%> 
	--%>
	
	<!-- jsp动作标签：转发标签 -->
	<jsp:forward page="main.jsp"></jsp:forward>
</body>
</html>