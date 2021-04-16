<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Triceps</title>
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
		<h1 class="text-center"><span class="span">TRICEPS</span></h1>
		<p>Minden testépítő tisztában van azzal, hogy a tricepsz a felkar izomzatának kétharmadát alkotja. Tehát, ha nagyobb karokat szeretnél, akkor ezt az izomcsoportot mindenképpen fejlesztened kell. Fejlett tricepsz nélkül nincs nagy kar!</p>
		<p>Ahogy a neve is elárulja, a tricepsz háromfejű izom, amelynek részei a hosszú-és középső (vagy rövid) fej, illetve oldalsó (vagy külső) fej. A tricepsznek két eredési helye és egy tapadási pontja van. Mindhárom fej a könyökízülethez kapcsolódik.</p>
		<p>A hosszú fej a váll-és lapocka ízületnél ered, míg a középső és oldalsó fej kiindulási pontja a felkarcsonton található. A tricepsz középső feje a legvaskosabb, a külső feje pedig patkó alakú, amennyiben ki van dolgozva  a teljes izom. A hosszú fej a felkar belső oldalán látható.</p>
		<p>Tricepszed fő funkciója a behajlított kar kinyújtása, feszítése. A tricepsz nyújtja ki az alkart a felkar rögzített helyzetében. A tricepsz a bicepsz közvetlen antagonista izma, vagyis amikor a bicepszet megfeszíted, akkor a tricepsz el van lazulva, és fordítva: amikor a tricepszet feszíted, akkor a bicepsz van ellazulva.</p>
		<p>A tricepsz további funkciója a kar mozgatása a törzs mögé. A kar kinyújtott helyzetében a tricepsz hosszú feje segíti a hátizmokat a felkar hátramozdításában, valamint a mellhez emelésében.</p>
		<hr>
		<h3 class="text-center my-3">Legjobb gyakorlatok</h3>
		<div class="row">
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Szűk nyomás rúddal</p>
				<iframe src="https://www.youtube.com/embed/nEF0bv2FW94" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Kábeles letolás csigán</p>
				<iframe src="https://www.youtube.com/embed/vB5OHsJ3EME" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Tricepsz tolódzkodás</p>
				<iframe src="https://www.youtube.com/embed/35PXVWP1XVs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Tricepsznyújtás fej fölött</p>
				<iframe src="https://www.youtube.com/embed/YbX7Wd8jQ-Q" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Koponyatörő</p>
				<iframe src="https://www.youtube.com/embed/d_KZxkY_0cM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-lg-6 col-sm-12 my-2">
				<p class="text-center font-weight-bold mb-0">Fekvőtámasz szűk tartással</p>
				<iframe src="https://www.youtube.com/embed/J0DnG1_S92I" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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