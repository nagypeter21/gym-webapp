<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Láb</title>
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
		<h1 class="text-center"><span class="span">LÁB</span></h1>
		<p>Amikor eljön a lábedzés napja, néha eszünkbe jut, hogy el kellene menni a fogorvoshoz, meg a nagybevásárlást is meg kéne már ejteni...na meg el kellene menni az edzőterembe, de az már túl sok program, szóval a lábedzést "sajnos" ki kell hagyni. A lábat edzeni kell. Ez nem kérés, parancs. Persze csak abban az esetben ha jól akarsz kinézni.</p>
		<p>A láb izmainak felépítése bonyolult, ezért csak néhány fő izomcsoportot emelnék ki, amely segít megérteni miért kell bizonyos gyakorlatokat feltétlenül végezni.</p>
		<p>A combizmok, ezek közül az elülső négyfejű combizom, a hátsó kétfejű combizom, belső oldalon a közelítő izmok, a vádli és a hölgyek által igencsak kedvelt farizmok.</p>
		<p>Ezeket bőven lehetne még "boncolgatni" de amit feltétlenül tudnod kell, hogy a fent felsorolt izmokra nagy hangsúlyt kell fektetni a láb edzése során, és a különböző gyakorlatok révén a láb összes izmát meg tudod dolgoztatni.</p>
		<p>A láb izmai a többi izommal és izomcsoporttal ellentétben rendkívül gyorsan fejlődhet, ha  megfelelő módon és rendszerességgel tesszük ki terhelésnek. A probléma viszont az hogy a láb "komoly" edzését és a túledzést, egy vékony szál választja el egymástól. Ez is jelzi, hogy a lábedzés komoly feladat, és nem árt informálódni a témában.</p>
		<hr>
		<h3 class="text-center my-3">Legjobb gyakorlatok</h3>
		<div class="row">
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Guggolás</p>
				<iframe src="https://www.youtube.com/embed/bEv6CCg2BC8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Román felhúzás</p>
				<iframe src="https://www.youtube.com/embed/_oyxCn2iSjU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Kitörés</p>
				<iframe src="https://www.youtube.com/embed/D7KaRcUTQeE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Lábtoló</p>
				<iframe src="https://www.youtube.com/embed/IZxyjW7MPJQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Combfeszítés</p>
				<iframe src="https://www.youtube.com/embed/ljO4jkwv8wQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Combhúzás</p>
				<iframe src="https://www.youtube.com/embed/0a_fVS2s4Ho" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
		<h4 class="text-center my-3"><a href="/exercises" class="linkgreen">Vissza az izomcsoportokhoz</a></h4>
	</div>
	
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