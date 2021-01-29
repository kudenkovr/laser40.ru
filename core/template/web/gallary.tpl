		<div class="section gallary _bg-light">
			<div class="container">
				<h2 class="caption _size-2 _center"><?=$title?></h2>
				<div class="owl-carousel">
<? foreach($this->model->getGallary() as $img): ?>
					<div class="owl-carousel-item _center">
						<p class="gallary-item"><img src="/images/gallary/<?=$img?>"></p>
					</div><? endforeach; ?>
				</div>
			</div>
		</div>
<script>
// https://owlcarousel2.github.io/OwlCarousel2/docs/api-options.html
$('.gallary .owl-carousel').owlCarousel({
	items: 2,
	loop: true,
	nav: false,
	center: true,
	margin: 30,
	stagePadding: 20,
	
	autoplay: false,
	
	dots: true,
	dotsEach: 3,
	
	responsive: {
		480: {
			items: 2,
			dotsEach: 3,
			slideBy: 2,
		},
		748: {
			items: 3,
			dotsEach: 3,
			slideBy: 2,
		},
		992: {
			autoplay: true,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			items: 4,
			dotsEach: 4,
			slideBy: 3,
		},
		1200: {
			autoplay: true,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			items: 5,
			dotsEach: 3,
			slideBy: 3,
		}
	}
});
</script>