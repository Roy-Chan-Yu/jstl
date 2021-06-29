<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
	<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>sql:setDataSource Tag</title>
</head>
<body>

<sql:setDataSource var="db" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://localhost:3310/hib" 
	user="root" password="root" />
<sql:query var="rs" dataSource="${db }">
	SELECT * FROM employee;
</sql:query>

<!-- update -->
<sql:update dataSource="${db }" var="upd">
insert into employee(Name,Dept,JobTitle,Salary,email) values('Roy','Dev-ops','Junior',300,'@gmail.com');
</sql:update>

<sql:update dataSource="${db }" var="ins">
	insert into edit_log(type,users,comment) values('ACTION-1','Roy','ins employee');
</sql:update>

<c:set var="k1Id" value="18"></c:set>
<sql:update dataSource="${db }" var="del">
delete from employee where k1 >= ?
<sql:param value = "${k1Id }"></sql:param>
</sql:update>

<sql:update dataSource="${db }" var="ins">
	insert into edit_log(type,users,comment) values('Action-2','Royu','del employee');
</sql:update>


<!-- Update for transaction -->
<sql:transaction dataSource="${db }">
	<sql:update var="count">
		UPDATE employee set salary = salary* 1.2 where k1 < 10;
	</sql:update>
	
	<sql:update var="cnt">
		Update employee set salary = salary*0.5 where k1 > 10;
	</sql:update>	
	
</sql:transaction>

	<sql:update dataSource="${db }" var="ins">
		insert into edit_log(type,users,comment) values('Action-3','Royu','raise pay');
	</sql:update>
	
	<sql:update dataSource="${db }" var="ins">
		insert into edit_log(type,users,comment) values('Action-4','Roy','pay-cut');
	</sql:update>

<table border="2" width="100%">
<tr>
	<th>Primary Key</th>
	<th>Name</th>
	<th>Dept</th>
	<th>Job</th>
	<th>Salary</th>
	<th>email</th>
</tr>
<c:forEach var="table" items="${rs.rows}">
<tr>
	<td><c:out value="${table.K1}"></c:out></td>
	<td><c:out value="${table.Name}"></c:out></td>
	<td><c:out value="${table.Dept}"></c:out></td>
	<td><c:out value="${table.JobTitle}"></c:out></td>
	<td><c:out value="${table.Salary }"></c:out></td>
	<td><c:out value="${table.email }"></c:out></td>
</tr>
</c:forEach>


</table>

</body>
</html>