<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.AddUserDao,com.pouchen.roy.bean.*" %>
<%@page import="com.pouchen.roy.bean.AddUser" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>

<H2>Users List</H2>

<% 
List<AddUser> list= AddUserDao.getAllRecords();
request.setAttribute("list", list);
%>

<table border="1" width="90%">
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Password</th>
	<th>Email</th>
	<th>Sex</th>
	<th>Country</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list }" var="u">
<tr>
	<td>${u.getId()}</td>
	<td>${u.getName() }</td>
	<td>${u.getPassword() }</td>
	<td>${u.getEmail() }</td>
	<td>${u.getSex() }</td>
	<td>${u.getCountry()}</td>
	<td><a href="editform.jsp?id=${u.getId()}">Edit </a></td>
	<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
</tr>
</c:forEach>
</table>

<br /> <a href="adduser-form.jsp">Add New User</a>

</body>
</html>