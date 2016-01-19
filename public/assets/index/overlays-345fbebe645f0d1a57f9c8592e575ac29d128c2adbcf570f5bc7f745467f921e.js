addOverlay = function(image){
  $("#overlay").width(image.css("width"));
  $("#overlay").height(image.css("height"));
  $("#overlay").css("top", image.offset().top + "px");
  $("#overlay").css("left", image.offset().left + "px");
  // $("#overlay").html('<div class = "imagegreet">' + image.attr('id') + '</h5>')
}

removeOverlay = function(){
  $("#overlay").width(0);
  $("#overlay").height(0);
}

$(document).ready(function(){
  $('.mainimage').mouseenter(function(){
    addOverlay($(this));
  });
  $('#overlay').mouseleave(function(){
    removeOverlay();
  });
})
