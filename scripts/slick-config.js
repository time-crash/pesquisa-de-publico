$(document).ready(function(){
	$('.charCarousel').slick({
		dots: true,
		speed: 500,
		autoplay: true,
		autoplaySpeed: 3000,
		prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-2x fa-angle-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="fa fa-2x fa-angle-right"></i></button>',
	});
	$('.loading').remove();
});
