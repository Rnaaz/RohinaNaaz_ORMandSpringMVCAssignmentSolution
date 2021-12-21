<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<title>Customer Management</title>
</head>

<body>

	<div class="container">
		<h1 class="text-center pt-4 pb-4 mt-3"
			style="color: #FFFFFF; background-color: #000080">Customer
			Relationship Management</h1>
		<h3>Save Customer</h3>
		<hr>

		<form action="/CRM/customer/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Customer.id}" />

			<div class="form-group row">
				<label for="first" class="col-sm-2 col-form-label">First
					Name:</label>
				<div class="col-sm-10">
					<input type="text" style="display: inline;" name="firstname"
						id="first" value="${Customer.firstName}"
						class="form-control mb-4 col-4" placeholder="First Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="last" class="col-sm-2 col-form-label">Last Name:</label>
				<div class="col-sm-10">
					<input type="text" style="display: inline;" name="lastname"
						id="last" value="${Customer.lastName}"
						class="form-control mb-4 col-4" placeholder="Last Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="emailid" class="col-sm-2 col-form-label">Email:</label>
				<div class="col-sm-10">
					<input type="text" style="display: inline;" name="email"
						id="emailid" value="${Customer.email}"
						class="form-control mb-4 col-4" placeholder="Email">
				</div>
			</div>
			<div style="margin-left: 17%;">
				<button style="background-color: #4169e1; color: white"
					type="submit" class="btn col-2">Save</button>
			</div>
		</form>
		<hr>
		<a href="/CRM/customer/list" style="text-decoration: none;"><span
			style="font-size: 20px;">&#11013;&nbsp;</span>Back to List</a>
	</div>
</body>
</html>