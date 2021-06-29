<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<a href="viewuser.jsp">View All Records</a> <br />
<h2>Add New User </h2>
<form action="adduser.jsp" method="post">
<tr>
	<td>Name: <input type="text" name="name" /></td>
	<td>Password: <input type="password" name="password" /> </td>
	<td>Email: <input type="email" name="email" /></td>
	<td>Sex: 
	<input type="radio" name="sex" value="male" /> Male
	<input type="radio" name="sex" value="female" /> Female
	</td>
</tr>
<tr>
	<td>Country: </td> <td>
	<select name="country" style="width:155px">
		<option>India</option>
		<option>Pakistan</option>
		<option>Afghanistan</option>
		<option>Berma</option>
		<option>Other</option>
	</td>
</tr>
<tr><td colspan="2"><input type="submit" value="Add User" /></td></tr>

</form>

</body>
</html>