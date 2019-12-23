$(function() {
  $('.navToggle').click(function(){
    $(this).toggleClass('active');

    if($(this).hasClass('active')){
      $('.sp').addClass('active');
    } else {
      $('.sp').removeClass('active');
    }
  });
});