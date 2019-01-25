<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.net.URLEncoder" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>
</head>
<body>
<%
String id = "pinksung";
String pwd = "1234";
String name = "안종길";
request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd")) ){
	response.sendRedirect("04_main.jsp?name="+URLEncoder.encode(name,"UTF-8"));
}else{
	response.sendRedirect("04_loginForm.jsp");
}
%>
</body>
</html>