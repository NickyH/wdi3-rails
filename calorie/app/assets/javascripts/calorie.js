$(function(){

  $('#new_meal').click(show_meal_form);
  $('#new_food').click(show_food_form);
  $('#cancel_meal').click(hide_meal_form);
  $('#cancel_food').click(hide_food_form);
  $('#create_meal').click(create_meal);
  $( "#date" ).datepicker({
      showOn: "button",
      buttonImage: "/assets/calendar.gif",
      buttonImageOnly: true
    });
  $('#date').insertAfter( $('#date').next('img') );

});

function show_meal_form()
{
  $('.mealform').show();
  $('#new_food').hide();
  $('#new_meal').hide();
}

function show_food_form()
{
  $('.foodform').show();
  $('#new_food').hide();
  $('#new_meal').hide();
}

function hide_meal_form()
{
  $('.mealform').hide();
  $('#new_meal').show();
  $('#new_food').show();
  return false
}

function hide_food_form()
{
  $('.foodform').hide();
  $('#new_meal').show();
  $('#new_food').show();
  return false
}

function create_meal()
{
  var name = $('#name').val();
  var description = $('#description').val();
  var date = $('#date').val();
  var time = $('#time').val();
  var token = $('input[name=authenticity_token]').val();
  var user_id = $('#id').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/meals",
      data: {id:user_id, authenticity_token:token, name:name, description:description, date:date, time:time}
    }).done(display_meal);
  return false;
}

function display_meal(message)
{
  var li = $('<li>');
  var div1 = $('<div>');
  var div2 = $('<div>');
  var div3 = $('<div>');
  var div4 = $('<div>');
  var div5 = $('<div>');


  div1.addClass('meal');
  div2.addClass('meal');
  div3.addClass('meal');
  div4.addClass('meal');
  div5.addClass('clear');

  div1.text(message.name);
  div2.text(message.description);
  div3.text(message.date);
  div4.text(message.time);

  li.append([div1, div2, div3, div4]);
  $('#meals').append(li);

  hide_meal_form();
}