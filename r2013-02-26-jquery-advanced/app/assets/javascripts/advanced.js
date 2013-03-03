

$(function(){

  // $('#age').blur(blur_func);
  $('#age').change(validate_age);
  // $('body').mousemove(colorize);
  $('body').keypress(shortcut);

});

function shortcut(data)
{
  var text = $('#text').text();
  $('#text').text(text + String.fromCharCode(data.which));

  switch(String.fromCharCode(data.which))
  {
    case 'g':
    $('#text').css('color', 'green');
    break;
    case 'y':
    $('#text').css('color', 'yellow');
    break;
    case 'b':
    $('#text').css('color', 'blue');
    break;
    case 'p':
    $('#text').css('color', 'purple');
    break;
    case 'r':
    $('#text').css('color', 'red');
    break;
    default:
    $('#text').css('color', 'black');
    break;

  }
}

function colorize(eventdata)
{
  $('#x').removeClass();
  $('#y').removeClass();
  $('#x').text(eventdata.clientX);
  $('#y').text(eventdata.clientY);

  var color1 = (eventdata.clientY + eventdata.clientX)%256
  var color2 = (eventdata.clientY * eventdata.clientX)%256

  $('body').css('background-color', 'rgb('+ color1 +',' + color2 + ',' + color1 +')');

  if (eventdata.clientX % 2 ==0){
    $('#x').addClass('even');
  }
    else{
    $('#x').addClass('odd');
  }
   if (eventdata.clientY % 2 ==0){
    $('#y').addClass('even');
  }
    else{
    $('#y').addClass('odd');
  }
}

function validate_age()
{
$('h1').children('p').remove();
var x = $('<p>');
var age = $('#age').val();
age = parseInt(age)
if (age > 25){
  x.addClass('green').text('Your age is ' + age);
}
else if (age < 16){
  x.addClass('red').text('Your age is ' + age);
}
else {
  x.text('Your age is ' + age);
}

$('h1').prepend(x);

}