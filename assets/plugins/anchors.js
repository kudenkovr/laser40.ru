;$(document).on('click', 'a[href^="#"]', function(){
	let scrollTo = $($(this).attr('href')).offset().top;
	console.log(scrollTo);
	$('html, body').stop().animate({scrollTop:scrollTo}, 500, 'swing');
	return false;
});