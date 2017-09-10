function checkScroll(){
    var startY = $('.navbar.transparent').height() * 3;

    if($(window).scrollTop() > startY){
        $('.navbar.transparent').addClass("scrolled");
    }else{
        $('.navbar.transparent').removeClass("scrolled");
    }
}

$(function () {
  if($('.navbar.transparent').length > 0){
      $(window).on("scroll load resize", function(){
          checkScroll();
      });
  }
})
