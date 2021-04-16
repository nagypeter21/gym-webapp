<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Mell</title>
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
		<h1 class="text-center"><span class="span">MELL</span></h1>
		<p>A mellkas izomzatát lényegében szinte teljes egészében a Pectoralis major, azaz a mellizom adja. Nincs alsó mell, felső mell, pláne külső meg belső mell... Mellizom van. Azt mindenki tudja, hogy a nyomó és tárogató mozdulatok során van szerepe elsősorban, valamint olyankor, amikor felülről lefelé húzod a karodat nagy erővel – ez az áthúzás, jól gondolod.</p>
		<p>A mellkas középső részén függőlegesen húzódik a Sternalis – egy gyakorlatilag funkció nélküli izom, edzeni nem tudsz rá – és a Pectoralis minor. Ez utóbbi a Pectoralis major alatt húzódik, és segíti annak munkáját a nyomások és az áthúzó mozdulatok során. Feladata emellett még a bordák megemelése, valamint a vállöv előre és lefelé húzása. Stabilizálja a lapockát is, amivel tovább segíti a nagy mellizom munkáját. Edzeni külön nem lehet rá, annyira együtt dolgozik a mellizommal.</p>
		<p>Ha a mellizom minden funkcióját ki akarod használni, akkor legyen az edzésedben ferdepados és egyenes pados gyakorlat, tárogató gyakorlat és áthúzó gyakorlat. Ezen belül hogy kézisúlyzó, vagy rúd, gép, vagy szabadsúly, ez már részletkérdés, a lényeg, hogy a mellizmodat minden irányból támadd meg, hogy megfelelően tudjon fejlődni – de ne aprózd szét az edzésedet, mert végső soron egyetlen izomról van szó! A formáját leginkább a genetikánk határozza meg, de mellizom gyakorlatok sokaságával építheted a mellkasod izomtömegét, így a strukturális gyengeségeidet is szépen felhozhatod.</p>
		<hr>
		<h3 class="text-center my-3">Legjobb gyakorlatok</h3>
		<div class="row">
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fekvenyomás</p>
				<iframe src="https://www.youtube.com/embed/vcBig73ojpE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fekvenyomás ferde padon</p>
				<iframe src="https://www.youtube.com/embed/SrqOu55lrYU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Kézisúlyzós nyomás</p>
				<iframe src="https://www.youtube.com/embed/SHsUIZiNdeY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Nyomás mellgépen</p>
				<iframe src="https://www.youtube.com/embed/xUm0BiZCWlQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Tolódzkodás</p>
				<iframe src="https://www.youtube.com/embed/yN6Q1UI_xkE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-xl-6 col-lg-12 my-2">
				<p class="text-center font-weight-bold mb-0">Tárogatás szabad súllyal vagy kábellel</p>
				<iframe src="https://www.youtube.com/embed/eozdVDA78K0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
		<h4 class="text-center my-3"><a href=/exercises class="linkgreen">Vissza az izomcsoportokhoz</a></h4>
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