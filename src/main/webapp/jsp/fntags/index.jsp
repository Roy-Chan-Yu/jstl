<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="String" value="Welcome to javatpoint" />

<p>------------fn:contains----------</p>

<c:if test="${fn:contains(String,'javatpoint') }">
	<p>Found javatpoint string</p>
</c:if>

<c:if test="${fn:contains(String,'JAVATPOINT') }">
	<p>Found JAVATPOINT string</p>
</c:if>
<br />

<p>------------fn:containsIgnoreCase----------</p>

<c:if test="${fn:containsIgnoreCase(String,'javatpoint')}" >
	<p>Ignore Case String...</p>
</c:if>

<br />

<p>------------fn:escapseXml----------</p>

<c:set var="string1" scope="session" value="It's <xml>Escape</xml>" />
<p>string-1: ${fn:escapeXml(string1) }</p>
<p>-----------------------</p>
<p>Without escapeXml() Function</p>
<p>string-1¡G"${string1}"</p>
<br />

<p>------------fn:indexOf----------</p>

<p>Index-1 : ${fn:indexOf(string1,"It's")}
<p>Index-1 : ${fn:indexOf(string1,"Escape")}
<br />
<p>------------fn:trim----------</p>
<c:set var="str1" value=" Welcome to JSP¡@¡@programming.. " />
<p>string-1 Length is : ${fn:length(str1)} </p>

<c:set var="str2" value="${fn:trim(str1) }" />
<p>String-2 Length is : ${fn:length(str2)}</p>
<p>Final value of string is : ${str2}</p>
<br />

<p>------------fn:startsWith----------</p>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
<c:out value = "${msg}" />
<p>-------------------------</p>
<c:out value="The string starts with ${fn:startsWith(msg,'The') }" />
<br/>
<c:out value="The string starts with Example : ${fn:startsWith(msg,'Example') }"></c:out>

<p>------------fn:split----------</p>
<c:set var="str1" value="Welcome-to-JSP-Programming." />
<c:set var="str2" value="${fn:split(str1,'-') }" />
<c:set var="str3" value="${fn:join(str2,'') }" />

<c:out value="string-1 : ${str1}" />
<p>string-2¡G"${str2[0]} ${str2[1]}"</p>
<p>string-3¡G"${str3 }"</p>
<c:set var="str4" value="${fn:split(str3,'') }" />
<c:set var="str5" value="${fn:join(str4,'-') }" />

<p>String-4: "${str4 }"</p>
<p>String-5: "${str5 }"</p>

<br />

<p>------------fn:toLowerCase----------</p>
<c:set var="string" value="Welcome to JSP programming..."></c:set>
"${fn:toLowerCase("HELLO")}" <br />
"${fn:toLowerCase(string)}"

<p>------------fn:toUpperCase----------</p>
<c:set var="site" value="javatpoint.com"></c:set>
<c:set var="author" value="Roy.Chan"></c:set>
<p>"This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)} "</p>

<p>------------fn:substring()----------</p>

${fn:substring('royChan',3,6)}

<p>------------fn:substringBeforeAfter()----------</p>

<c:set var="roy" value="Roy.+-Chan"></c:set>
${fn:substringBefore(roy,'Chan')}
${fn:substringAfter(roy,'Roy.')}

<p>------------fn:length----------</p>
Length of the roy.chan is: ${fn:length(roy)}

<p>------------fn:replace----------</p>
${fn:replace(roy,'.+-','/.&') }

</body>
</html>