var numbers = []
var timer = null;

$(function(){

  $('#addnumber').click(add_number);
  $('#square').click(square);
  $('#fn').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);
});

function start_timer()
{
  timer = setInterval(generate_random_number, 1000);

}

function stop_timer()
{
  clearInterval(timer);
}

function generate_random_number()
{
  var random = _.random(0, 1000);
  numbers.push(random);
  var box = $('<div>');
  box.addClass('box');
  box.text(random);
  $('#shownumbers').prepend(box);
}


function add_number()
{
  var numberbox = $('<div class= "clear">');
  var number = $('#number').val();
  number = parseInt(number);
  numbers.push(number);
  numberbox.addClass('numberboxclass');
  numberbox.text(number);
  $('#shownumbers').append(numberbox);
  $('#number').val('');
  $('#number').focus();
}

function square()
{
  empty_boxes();
  numbers = _.map(numbers, square_value);
  show_numbers();
}


function square_value(i)
{
  return i * i;
}

function show_numbers()
{
  _.each(numbers, create_number_box);
}

function create_number_box(i)
{
  var box = $('<div>');
  box.addClass('box');
  box.text(i);
  $('#shownumbers').prepend(box);
}

function empty_boxes()
{
  var clear = $('#shownumbers').children('.clear');
  $('#shownumbers').empty();
  $('#shownumbers').append(clear);
}

function generic_function()
{
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers();
}

function funky_calc(i)
{
  var equation = $('#number').val();
  return eval(equation);
}