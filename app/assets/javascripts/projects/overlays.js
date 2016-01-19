addOverlay = function(image){
  $("#overlay").width(image.css("width"));
  $("#overlay").height(image.css("height"));
  $("#overlay").css("top", image.offset().top + "px");
  $("#overlay").css("left", image.offset().left + "px");
  $("#overlay").html('<div class = "imagelabel">' + image.attr('id') + '</div>');
}

removeOverlay = function(){
  $("#overlay").width(0);
  $("#overlay").height(0);
  $("#overlay").html('');
}

$(document).ready(function(){
  $('.project').mouseenter(function(){
    addOverlay($(this));
  });

  $('#overlay').mouseleave(function(){
    removeOverlay();
  });

  $('#overlay').click(function(){
    $.ajax({
      data: {key: $(this).text()},
      url: '/website/projects/show'
    })
    .done(function(result){
      $('#content').html(result['partial'])
    })
  })
})