$(function(){

	$('.dropdown-menu').click(function(e) {
        e.stopPropagation();
    });

    $("#carousel-pro").owlCarousel({
    	items : 6,
    	itemsDesktop : false, //5 items between 1000px and 901px
		itemsDesktopSmall : false, // betweem 900px and 601px
		itemsTablet: false, //2 items between 600 and 0
		itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
    	navigation : false
    });

	$('.select-styled').selectpicker({
        caretHTML: '<span class="select-caret"></span>'
    }); 

})