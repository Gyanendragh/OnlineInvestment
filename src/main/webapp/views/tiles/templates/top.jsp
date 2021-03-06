<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<img src="<spring:url value="/resource/images/logo.jpg"/>"/>	
</div>
<div align="right">
	<security:authorize access="isAnonymous()">
		<a href="<spring:url value="/login"/>">
		login</a>
	</security:authorize>
	<security:authorize access="isAuthenticated()">
		<a href="<spring:url value="/logout"/>">
		logout(<security:authentication property="principal.username"/>)</a>
	</security:authorize>
</div>