$(function(){

  $('#new_trip').click(new_trip);
  // $('#new-dest-modal').trigger('click');
  // $('a.close-reveal-modal').trigger('click');
  // $('a.reveal-link').trigger('click');

});

function new_trip()
{
  $('.itinform.hide').removeClass('hide');
  return false;
}