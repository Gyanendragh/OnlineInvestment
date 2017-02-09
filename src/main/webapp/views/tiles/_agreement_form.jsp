<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h1>Agreement Form</h1>

<div>
	<h2>GENERAL AGREEMENT</h2>
	<br/>
	<p>I agree to become a member of Sorosoro Ibaba, Development Cooperative(SIDC)
	and ready to attend a Pre-Membership Education Seminar to know the goals and
	aspirations of the said Organization.
	</p>
	<p>
		I will abide by the rules and regulations indicated herein.
	</p>
	<br/>
	
	<form action="<spring:url value="/membership/agreement"/>" method="post">
		<input type="checkbox" value="agree"/>I Agree<br>
		<input type="submit" value="Submit"/>
	</form>

</div>