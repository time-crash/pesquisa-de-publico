var maxheight = $("#thisis").outerHeight() - window.innerHeight;
var minheight = 0;

$(document).ready(function(){
	$('.charCarousel').slick({
		dots: true,
		speed: 500,
		adaptiveHeight: true,
		autoplay: true,
		autoplaySpeed: 3000,
	});
});

function go_to(target, from){
	maxheight += $(target).outerHeight();

	$('html,body').animate({
		scrollTop: $(target).offset().top},
		'slow');
}

$(window).scroll(function(e){
	if($(window).scrollTop() >= maxheight){
		$(window).scrollTop(maxheight);
	}
})
