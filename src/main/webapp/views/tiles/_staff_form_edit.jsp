<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body {
    font-size: 18px;
}
</style>
</head>
Language : <a href="?language=nl_NL">Spanish</a>|<a href="?language=en">English</a>|<a href="?language=np">Nepali</a>
	 
	<h1>
	Update Staff <spring:message code="update.staff" text="" />

	</h1>
<form:form modelAttribute="editStaff" method="post">
	<table>
		<tr>
			<td>FirstName <spring:message code="staff.firstName" text="" />
				:
			</td>
			<td><form:input path="firstName" type="text" value="${editStaff.firstName}"/></td>
			<td><form:errors path="firstName" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>LastName <spring:message code="staff.lastName" text=""/> :
			</td>
			<td><form:input path="lastName" type="text" value="${editStaff.lastName}"/></td>
			<td><form:errors path="lastName" cssStyle="color:red;"></form:errors>
			</td>			
		</tr>
		<tr>
			<td>Country <spring:message code="staff.country" text="" />:
			</td>
			<td><form:input path="address.country" type="text" value="${editStaff.address.country}"/></td>
			<td><form:errors path="address.country" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>State <spring:message code="staff.state" text="" />:
			</td>
			<td><form:input path="address.state" type="text" value="${editStaff.address.state}"/></td>
			<td><form:errors path="address.state" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>City <spring:message code="staff.city" text="" />:
			</td>
			<td><form:input path="address.city" type="text" value="${editStaff.address.city}" /></td>
			<td><form:errors path="address.state" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>Street <spring:message code="staff.street" text="" />:
			</td>
			<td><form:input path="address.street" type="text" value="${editStaff.address.street}"/></td>
			<td><form:errors path="address.street" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>ZipCode <spring:message code="staff.zip" text="" />:
			</td>
			<td><form:input path="address.zip" type="text" value="${editStaff.address.zip}"/></td>
			<td><form:errors path="address.zip" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>Contact <spring:message code="staff.contact" text="" />:
			</td>
			<td><form:input path="contact" type="text" value="${editStaff.contact}"/></td>
			<td><form:errors path="contact" cssStyle="color:red;"></form:errors>
			</td>
		</tr>

		<tr>
			<td>Position <spring:message code="staff.position" text="" />:
			</td>
			<td><select name="position">
					<option value="Manager"  <c:if test="${editStaff.position=='Manager'}">selected</c:if>>Manager <spring:message code="staff.manager" text="" /></option>
					<option value="Staff" <c:if test="${editStaff.position=='Staff'}">selected</c:if>>Staff <spring:message code="staff.staff" text="" /></option>
					<option value="Engineer" <c:if test="${editStaff.position=='Engineer'}">selected</c:if>>Engineer <spring:message code="staff.engineer" text=""/></option>
					<option value="Accountant" <c:if test="${editStaff.position=='Accountant'}">selected</c:if>>Accountant <spring:message code="staff.accountant" text="" /></option>
			</select></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<button>Save</button>
			</td>
		</tr>

	</table>
</form:form>

<h1>Staff Details <spring:message code="staff.details" text="" /></h1>
<table class="table table-hover">
	<thead>
	<tr>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Country</td>
		<td>State</td>
		<td>City</td>
		<td>Street</td>
		<td>ZipCode</td>
		<td>Contact</td>
		<td>Position</td>
		<td> &nbsp;</td>

	</tr>
	</thead>
	<c:forEach var="staff" items="${stafflist}">
	<tbody>
		<tr>
			
			<td>${staff.firstName}</td>

			<td>${staff.lastName}</td>

			<td>${staff.address.country}</td>

			<td>${staff.address.state}</td>

			<td>${staff.address.city}</td>

			<td>${staff.address.street}</td>

			<td>${staff.address.zip}</td>

			<td>${staff.contact}</td>

			<td>${staff.position}</td>

			<td><a href="<spring:url value="/staff/edit/${staff.id}"/>">Edit</a> | <a
				href="<spring:url value="/staff/delete/${staff.id}"/>">Delete</a></td>
		</tr>
		</tbody>
	</c:forEach>
	</table>