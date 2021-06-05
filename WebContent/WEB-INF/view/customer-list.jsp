<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springcrm.util.SortUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Home Page</title>
	<link type="text/css" rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			
			<input type="button" value="Add Customer" onclick="window.location.href='add'; return false;" class="add-button" />
		
			<table>
				<thead>
					<tr>
						<!-- Sort By First Name -->
						<c:url var="sortByFirstNameLink" value="/customer/list" >
							<c:param name="sortby" ><%= SortUtils.FIRST_NAME %></c:param>
						</c:url>
						
						<!-- Sort By Last Name -->
						<c:url var="sortByLastNameLink" value="/customer/list" >
							<c:param name="sortby" ><%= SortUtils.LAST_NAME %></c:param>
						</c:url>
						
						<!-- Sort By Email -->
						<c:url var="sortByEmailLink" value="/customer/list" >
							<c:param name="sortby" ><%= SortUtils.EMAIL %></c:param>
						</c:url>
					
						<th title="Sort by First Name" ><a href="${sortByFirstNameLink}">First Name</a></th>
						<th title="Sort by Last Name" ><a href="${sortByLastNameLink}">Last Name</a></th>
						<th title="Sort by Email" ><a href="${sortByEmailLink}">Email</a></th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customers}" var="currentCustomer" >
						
						<!-- Create Update Link -->
						<c:url var="updateLink" value="/customer/update" >
							<c:param name="customerId">${currentCustomer.id}</c:param>
						</c:url>
						
						<!-- Create Delete Link -->
						<c:url var="deleteLink" value="/customer/delete" >
							<c:param name="customerId">${currentCustomer.id}</c:param>
						</c:url>
						
						<tr>
							<td>${currentCustomer.firstName}</td>
							<td>${currentCustomer.lastName}</td>
							<td>${currentCustomer.email}</td>
							<td> <a class="updateLink" href="${updateLink}">Update</a> 
								| 
								<a class="deleteLink" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false" href="${deleteLink}">Delete</a>
							</td>
						</tr>
						
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
</body>
</html>