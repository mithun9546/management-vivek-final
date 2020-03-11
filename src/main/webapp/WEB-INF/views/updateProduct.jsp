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
  background-image: url("https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701450862.jpg");
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
       


	<div class="row m-5 p-5">
		<div class="col-6">
		<h1>Update Product</h1>
			<form:form modelAttribute="product" method="post"
				action="/updateProductRedirectToAdd">
				<div class = "col-3 p-3">
				
				<form:label path="product_name">Product to Search</form:label>
						<form:select path="product_name" items="${products}"
								class="form-control"></form:select>
					</div>
					<div class = "col-3 p-3">
						<input type="submit" name="update"
							value="Update" class = "btn btn-success">
					
			</form:form>
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