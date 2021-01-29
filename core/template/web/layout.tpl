<!DOCTYPE html>

<html>
	<head lang="ru">
		<base href="<?=$site_url?>">
		<title><?=$title?></title>
		<meta name="title" content="<?=$title?>">
		
		<meta name="viewport" content="width=device-width">
		<link rel="stylesheet" href="/assets/plugins/rk.normalize-1.01.css">
		<link rel="stylesheet" href="/assets/plugins/rk.grid-3.07.css">
		<link rel="stylesheet" href="/assets/main.css?t=<?=time()?>">
		
		<script src="/assets/jquery-1.10.1.min.js"></script>
		<script src="/assets/plugins/anchors.js?t=<?=time()?>"></script>
		<script src="/assets/plugins/animatenumber.js?t=<?=time()?>"></script>
		<script src="/assets/plugins/jaxform.js?t=<?=time()?>"></script>
		<script src="/assets/pricelist.js?t=<?=time()?>"></script>
		<script src="/assets/calc.js?t=<?=time()?>"></script>
		<script src="/assets/main.js?t=<?=time()?>"></script>
		
		<!-- Owl Carousel 2 -->
		<link rel="stylesheet" href="/assets/plugins/owlcarousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="/assets/plugins/owlcarousel/assets/owl.theme.default.css">
		<script src="/assets/plugins/owlcarousel/owl.carousel.min.js"></script>
		
		
		<meta name="viewport" content="width=device-width">
	</head>
	
	<body><div class="body">
<?=$this->render('web/header')?>
<?=$content?>
<?=$this->render('web/footer')?>
		</div>
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(71124367, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/71124367" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
	</body>
</html>