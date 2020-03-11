<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


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
<style>
body {
	background-image:
		url("https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701450862.jpg");
	background-repeat: no-repeat;
	background-position: fixed;
	background-size: cover;
	color: white;
}
</style>
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
		<a class="btn btn-success my-2 my-sm-0" href="/login">Login</a>
	</div>
	</nav>

	<!-- Navbar -->
	<h1>
		<center>User Registration</center>
	</h1>
	<div class="row m-3 p-3">
		<div class="col-8 m-5 p-3">
			<form:form modelAttribute="users" method="post">

					<div class="form-group row p-3">
					
						<sf:label path="username"  class="col-4 text-light">USER NAME</sf:label>
						<sf:input path="username" id="username" class="form-control col-4"/>
						<form:errors path="username" cssStyle="color: #ff0000;" />
					</div>
					<div class="form-group row p-3">
					<sf:label path="name" class="col-4 text-light">Name</sf:label>
						<sf:input path="name" id="name" class="form-control col-4"/>
						<form:errors path="name" cssStyle="color: #ff0000;" />
					</div>
					<div class="form-group row p-3">
				
						<sf:label path="emailId" class="col-4 text-light">Email ID</sf:label>
						<sf:input path="emailId" id="emailId" class="form-control col-4"/>
						<form:errors path="emailId" cssStyle="color: #ff0000;" />
			
					</div>
					<div class="form-group row p-3">
					
						<sf:label path="contactNo" class="col-4 text-light">Contact NO</sf:label>
						<sf:input path="contactNo" id="contactNo" class="form-control col-4" />
						<form:errors path="contactNo" cssStyle="color: #ff0000;" />
					</div>
					<div class="form-group row p-3">
					
						<sf:label path="password" class="col-4 text-light">Password</sf:label>
						<sf:input path="password" id="password" class="form-control col-4" />
						<form:errors path="password" cssStyle="color: #ff0000;" />
					
					</div>
					<div class="form-group row p-3">
					
						<button type="submit" value="submit" id="submit" class="form-control col-2 btn btn-success
							name="submit">Submit</button>
						<div class="col-4"></div>
						<button type="reset" value="clear" id="clear" name="clear" class="form-control col-2 btn btn-warning">Clear</button>
					
					</div>
					<div class="form-group row p-3">
					
						If already have an account &nbsp; &nbsp; &nbsp; &nbsp;<a href="/login" class = "btn btn-success">Click
								here</a>
					</div>

			</form:form>
		</div>
		<div class="col-2"></div>
		<div class="col-2"></div>

	</div>
	<center>
		<p class="font-weight-bold text-light">${status}</p>
	</center>
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
