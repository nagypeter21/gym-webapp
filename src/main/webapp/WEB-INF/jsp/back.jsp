<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Hát</title>
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
		<h1 class="text-center"><span class="span">HÁT</span></h1>
		<p>Testünk második legnagyobb izomcsoportja a hátizom, közvetlenül a comb izomzata után. A hátizom legszembetűnőbb és legdominánsabb része a széles hátizom, amely férfiaknál akár szemből is igen jól látható a trapézizmokkal (A trapézizom felső harmadát hívjuk csuklyásizomnak.) egyetemben.</p>
		<p>A trapézizom fő feladata a lapockák hátra- és felfelé húzása. Az evező, felhúzó és vállvonogató gyakorlatoknál bekapcsolódik a széles hátizom munkájába. Az edzését érdemes egy napra időzíteni a széles hátizoméval, így kevesebb munkával is képesek leszünk fejlődésre ösztönözni azt. Edzésénél a relatíve magas ismétlésszámokat helyezzük előnybe, mert felépítését tekintve nagyrészt lassú izomrostokból áll.</p>
		<p>A széles hátizom feladatai a könyék lehúzása, hátra húzása és befelé forgatása. Edzésénél érdemes lehúzásokat és evező gyakorlatokat alkalmazni, más-más dőlésszöggel és fogásszélességekkel kombinálva a lehető legteljesebb stimuláció érdekében.</p>
		<p>A mély hátizom a gerinc oldalán végig futó, páros, erős izomoszlop. Ezek segítenek minket az előre és oldalra hajolásban, védik és stabilizálják a gerincoszlopot. Testünk egyik legsérülékenyebb része a gerincoszlopunk, így a gerincmerevítő izom fejlesztése igen fontos feladat. Ha a gerincmerevítő izom elernyed például előre dőlés közben, a terhelés a csigolyákra helyeződik, (Ezért mondják, hogy mindig egyenes háttal emeljünk.) és rövid úton is akár súlyos sérüléshez vezethet.
		Edzését magas ismétlésszámokkal érdemes végezni (tekintve, hogy lassú izomrostok alkotják), fokozott odafigyeléssel!</p>
		<hr>
		<h3 class="text-center my-3">Legjobb gyakorlatok</h3>
		<div class="row">
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Felhúzás</p>
				<iframe src="https://www.youtube.com/embed/VL5Ab0T07e4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Kettlebell lengetés</p>
				<iframe src="https://www.youtube.com/embed/YSxHifyI6s8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Húzódzkodás</p>
				<iframe src="https://www.youtube.com/embed/eGo4IYlbE5g" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fűrészelés</p>
				<iframe src="https://www.youtube.com/embed/djKXLt7kv7Q" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fordított evezés</p>
				<iframe src="https://www.youtube.com/embed/hXTc1mDnZCw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Mellhez húzás</p>
				<iframe src="https://www.youtube.com/embed/O94yEoGXtBY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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