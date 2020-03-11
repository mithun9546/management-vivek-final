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
	<form:form class="form-inline" action="/logout" method="post">

		<button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Logout</button>
	</form:form> </nav>

	<!-- Navbar -->




	<h1>
		<center>Use Functionality</center>
	</h1>

	<!-- Carousel -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block img-thumbnail" src="https://www.elsetge.cat/myimg/f/115-1151779_molecule-medical-biology-detail-medicine-psychedelic-molecular-wallpaper.jpg" alt="First slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Carousel -->

	<div class="row p-4">
		<div class="col-2"></div>
		<div class="card bg-dark col-2 m-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQTqF3tsyXSQLKsU9OqWJ8sWTnKW5Nxf1pQMkH6_Y-DkkH_2Ehk"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Product Search</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/productsearch" class="btn btn-primary">Click Here</a>
			</div>
		</div>
		<div class="card bg-dark m-2 col-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9AIzPTj1AKMi5X_7FmbFj86FoXOSQfLma56tJNH6AEWkiMk4J"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Stock Maintenance</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/stockMaintenance" class="btn btn-primary">Click Here</a>
			</div>
		</div>
		<div class="card bg-dark col-2 m-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRLvUbDlKiE0f0PiTsKgtjdic4CHxTWBJclDotUSPoGWoJpvYGW"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Purchase Report</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/purchaseReport" class="btn btn-primary">Click Here</a>
			</div>
		</div>
	</div>

	<div class="row p-4">
		<div class="col-2"></div>
		<div class="card bg-dark m-2 col-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSUMPBTqu1l6S3x-ShvoK-hAnFu__aEXT23JK4P0oK1GpxHMwbv"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Supplier Wise List</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/supplierList" class="btn btn-primary">Click Here</a>
			</div>
		</div>

		<div class="card bg-dark col-2 m-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5epGPAYeEMyxTMUW-BPsEv8WOtGn0hkzm8kZGGMmMymsPl3bd"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Manage Product</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/manageProduct" class="btn btn-primary">Click Here</a>
			</div>
		</div>

		<div class="card bg-dark m-2 col-2" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6gmd6XhWZy-aVz4m8JeqFEQ4Cez6xqGVnB4HfvOPtYlqAxymL"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Manage Supplier</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="/manageSupplier" class="btn btn-primary">Click Here</a>
			</div>
		</div>
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
