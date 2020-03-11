<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	<!-- Navbar -->


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">Medic</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Contact Us</a>
			</li>
		</ul>
	</div>
	</nav>

	<!-- Navbar -->
	<center>
		<h1>Login</h1>
	</center>
	<div class="row">
		<div class="col-4"></div>
		<div class="col-4">

			<form:form method="post" action="/authenticateTheUser">
				<table class="table">
					<tr scope="row">
						<td colspan="2">${error}</td>
					</tr>
					<c:if test="${param.logout != null}">
						<tr scope="row">
							<td colspan="2">You have been logged out</td>
						</tr>
					</c:if>
					<tr scope="row">
						<td><label for="username">User Name</label></td>
						<td><input type="text" name="username"></td>
						<td>${userIdError}</td>
					</tr>
					<tr scope="row">
						<td><label for="password">Password</label></td>
						<td><input type="text" name="password"></td>
						<td>${passwordError}</td>
					</tr>
					<tr scope="row">
						<td colspan="2"><input type="submit" value="Login"
							name="submit"></td>
					</tr>
					<tr scope="row">
						<td colspan="2">New User<a href="/registration">Click
								here</a></td>
					</tr>
					<tr scope="row">
						<td colspan="2"><a href="/forgot">Forgot password</a></td>
					</tr>
				</table>
			</form:form>
		</div>
		<div class="col-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>