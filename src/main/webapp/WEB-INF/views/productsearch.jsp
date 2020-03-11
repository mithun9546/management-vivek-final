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
  background-image: url("https://images.unsplash.com/photo-1525847185619-02460ddde30d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
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
       
	<div class="row m-5">
		<div class="col-5"></div>
		<div class="col-2">
			<form:form method="post" modelAttribute="product">
				<form:select path="product_type" items="${productsType}" class = "form-control"/>
				<button type="submit" value="Search" class = "btn btn-success form-control" >Search</button>
			</form:form>
		</div>
		<div class = "col-5"></div>
	</div>
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<form:form>
				<table class="table table-bordered table-striped">
					<thead>
						<th scope="col">Product Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Company Name</th>
						<th scope="col">Product Price</th>
						<th scope="col">Manufacture Date</th>
						<th scope="col">Expire Date</th>
						<th scope="col">Quantity</th>
						<th scope="col">Purchase Date</th>
						<th scope="col">Product Type</th>
						<th scope="col">Supplier Name</th>
					</thead>
					<tbody>
						<c:forEach var="product" items="${productlist}">
							<tr>
								<td>${product.product_id}</td>
								<td>${product.product_name}</td>
								<td>${product.company_name}</td>
								<td>${product.product_price}</td>
								<td>${product.mfd_date}</td>
								<td>${product.exp_date}</td>
								<td>${product.quantity}</td>
								<td>${product.purchase_date}</td>
								<td>${product.product_type}</td>
								<td>${product.supplier_name}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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