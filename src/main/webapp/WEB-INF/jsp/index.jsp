<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P4 Gym Debrecen</title>
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

    <div id="header_bg" class="container-fluid text-center text-white d-flex flex-column justify-content-center">
      <div class="row justify-content-center text-center">
          <div>
          	<p style="color: red; font-weight: bold">${status}</p>
            <h1>P4 Gym</h1>
            <p class="lead">Debrecen egyik legjobban felszerelt konditerme mindenkinek!</p>
            <p class="lead"> Látogass el hozzánk egy ingyenes alkalomra, a legmodernebb HOIST gépekkel és szaunával várjuk kedves vendégeinket.</p>
            <p>
          		<a href="/prices" class="btn my-2">ÁRAK</a>
        	</p>
          </div>
      </div>
    </div>
	
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div><img class="d-none d-md-block" src="img/about1.jpg" alt="about1" width="635" height="370"></div>
			<div><img class="d-none d-md-block" src="img/about2.jpg" alt="about2" width="634" height="370"></div>
			<div><img class="d-none d-md-block" src="img/about3.jpg" alt="about3" width="634" height="370"></div>
		</div>
	</div>
	
	<div class="container">
		<h3 class="text-center my-5">Bemutatkozás</h3>
		<div>
			<p>A P4 Gym Debrecen egyik legjobban felszerelt, hangulatos edzőterme. Nekünk fontos, hogy profi környezetben jó érezd magad edzés közben is. Célodnak megfelelően bármilyen edzéstervet folytathatsz nálunk, lehetőség van csoportos crossfit, aerobic illetve funkcionális edzésre is (a csoportos edzésekről személyesen a pultosoknál tudsz informálódni). Külön teremmel tudunk szolgálni a csoportos edzések számára. Gépparkunkat profi szakemberek javaslatai alapján válogattuk össze a legújabb HOIST termékekből. Személyi edzőink nagy tudással és tapasztalattal rendelkeznek, szaktudásuk a sport szinte minden szegletére kiterjed. Bármi is a célod, edzőink segítségével biztosan és a lehető legprofibb módon el tudod érni! Újonnan beépített szaunával várjuk vendégeinket, amely tökéletesen ellazít egy kiadós edzés után. Várunk szeretettel mindenkit a virág utca 33 szám alatt, tegyünk együtt az egészségért! </p>
		</div>
	</div>
	
	<div class="container-fluid">
		<h3 class="text-center my-5">Edzőink</h3>
		<div class="row">
			
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer1.jpg" alt="trainer1" width="280" height="420"> 
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Kiss Csaba</span></p>
				<p>Nálam nem lesz két ugyanolyan edzés: mindig törekszem változatosan, a kliensem egyedi igényeire szabva összeállítani az edzéstervet. Fogyni szeretnél, tömeget növelnél vagy épp állóképességet fejlesztenél? Minden cél elérhető, ha komolyan vesszük a közös munkát! </p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: kisscsaba@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36307832891</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer2.jpg" alt="trainer2" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Rácz Emese</span></p>
				<p>Meggyőződésem, hogy rengeteg múlik azon, hogyan végezzük a gyakorlatokat. Nem a gyorsaságon, hanem a precíz , pontos kivitelezésen van a hangsúly. Mindenképpen fontosnak tartom, hogy ne egy általános séma alapján foglalkozzak a vendégeimmel, hanem a személyre szabott edzéstervet tartom eredményesebbnek. Edzéseim alatt maximális figyelmet fordítok a vendégeimre, a gyakorlatok helyes kivitelezésére, motiválom, segítem őket.</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: raczemese@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +363049532821</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer3.jpg" alt="trainer3" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Debreczeni Andrea</span></p>
				<p>Kisgyermek korom óta sportolok, számos sportágat kipróbáltam az életem során, a sport, a mozgás, az egészséges életmód mindennapjaim része azóta is.
					2016- ban cseppentem az edzőtermek világába, az életem részévé vált.
					Óriási kihívásnak és tapasztalásnak éreztem, hogy versenyezzek, így 3 versenyszezont is tudhatok most magamnak mögött nagyon szép eredményekkel és ami ennél is fontosabb rengeteg tapasztalattal.</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: debreczeniandrea@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +367028378933</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer4.jpg" alt="trainer4" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Horváth Tamás</span></p>
				<p>Maximalista személyiségemnek és kitartásomnak köszönhetően mindig elértem azt amit akartam, úgy a sport mint az élet más területein, és szívesen segítek Neked is, tudásommal, motivációval céljaid elérésében! Keress bizalommal!</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: horvathtamas@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36308743376</p>
			</div>
			
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer5.jpg" alt="trainer5" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Nyeles Kornél</span></p>
				<p>Lételemem a tanítás, szeretném átadni azt a tudást, amit az eltelt évek alatt felhalmoztam magamban. Szeretném látni, nyomon követni hogyan változnak a vendégeim elégedett sportos vendégekké.</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: nyeleskornel@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36304637489</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer6.jpg" alt="trainer6" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Éles Ferenc</span></p>
				<p>Gyakorlatias embernek vallom magam, így mindig mindent tesztelek, kipróbálok, önmagamon vagy páromon, akinek pályafutását folyamatosan segítettem, támogattam. Így méltán lehetek büszke az ő sikereire is, amit a Fitnesz és Erőemelés sportágakban ért el, köztük GPC világkupa abszolút 1. hely is.</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: elesferenc@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36702844949</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer7.jpg" alt="trainer7" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Hajas Miklós</span></p>
				<p>Nyolc éve foglalkozom a súlyzós, sajáttestsúlyos illetve különböző eszközös mozgásformákkal.
					Instabil illetve felfüggesztéses edzésmódszerekkel, mint a TRX, Bodyrope és egyensúlytréning. Ha személyre szabott edzéstervre van szükséged,
					vagy jobban akarsz teljesíteni saját sportágadban, vagy a mindennapjaidban, keress fel!</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: kisscsaba@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36304784831</p>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 text-center">
				<img src="img/trainer8.jpg" alt="trainer8" width="280" height="420">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
				<p class="text-center mt-4"><span class="span">Szél Ádám</span></p>
				<p>Az edzéseimet 10 éve kezdtem el, ez idő alatt megtanultam, hogy hogyan használjam az izmaimat, hogy hogyan működik az agy és az izomat munkája együtt, mi, mitől és hogyan fejlődik… mire jó a kardió, a súlyzós edzés vagy akár a funkcionális edzések.
					Ha engem választasz garantálom Neked a változást!</p>
				<p class="mb-0 text-center">Elérhetőség:</p>
				<p class="mb-0 text-center">e-mail: szeladam@p4fitness.com</p>
				<p class="mb-0 text-center">tel: +36301123893</p>
			</div>
		</div>
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