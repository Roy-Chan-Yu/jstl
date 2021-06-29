<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<h2>XML Tags</h2>
<h4>------------Vegetable Info.--------</h4>  

<c:set var="vegetable">
<vegetables>
	<vegetable>
		<name>onion</name>
		<price>40</price>
	</vegetable>
	<vegetable>
		<name>orange</name>
		<price>30</price>
	</vegetable>
</vegetables>
</c:set>
<x:parse xml="${vegetable }" var="output" />
<b>Name of the vegetable is</b>: 
<x:out select="$output//vegetables/vegetable[1]/name"/> <br />
<b>Price of the Potato is</b>: 
<x:out select="$output//vegetables/vegetable[2]/price"/> 

<p>----------------------------------------------------</p>

<h4>Choose-when-others...</h4>
<x:parse xml="${vegetable }" var="out"></x:parse>
<x:choose>
	<x:when select="$out/vegetable/price = '40' ">
	Price is over 40 per gram.
	</x:when>
	<x:otherwise>
		The price is unknown...
	</x:otherwise>
</x:choose>

<p>--------------------</p>
<h4>sequential...</h4>
<x:if select="$out/vegetables/vegetable/price <= 40">
	The vegetables price are low...
</x:if>

</body>
</html>