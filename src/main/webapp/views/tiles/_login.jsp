<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

Language : <a href="?language=nl_NL">Spanish</a>|<a href="?language=en">English</a>|<a href="?language=np">Nepali</a>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="container">
<h1>
	Login Form  <spring:message code="staff.form" text="" />

	</h1>
<form action="<spring:url value="/postLogin"/>" method="post">
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<%-- <div>UserName <spring:message code="staff.userName" text="" />:</div>> --%>
			<div><input type="text" name="username" id="email" class="form-control" name="userName" placeholder="userName"/></div>
			
	</div>
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			<%-- <div>Password <spring:message code="staff.password" text="" />:</div>> --%>
			<div><input type="password" name="password" id="password"  class="form-control" name="password" placeholder="Password"/></div>
	</div>
	<br>
	<input type="submit" value="LogIn" class="btn btn-default"/><br>
	<a href="<spring:url value="/user/new"/>">SignUp</a>	
</form>
</div>
