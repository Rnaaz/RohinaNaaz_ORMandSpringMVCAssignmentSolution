<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>CRM</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center pt-4 pb-4 mt-3"
			style="color: #FFFFFF; background-color: #000080">Customer
			Relationship Management</h1>
		<hr>
		<br> <br> <a
			style="background-color: #ff3e6c; border: none; font-weight: 500;"
			href="/CRM/customer/showFormForAdd" class="btn btn-primary mb-3">Add
			Customer</a>
		<table class="table table-striped">
			<thead class="text-center thead-dark">
				<tr>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody class="text-center">
				<c:forEach items="${Customer}" var="customer">
					<tr>
						<td><c:out value="${customer.firstName}" /></td>
						<td><c:out value="${customer.lastName}" /></td>
						<td><c:out value="${customer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/CRM/customer/showFormForUpdate?customerId=${customer.id}"
							class="btn btn-primary btn-md mr-3">Update</a> <!-- Add "delete" button/link -->

							<span class="mr-3">|</span> <a
							href="/CRM/customer/delete?customerId=${customer.id}"
							class="btn btn-danger btn-md"
							onclick="if (!(confirm('Are you sure you want to delete this entry?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>