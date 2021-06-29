<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<p>-------------fmt:formatNumber------------</p>
<p>The fmt:parseNumber tag Example is : </p>
<c:set var="Amount" value="786.97"></c:set>
	<fmt:parseNumber var="j" type="number" value="${Amount }"></fmt:parseNumber>
	<p><i>Amount is: </i></p><c:out value="${j }"></c:out>
<br />

<fmt:parseNumber var="i" integerOnly="true" type="number" value="${Amount }"></fmt:parseNumber>
<p><i>Amount is:<c:out value="${i}"></c:out></i></p>

<p>--------------fmt:formatNumber----------------</p>
<c:set var="amount2" value="9850.14115"></c:set>
<h3>Amount-2 => <c:out value="${amount2 }"></c:out></h3>
<p>Formatted Number-1: <fmt:formatNumber value="${amount2}" type="currency" /></p>
<p>Formatted Number-2: <fmt:formatNumber type="number" groupingUsed="true" value="${amount2}" /> </p>
<p>Formatted Number-3: <fmt:formatNumber type="number" maxIntegerDigits="3" value="${amount2 }"></fmt:formatNumber>
<p>Formatted Number-4: <fmt:formatNumber type="number" maxFractionDigits="6" value="${amount2 }" /></p>
<p>Formatted Number-5: <fmt:formatNumber type="percent" maxIntegerDigits="7" value="${amount2 }"></fmt:formatNumber></p>
<p>Formatted Number-6: <fmt:formatNumber type="number" pattern="###.###$" value="${amount2 }" /> </p>

<p>--------------fmt:parseDate----------------</p>
<c:set var="data" value="2021-05-25"></c:set>
<fmt:parseDate value="${data}" var="parsedDate" pattern="yyyy-MM-dd"></fmt:parseDate>
<p><c:out value="${parsedDate }"></c:out></p>


<p>--------------fmt:bundle(資源包Load)----------------</p>
	<fmt:bundle basename="com.pouchen.roy.Simple" prefix="colour.">
		<fmt:message key="Violet"></fmt:message><br />
		<fmt:message key="Indigo"></fmt:message><br />
		<fmt:message key="Blue"></fmt:message><br />
	</fmt:bundle>

<p>--------------fmt:setTimeZone-------------</p>
<c:set var="date" value="<%= new java.util.Date()%>"></c:set>
<p><b>Date and Time in Indial Standard Time(IST) Zone:</b> 
	<fmt:formatDate value="${date }" type="both" 
		timeStyle="long" dateStyle="long"/>
</p>
<fmt:setTimeZone value="GMT+8"/>
<p><b>Date and Time in GMT-8 time Zone: </b>
<fmt:formatDate value="${date }" type="both" timeStyle="long" dateStyle="long" />
</p>

<p>-------------fmt:setBundle--------------</p>
<p>Setting the resource bundle for bundle config variable</p>
<fmt:setBundle basename="com.pouchen.roy.Simple" var="sim"/>
<fmt:message key="colour.Violet" bundle="${sim }" /> <br />
<fmt:message key="colour.Indigo" bundle="${sim }" /> <br />
<fmt:message key="colour.FFF" bundle="${sim }" /> <br />

<p>-------------fmt:formatDate--------------</p>

Formatted Time:<fmt:formatDate value="${date }" type="time"/>
<br />
Formatted Date:<fmt:formatDate value="${date }" type="date"/>
<br />
Formatted Date and Time:<fmt:formatDate value="${date }" type="both"/>
<br />
Formatted Date and Time in short style :  
<fmt:formatDate type="both" dateStyle="short" timeStyle="short"  
value="${date}" />  
</p>  
<p>  
Formatted Date and Time in medium style :  
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"  
value="${date}" />  
</p>  
<p>  
Formatted Date and Time in long style :  
<fmt:formatDate type="both" dateStyle="long" timeStyle="long"  
value="${date}" />  
</p>  


</body>
</html>