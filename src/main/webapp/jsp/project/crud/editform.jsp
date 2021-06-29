<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="com.pouchen.roy.dao.AddUserDao,com.pouchen.roy.bean.AddUser" %>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.pouchen.roy.dao.AddUserDao,com.pouchen.roy.bean.AddUser" %>

<%
String id = request.getParameter("id");
AddUser u = AddUserDao.getRecordById(Integer.parseInt(id));
%>

<h3>Edit Form</h3>
<form action="edituser.jsp" method="post">
	<input type="hidden" name="id" value="<%=u.getId()%>"> 
	<table>
		<tr>
			<td>Name: <input type="text" name="name" value="<%=u.getName()%>" /></td>
			<td>Password: <input type="password" name="password" value="<%=u.getPassword() %>" /></td>
			<td>Email: <input type="email" name="email" value="<%=u.getEmail() %>" /></td>
			<td>Sex: <input type="radio" name="sex" value="male" />Male
			<input type="radio" name="sex" value="female" />Female
			</td>
			<td>Country: </td><td>
			<select name="country">
				<option>India</option>
				<option>Pakistan</option>
				<option>Afghanistan</option>
				<option>Berma</option>
				<option>Other</option>
			</select>
			</td>
		</tr>
		<tr><td colspan="2"><input type="submit" value="Edit User"></td></tr>
	</table>
</form>

</body>
</html>