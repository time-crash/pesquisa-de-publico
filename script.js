$(document).ready(function(){
	$('.charCarousel').slick({
		dots: true,
		speed: 500,
		adaptiveHeight: true,
		autoplay: true,
		autoplaySpeed: 3000,
	});
});

function go_to(target){
	$('html,body').animate({
		scrollTop: $(target).offset().top},
		'slow');
}
