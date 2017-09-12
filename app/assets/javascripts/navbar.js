function checkScroll(){
    var startY = $('.navbar_sm_md_lg.transparent').height() * 3;

    if($(window).scrollTop() > startY){
        $('.navbar_sm_md_lg.transparent').addClass("scrolled");
    }else{
        $('.navbar_sm_md_lg.transparent').removeClass("scrolled");
    }
}

$(function () {
  if($('.navbar_sm_md_lg.transparent').length > 0){
      $(window).on("scroll load resize", function(){
          checkScroll();
      });
  }
})
