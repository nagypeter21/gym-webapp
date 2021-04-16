<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Árak</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
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
		<h3 class="text-center my-3">P4 Gym Árlista</h3>
		<div class="row my-5">
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Felnőtt gym bérlet</p>
				<p class="text-center my-0">1 hónap: 10.000Ft</p>
				<p class="text-center my-0">6 hónap: 50.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 90.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Felnőtt szauna bérlet</p>
				<p class="text-center my-0">1 hónap: 5.000Ft</p>
				<p class="text-center my-0">6 hónap: 25.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 40.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Felnőtt kombinált bérlet</p>
				<p class="text-center my-0">1 hónap: 13.000Ft</p>
				<p class="text-center my-0">6 hónap: 68.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 120.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Kedvezményes gym bérlet</p>
				<p class="text-center my-0">1 hónap: 8.000Ft</p>
				<p class="text-center my-0">6 hónap: 40.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 70.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Kedvezményes szauna bérlet</p>
				<p class="text-center my-0">1 hónap: 4.000Ft</p>
				<p class="text-center my-0">6 hónap: 20.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 32.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">Kedvezményes kombinált bérlet</p>
				<p class="text-center my-0">1 hónap: 10.000Ft</p>
				<p class="text-center my-0">6 hónap: 50.000Ft</p>
				<p class="text-center mt-0 mb-3">12 hónap: 90.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">1 alkalmas gym jegy</p>
				<p class="text-center mt-0 mb-3">1.500Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">1 alkalmas szauna jegy</p>
				<p class="text-center mt-0 mb-3">1.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">1 alkalmas kombinált jegy</p>
				<p class="text-center mt-0 mb-3">2.200Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">10 alkalmas gym jegy</p>
				<p class="text-center mt-0 mb-3">1.4000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4" style="border-right:2px solid #86C232;">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">10 alkalmas szauna jegy</p>
				<p class="text-center mt-0 mb-3">9.000Ft</p>
			</div>
			<div class="col-sm-12 col-lg-4">
				<p class="text-center"><img src="img/logo.png" width="50" height="50" alt="logo">10 alkalmas kombinált jegy</p>
				<p class="text-center mt-0 mb-3">20.000Ft</p>
			</div>
		</div>
		<p class="my-0">*Minden bérlet napi 1 alkalomra jogosít fel.</p>
		<p class="my-0">*A kedvezményes bérleteket csak diákok, nyugdíjasok illetve sérültek vehetik igénybe (orvosi igazolással).</p>
		<p class="my-0">*Az alkalmakra vonatkozó jegyeket nem áll módunkban kedvezményesen értékesíteni, illetve a vásárlástól számítva 60 napig felhasználhatók.</p>
	</div>

	<h4 class="text-center my-5">Termünkben lehetőség van személyi edző felkérésére, az edzők elérhetősége a főoldalon található!</h4>

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