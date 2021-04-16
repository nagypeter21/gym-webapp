<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Admin Panel</title>
</head>
<body>

	<div class="container">
		<h4 class="text-center mt-5 mb-3"><a href="/products" class="linkgreen">Termékek megtekintése az oldalon</a></h4>
		<h3 class="text-center">Termékek</h3>
		<div class="row">
			<c:forEach var="product" items="${products}">
				<div class="card col-4">
					<div class="card-body bg-dark">
						<p class="card-title text-center">
							${product.name}<a class="ml-4 mr-2" href="/edit/${product.id}"><i style="color:#86C232;" class="material-icons">edit</i></a><a href="/delete/${product.id}"><i style="color:#86C232;" class="material-icons">delete</i></a>
						</p>
					</div>
				</div>
				<br>
			</c:forEach>
		</div>
	</div>

	<h4 class="text-center my-5"><a href="/" class="linkgreen">Vissza a főoldalra</a></h4>

	<div class="container my-5">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<form method="POST" action="/newproduct">
					<h2>Új termék hozzáadása</h2>
					<label>Kép neve (A kiterjesztést is tartalmazza pl: termek48.jpg)</label>
					<input type="text" class="form-control mb-3" name="image" required>
					<label>Termék neve</label>
					<input type="text" class="form-control mb-3" name="name" required>
					<label>Leírás</label>
					<input type="text" class="form-control mb-3" name="description" required>
					<label>Ár</label>
					<input type="number" class="form-control mb-3" name="price" required>
					<label class="mt-3">Kategória</label>
					<select name="category" class="custom-select mb-3" required>
						<c:forEach var="category" items="${categories}">
							<option value="${category.id}">${category.name}</option>
						</c:forEach>
					</select>
					<button class="btn form-control" type="submit" class="form-control">Feltöltés</button>
				</form>
			</div>
		</div>
	</div>	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>