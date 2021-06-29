<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.RegisterDaoImpl" %>
<%@page import="com.pouchen.roy.dao.RegisterDao" %>
<jsp:useBean id="obj" class ="com.pouchen.roy.bean.User" />
<jsp:setProperty property="*" name="obj"/>

<% 
	int status = new RegisterDaoImpl().register(obj);
	if(status > 0) 
			out.print("You are successfully registered...");
%>


</body>
</html>