$(document).ready(function(){
  $(".back").click(function(event){
    event.preventDefault();
    $.ajax(
    {
      url:'/website/projects'
    })
    .done(function(result){
      $('#content').html(result['partial'])
    })
  })
})