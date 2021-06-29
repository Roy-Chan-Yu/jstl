<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.*" %>
<jsp:useBean id="u" class="com.pouchen.roy.bean.AddUser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int status = AddUserDao.save(u);
if(status>0) {
	response.sendRedirect("adduser-success.jsp");
}
else {
	response.sendRedirect("adduser-error.jsp");
}
%>

</body>
</html>