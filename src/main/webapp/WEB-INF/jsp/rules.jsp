<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Szabályok</title>
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
		<div class="row">
			<div class="col-12 text-center">
				<img class="d-none d-xl-block mb-4" style="width:100%;" src="img/bg.jpg" alt="p4">
				<h3 class="mb-5"><span class="span">P4 Gym Házirend</span></h3>
				
				<h4 class="my-4">Általános szabályok</h4>
				
				<p>- a kultúrált viselkedés írott és íratlan szabályainak betartása</p>
				<p>- a rend és tisztaság megtartása kötelező (a súlyokat pakold vissza az eredeti helyére!)</p>
				<p>- használj törölközőt</p>
				<p>- ne zavarj másokat az edzésben</p>
				<p>- a P4 fitnessben dolgozóknak jogukban áll felszólítani a szabályok betartására</p>
				<p>- a gépeket használat után vissza kell helyezni az eredeti állapotukba</p>
				<p>- összeszerelhető súlyok esetén súlyrögzítő használata kötelező</p>
				<p>- csoportos edzésekre a recepciónál kell jelentkezni</p>
				<p>- a terem igénybevétele előtt a használat díját kötelező a recepciónál kifizetni</p>
				<p>- ellátást igénylő sérülés esetén kötelező a recepciósokat értesíteni</p>
				<p class="mb-5">-a termi etikett illetve szabályok az üzemeltető belátása szerint bármikor módosulhatnak</p>
				
				<h4 class="my-4">A Fitness egész területén <span style="color:red;">TILOS</span></h4>
				
				<p>- dohányozni vagy alkoholt fogyasztani</p>
				<p>- ittas vagy drog hatása alatt álló személynek tartózkodni</p>
				<p>- drogok, tiltott doppingszerek, narkotikumok fogyasztása, értékesítése, vagy ezekkel való visszaélés</p>
				<p>- minden másokat erős zajjal, szaggal vagy egyéb környezeti ártalommal járó zavaró tevékenység (az edzésnek természetesen hangja van, ezt mi is tudjuk, itt a felesleges ordibálásról, súlydobálásokról és hasonló esetekről beszélünk)</p>
				<p>- veszélyes anyagok/tárgyak, alkohol, állat behozatala</p>
				<p>- az üzemeltető engedélye nélkül kereskedelmi tevékenység, reklám, propaganda, hang és képanyag készítése</p>
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