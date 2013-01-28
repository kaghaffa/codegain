$(function(){
  var sections = $('section');
  var heights = [];

  for( var i in sections ) {
    heights.push(sections[i].offsetHeight - 64);
  }

  $(window).scroll(function() {

    $('.nav li.active').removeClass('active');

    var scroll = $(window).scrollTop();
    if( scroll <= heights[0] ) {
      $('.nav li').slice(0, 1).addClass('active');
    } else if( scroll >= heights[0] && scroll <= heights[0] + heights[1] ) {
      $('.nav li').slice(1, 2).addClass('active');
    } else {
      $('.nav li').slice(-1).addClass('active');
    }
  })

});

$(function() {
  $('label').focusout(function() {
    $(this).find('span').removeClass('test');
  })
  
  $('label').focusin(function() {
    $(this).find('span').addClass('test');
  })
});
