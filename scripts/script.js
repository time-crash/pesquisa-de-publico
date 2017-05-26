$(document).ready(function(){
	$('.charCarousel').slick({
		dots: true,
		speed: 500,
		adaptiveHeight: true,
		autoplay: true,
		autoplaySpeed: 3000,
		mobileFirst: true,
		prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-2x fa-angle-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="fa fa-2x fa-angle-right"></i></button>',
	});
	$('.loading').remove();
});

function go_to(target, from){
	$('html,body').animate({
		scrollTop: $(target).offset().top},
		'slow');
}
