/*
multi-line comment
alert('Hello world');
*/

//single line comment

var first = prompt('Enter yout name');
//alert('You just entered in ' + first);
console.log('You just entered in ' + first);

var age = prompt('Enter your age');
age = parseInt(age);

if(age > 18)
{
  console.log('You are a major');
}
else
{
  console.log('Youa are a minor');
}

switch(age)
{
  case 10:
    console.log('Youare 10');
    break;
    case 20:
    console.log('Youare 20');
    break;
    case 30:
    console.log('Youare 30');
    break;
    case 40:
    console.log('Youare 40');
    break;
    case 50:
    console.log('Youare 50');
    break;
    default:
    console.log('Age not specified');
}

var colors = [];
var color = prompt('Enter any color');

while(color != 'q')
{
  colors.push(color);
  color = prompt('Enter any color');
}

for(var index = 0; index < colors.length; index++)
{
  console.log('the color is: ' + colors[index]);
}

function square(number)
{
  return (number * number);
}

function cube(number)
{
  return (square(number) * number);
}

function area(length, width)
{
  return (length * width);
}

function get_number(message)
{
  return parseInt(prompt(message));
}

var response = prompt('(s)quare, (c)ube, (a)rea, (q)uit');

while(response != 'q');
 {
  response = parseInt(response);



switch(response)
{
  case 's':
    var squared = square(get_number('Enter a number to be squared'));
    console.log('the square is ' + squared)
    break;
    case 'c':
    var cubed = cube(get_number('Enter a number to be cubed'));
    console.log('the cube is ' + cubed)
    break;
    case 'a':
    var length = get_number('Enter length');
    var width = get_number('Enter width');
    console.log('the area is ' + area(length, width));
    break;
    default:
    console.log('No selection made');
 }

 response = prompt('(s)quare, (c)ube, (a)rea, (q)uit');
}