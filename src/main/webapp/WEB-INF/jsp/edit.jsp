<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Termékmódosítás</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<div class="container my-5">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<form method="POST" action="/editproduct">
					<h2>Termék Módosítása</h2>
					<label>Termék id</label>
					<input type="number" class="form-control mb-3" name="id" required value="${id}")>
					<label>Kép neve (A kiterjesztést is tartalmazza pl: termek48.jpg)</label>
					<input type="text" class="form-control mb-3" name="image" required value="${image}">
					<label>Termék neve</label>
					<input type="text" class="form-control mb-3" name="name" required value="${name}">
					<label>Leírás</label>
					<input type="text" class="form-control mb-3" name="description" required value="${description}">
					<label>Ár</label>
					<input type="number" class="form-control mb-3" name="price" required value="${price}">
					<label class="mt-3">Kategória (Eddig: ${category.name})</label>
					<select name="category" class="custom-select mb-3" required>
						<c:forEach var="category" items="${categories}">
							<option value="${category.id}">${category.name}</option>
						</c:forEach>
					</select>
					<button class="btn form-control" type="submit" class="form-control">Módosítás</button>
				</form>
			</div>
		</div>
	</div>	

	<h4 class="text-center my-5"><a href="/admin" class="linkgreen">Vissza az Admin Panelhez</a></h4>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>