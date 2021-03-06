<?php
include("php/config.php");
 ?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">


	<script type="text/javascript" src="notifit/js/notifIt.js"></script>
	<link rel="stylesheet" type="text/css" href="notifit/css/notifIt.css">

	<link rel="stylesheet" href="plagin/css/jquery.jqZoom.css" />

	<title>Рубашка Medicine</title>
</head>
<body>
	<div class="layot">
		<div class="product">
			<div class="product__preview"> 
				<div class="product__img__left">
					<div class="product__img__1" ><img src="images/2.png" width="90px"></div>
					<div class="product__img__1" ><img src="images/3.png" width="90px"></div>
					<div class="product__img__1" ><img src="images/4.png" width="90px"></div>
					<div class="product__button"><button><img src="images/button.png"></button></div>
				</div>
				<div class="product__img__right"><img src="images/1.png" width="400px"></div>
	</div>
			<div class="product__description">
				<div class="product__title">Рубашка MEDICINE</div>
				<div class="product__categories">
					<div class="product__categories__clothes">Рубашки Medicine</div>
					<div class="product__categories__clothes">Все модели Medicine</div>
					<div class="product__categories__clothes">Рубашки</div>
				</div>
				<div class="product__price">
					<div class="product__price__old">2699</div>
					<div class="product__price__new">2499&#8381</div>
					<div class="product__price__promo">2227&#8381 - с промокодом</div>
				</div>
				<div class="product__info">
					<div class="product__info__lamoda" ><img src="images/checkbox.png">В наличии в магазине <span>Lamoda</span></div>
					<div class="product__info__delivery"><img src="images/delivery.png">Бесплатная доставка</div>
				</div>
				<div class="product__actions">
					<div class="product__actions__store" onclick="not1()"><button>Купить</button></div>
					<div class="product__actions__favorites"><button>В Избранное</button></div>

				</div>

					<div class="product__counter">
						<button class="counter__btn" data-direction="minus">−</button>
						<input disabled type="text" value="0" class="counter__value">
						<button class="counter__btn" data-direction="plus">+</button>




					</div>

				<div class="product__text">
					Рубашка Medicine выполнена из вискозной ткани с клетчатым узором.
					Детали: прямой крой; отложной воротник; планка из маджеты на пуговицах; карман на груди.
				</div>
				<div class="product__share">
					<div class="product__repost">ПОДЕЛИТЬСЯ:</div>
					<div class="social_network"><a href="#"><img src="images/vk.png"></a>
					<a href="#"><img src="images/google.png"></a>
					<a href="#"><img src="images/facebook.png"></a>
					<a href="#"><img src="images/twitter.png"></a></div>
					<div class="product__share__123"><a href="#"><img src="images/123.png"></a></div>

				</div>
			</div>
		</div>
	</div>

<script src="main.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
	<script src="plagin/jquery.jqZoom.js"></script>
</body>
</html>