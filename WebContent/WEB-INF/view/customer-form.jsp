<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<link 
	type="text/css" 
	rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link 
	type="text/css" 
	rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<form:form modelAttribute="customer" action="add" method="POST" >
			<!-- Keep track of customer id  -->
			<form:hidden path="id" />
			
			<table>
				<tbody>
					<tr>
						<td><label for="firstname" >First Name</label></td>
						<td> <form:input path="firstName" id="firstname" /> </td>
					</tr>
					<tr>
						<td><label for="lastname" >Last Name</label></td>
						<td> <form:input path="lastName" id="lastname" /> </td>
					</tr>
					<tr>
						<td><label for="email" >Email</label></td>
						<td> <form:input path="email" id="email" /> </td>
					</tr>
					<tr>
						<td> <input type="submit" value="Save Details" class="save" /> </td>
					</tr>
				</tbody>
			</table>
		</form:form>
				
		<p>
			<a href="${pageContext.request.contextPath}/customer/list" >Back to List</a>
		</p>
	
	</div>
	
	
</body>
</html>