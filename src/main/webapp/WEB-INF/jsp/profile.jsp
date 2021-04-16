<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Profil</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	    <a class="navbar-brand mr-5" href="/"><img class="mx-3" alt="logo" src="img/navlogo.png" height="45"><span id="logo" class="mr-5">P4 FITNESS</span></a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/">Rólunk <span class="sr-only">(current)</span></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/products">Termékek</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/prices">Árak</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/exercises">Gyakorlatok</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/rules">Szabályok</a>
	        </li>
	        <c:if test="${!user}">
			    <li class="nav-item">
		          <a class="nav-link" href="/login">Bejelentkezés</a>
		        </li>
			</c:if>
			<c:if test="${user}">
			    <li class="nav-item">
		          <a class="nav-link" href="/profile">Üdv, ${username}</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/cart"><i class="material-icons">shopping_cart</i></a>
		        </li>
			</c:if>
	      </ul>
	    </div>
	</nav>

	<div class="container margintop">
		<h3 class="my-4 lightgreen">FELHASZNÁLÓNÉV</h3>
		<label>Bejelentkezve, mint: ${username2}</label>
		<br>
		<a class="btn" href="/logout">KIJELENTKEZÉS</a>
			
		<div class="row">
			<div class="col-6">
				<h3 class="my-4 lightgreen">SZÁLLÍTÁSI ADATOK</h3>
				
				<p>Teljes név:  ${name}</p>
				<hr>
				<p>Cím:  ${address}</p>
				<hr>
				<p>Irányítószám:  ${zipcode}</p>
				<hr>
				<p>Város:  ${city}</p>
				<hr>
				<p>Telefonszám:  ${phone}</p>
			</div>
			<div class="col-6">
				<h3 class="my-4 lightgreen">SZÁLLÍTÁSI ADATOK MÓDOSÍTÁSA</h3>
				<form method="POST" action="/editshipping">						
					<label class="mb-0">Teljes név</label>
					<input class="form-control mb-2" style="width:100%;" type="text" name="name" value="${name}" required>
					<label class="mb-0">Utca | Házszám | Emelet | Ajtó</label>
					<input class="form-control mb-2" style="width:100%;" type="text" name="address" value="${address}" required>
					<label class="mb-0">Irányítószám</label>
					<input class="form-control mb-2" style="width:100%;" type="text" name="zipcode" value="${zipcode}" required>
					<label class="mb-0">Város</label>
					<input class="form-control mb-2" style="width:100%;" type="text" name="city" value="${city}" required>
					<label class="mb-0">Telefonszám</label>
					<input class="form-control mb-2" style="width:100%;" type="text" name="phone" value="${phone}" required>
					<input type="submit" class="btn my-3" value="MENTÉS">
				</form>
			</div>
		</div>
	</div>

	<h4 class="text-center my-3"><a href="/" class="linkgreen">Vissza a főoldalra</a></h4>
		
	<div class="container-fluid py-5 footer">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-4 col-sm-12 px-5">
					<img src="img/logo.png" width="150" height="150" alt="logo">
					<p>Ha szeretnél egy termet, ahol profi környezetben jól érezheted magad!</p>
				</div>
				
				<div class="col-lg-4 col-sm-12 px-5">
					<h4>KAPCSOLAT</h4>
					<p class="mb-0">Web</p>
					<p class="mb-0">Nagy Péter</p>
					<br>
					<p class="mb-0">Telefon</p>
					<p class="mb-0">0630/7022556</p>
					<br>
					<p class="mb-0">E-mail:</p>
					<p class="mb-0">p4@fitness.com</p>
				</div>
				
				<div class="col-lg-4 col-sm-12 px-5">
					<h4>CÉGADATOK</h4>
					<p class="mb-0">p4fitness Kft.</p>
					<p class="mb-0">virág u 33.</p>
					<p class="mb-0">4030 Debrecen</p>
					<br>
					<p class="mb-0">Adószám:</p>
					<p class="mb-0">17823322-3-93</p>
					<br>
					<a href="/termsandconditions" class="linkgreen">Általános Szerződési Feltételek</a>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>