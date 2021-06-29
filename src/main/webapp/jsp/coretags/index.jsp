<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
   <head>
      <title>Tag Example</title>
   </head>

   <body>
      
      <p>-----------c:set-----------</p>
      <p>-----------c:out-----------</p>
      
      <c:set var="Income" scope="session" value="${4000*4}"/>  
	  <c:out value="${Income}"/>  
	  
	  <p>-----------C:remove-----------</p>
	  
	  <c:remove var="Income" />
	  <p>After Remove Value is: <c:out value="${Income}" /></p>
	  
	  <p>-----------C:catch------------</p>
	  
	  <c:catch var = "catchtheException">
	   <% int x = 2 / 0; %>
	  </c:catch>
	  
	  <p>------------C:if----------------</p>
	  
	  <c:if test = "${catchtheException !=null }">
	  	<p>The type of exception is "${catchtheException}"</p><br />
	  	<p>There is an exception: "${catchtheException.message}"</p>
	  </c:if>
	  
	  <c:set var ="outcome" scope="session" value="${4000*2}" />
	  
	  <c:if test = "${outcome == 8000}" >
	  	<p> My outCome is equal to <c:out value="${outcome}" /></p>
	  </c:if>
	  
	  <p>-------------C:choose-------------------</p>
	  
	  <c:choose>
	  	<c:when test = "${outcome < 1000 }" >
	  		<c:out value= "Outcome ${outcome} is not good..." />
	  	</c:when>
	  	<c:when test="${outcome <=8000 }">
	  		<c:out value= "Outcome ${outcome } is very good..." />
	  	</c:when>
	  	<c:otherwise>
	  		<c:out value = "Outcome ${outcome} is undetermined..." />
	  	</c:otherwise>
	  </c:choose>
	  
	  <br />
	  <c:choose>
	  	<c:when test="${outcome%2==0 }">
	  		<c:out value="${outcome } is even number" />
	  	</c:when>
	  	<c:otherwise>
	  		<c:out value="${outcome } is odd number.." />
	  	</c:otherwise>
	  </c:choose>
	  
	  <br />
	  <p>-------------C:forEach---------------</p>
	  <c:forEach var="j" begin="1" end="3">
	  	Item<c:out value="${j }" />
	  </c:forEach>
      
      <br />
      <p>-------------C:forTokens---------------</p>
      <c:forTokens items="Roy-Chan" delims="-" var="name">
      	<c:out value="${name }" />
      </c:forTokens>
      
      <br />
      
      <p>--------------C:param---------------</p>
      <c:url value="/index.jsp" var="completeURL">
      	<c:param name="trackId" value="18"></c:param>
      	<c:param name="user" value="Roy" />
      </c:url>
      ${completeURL }
      
      <p>--------------C:redirect---------------</p>
      <c:if test="${outcome >=8001}">
      	<c:redirect url="https://docs.spring.io/spring-framework/docs/current/reference/html/" />
      </c:if>
      <c:if test="${outcome <=8000 }">
      		<c:out value="not match the pattern..."></c:out>
      </c:if>
      
   </body>
</html> 