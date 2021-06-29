<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.LoginDao" %>
<jsp:useBean id="obj" class="com.pouchen.roy.bean.LoginBean" />
<jsp:setProperty property="*" name="obj" />

<% 
	boolean status = LoginDao.validate(obj);
	if(status) {
		out.println("you're successful logged-in");
		session.setAttribute("session", "TRUE");
	}
	else {
		out.println("Sorry, email or password error");
		%>
			<jsp:include page="index.jsp"></jsp:include>
		<% 
	}
%>

</body>
</html>