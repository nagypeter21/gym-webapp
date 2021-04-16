<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Has</title>
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
	          <a class="nav-link" href="/">Rólunk</a>
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
		<h1 class="text-center"><span class="span">HAS</span></h1>
		<p>A test középső izmainak, ismertebb nevén törzs izmainak megerősítése az egészséges mozgás alapfeltétele. Ha jó eredményeket szeretnél elérni, akkor a test középtájéki izmait sem hanyagolhatod el, hiszen azok minden összetett mozgást igénylő gyakorlatnál elengedhetetlenül szükségesek. Ha nincsenek a törzsizmaid megerősítve, a mozgásodat sem tudod megfelelően kontrollálni. Ha nincsen az alsó hátizmod és a hasad izmai kellőképpen megerősítve, úgy előbb-utóbb sérüléseket szedsz majd össze, a gerinced egészségéről már nem is beszélve. Hiába van a fókusz látszólag a karokon, a lábakon, végezz bármilyen mozgást, a törzsizmaid dolgoznak főként, és ezt sose felejtsd el. A törzsizmok edzése mindenekelőtt, minden csak ezután következik, és nem utolsósorban egy újabb nyomós érv, hogy a test egészére kell dolgozni, nemcsak arra, amivel nem vagytok megelégedve.</p>
		<p>Ne sunnyogd hát el a hasizomfejlesztő gyakorlatokat. Ne hagyd őket az edzés végére, ne hagyd akkorra, amikor már lefáradsz, mert a hasgyakorlatok nagyon nehezek és kimerítőek. Tedd az edzéseid elejére, így nem fogod kikerülni. Ha a végére hagyod, 10-ből hatszor nem fogod megcsinálni. Tudjuk mindketten, hogy nem fogod, ezért tedd az edzés elejére, és meg van oldva.</p>
		<p>Diétázd le magad, és látszani fog, mert minél alacsonyabb a testzsírszázalékod, annál jobban fog látszódni a tested körvonala, és ez igaz a tested egészére is, nemcsak a hasadra.</p>
		<p>Férfiaknál 10-12%, nőknél 15-16% testzsír környékén már látszanak a kontúrok, de igazán 8-10%, illetve 12% az a határ, amely alatt nagyon látványos lesz az eredmény. Itt persze meg kell jegyeznem, hogy a nőknek nem nagyon kéne 15% alá vinni a testzsírszázalékukat, mert csúnyán felborul a hormonháztartásuk, aminek következtében a hormonrendszerük is, de akit ez nem nagyon érdekel, az vigye be alá.</p>
		<hr>
		<h3 class="text-center my-3">Legjobb gyakorlatok</h3>
		<div class="row">
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Halott bogár</p>
				<iframe src="https://www.youtube.com/embed/4XLEnwUr1d8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Plank</p>
				<iframe src="https://www.youtube.com/embed/pSHjTRCQxIw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Hasprés</p>
				<iframe src="https://www.youtube.com/embed/Xyd_fa5zoEU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fordított Hasprés</p>
				<iframe src="https://www.youtube.com/embed/gAyTBB4lm3I" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Felülés</p>
				<iframe src="https://www.youtube.com/embed/1fbU_MkV7NE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Sárkány zászló</p>
				<iframe src="https://www.youtube.com/embed/pvz7k5gO-DE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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