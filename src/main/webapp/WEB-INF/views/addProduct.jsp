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
	</div>
	 <form:form class="form-inline" action = "/logout" method = "post">
  
    <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Logout</button>
  </form:form>
	</nav>

	<!-- Navbar -->

	<h1>
		<center>${message}</center>
	</h1>
	<center>
	<div class="row m-3 p-3">
		<div class="col-8 m-5 p-3">
		<form:form method="post" modelAttribute="product"
			action="/${button}Product">
			
			
			<div class="form-group row p-3">
					<sf:label path="product_name" class="col-4">Product Name:</sf:label>
					<sf:input path="product_name" id="product_name" class="form-control col-4"/>
					<sf:errors>it should be not null</sf:errors>
					</div>
				
			<div class="form-group row p-3">	
				
					<sf:label path="company_name" class="col-4">Company Name:</sf:label>
					<sf:input path="company_name" id="company_name" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
					</div>
					
			<div class="form-group row p-3">	
					<sf:label path="product_price" class="col-4">Product Price:</sf:label>
					<sf:input path="product_price" id="product_price" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				</div>
				
				
			<div class="form-group row p-3">	
					<sf:label path="mfd_date" class="col-4">Manufacture Date:</sf:label>
					<sf:input path="mfd_date" id="mfd_date" type = "date" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				</div>
				
				
			<div class="form-group row p-3">	
					<sf:label path="exp_date" class="col-4">Expiry Date:</sf:label>
					<sf:input path="exp_date" id="exp_date" type = "date" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				
				</div>
				
			<div class="form-group row p-3">	
					<sf:label path="quantity" class="col-4">Quantity:</sf:label>
					<sf:input path="quantity" id="quantity" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				
				</div>
			<div class="form-group row p-3">	
					<sf:label path="purchase_date" class="col-4">Purchase Date:</sf:label>
					<sf:input path="purchase_date" id="purchase_date" type = "date" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				</div>
				
				
			<div class="form-group row p-3">	
					<sf:label path="product_type" class="col-4">Product Type:</sf:label>
					<sf:input path="product_type" id="product_type" class="form-control col-4"/>
					<sf:errors>It should not null</sf:errors>
				</div>
				
				
			<div class="form-group row p-3">	
					<sf:label path="supplier_name" class="col-4">Supplier List:</sf:label>
					<sf:select path="supplier_name" id="supplier_name"
							items="${supplierList}" class="form-control col-4" />
					<sf:errors>It should not null</sf:errors>
				</div>
				
				
			<div class="form-group row p-3">	
					<input type="submit" id="submit" value="${button}" class = "btn btn-success col-2" />
					<div class="col-4"></div>
					<input type="reset" id="reset" class = "btn btn-warning col-2"/>
				</div>
			
		</form:form>
		</div>
		<div class="col-2"></div>
		<div class="col-2"></div>

	</div>
	</center>
	<br>
	<br>
	<br>
	<br>

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