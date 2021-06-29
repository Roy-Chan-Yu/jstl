<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@include file="index.jsp" %>
<br/>

<h3>Login Form</h3>
<% 
String profile_msg = (String) request.getAttribute("profile_msg");
System.out.println(profile_msg);
if(profile_msg !=null) {
	out.print(profile_msg);
	System.out.println(profile_msg);
}

String login_msg = (String) request.getAttribute("login_msg");
System.out.println(login_msg);
if(login_msg !=null) {
	out.print(login_msg);
	System.out.println(profile_msg);
}
%>
<br />
<form action="loginprocess.jsp" method="post">
Email: <input type="text" name="email" /><br />
Password: <input type="password" name="password" /><br />
<input type="submit" value="login" />
</form>



</body>
</html>