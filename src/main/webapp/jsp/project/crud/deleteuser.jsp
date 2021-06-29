<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.AddUserDao" %>
<jsp:useBean id="u" class="com.pouchen.roy.bean.AddUser"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<% 
AddUserDao.delete(u);
response.sendRedirect("viewuser.jsp");
%>


</body>
</html>