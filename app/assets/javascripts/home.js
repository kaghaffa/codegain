$(function(){
  var sections = $('section');
  var heights = [];

  for( var i in sections ) {
    heights.push(sections[i].offsetHeight - 32);
  }

  $(window).scroll(function() {

    $('.nav li.active').removeClass('active');

    var scroll = $(window).scrollTop();

    if( scroll <= heights[0] ) {
      $('.nav li').slice(0, 1).addClass('active');
    } else if( scroll >= heights[0] && scroll <= heights[0] + heights[1] ) {
      $('.nav li').slice(1, 2).addClass('active');
    } else if( (scroll >= (heights[0] + heights[1])) && (scroll <= (heights[0] + heights[1] + heights[2]))) {
      $('.nav li').slice(2, 3).addClass('active');
    } else {
      $('.nav li').slice(-1).addClass('active');
    }
  })
});

$(function() {
   $('.notice').delay(500).fadeIn('normal', function() {
      $(this).delay(2500).fadeOut();
   });
});

$(function() {
  $('label').focusout(function() {
    $(this).find('span').removeClass('test');
  })

  $('label').focusin(function() {
    $(this).find('span').addClass('test');
  })
});

$(document).ready(function(){
  $("#new_message").validate();
});
