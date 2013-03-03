$(function(){

  $('#add_color').click(add_color);
  $('#colors').on('click', '.box', set_color);
  $('#clear').click(clear);
  $('#canvas').on('mouseover', '.paint', paint_color);
  $('#add_image').click(add_image);
  $('#images').on('click', '.imagebox', set_image);
  $('#clearimage').click(clearimage);
  create_paint_boxes();
});

function set_image()
{
  var box = $(this);
  var image = box.css('background-image');
  $('#canvas').css('background-image', image);
}

function add_image()
{
  var url = $('#image').val();
  var box = $('<div>');
  var image = $('<img>');
  image = image.attr('src', url);
  newimage = image.addClass('imagebox');
  $('#images').append(newimage);
}

function add_image_canvas()
{
  clearcanvas
  var selectimage = $(this);
  var imageurl = $(this).children().first().attr('src');
  var background = $("<div />").css({
    background: "url(" + imageurl + ") no-repeat",
    width: "300px",
    height: "600px"
  });
  $('#canvas').addClass('canvasbox');
  $('.canvasbox').append(background);

}

function create_paint_boxes()
{
  for(var i = 0; i < 500; i++)
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').append(paint);
  }
}

function set_color()
{
  var box = $(this);
  $('#selected').css('background-color', box.css('background-color'));
}

function paint_color()
{
  var color = $('#selected').css('background-color');
  var box = $(this);
  box.css('background-color', color);
}

function add_color()
{
  var color = $('#color').val();
  var box = $('<div>');
  box.addClass('box');
  box.css('background-color', color);
  $('#colors').prepend(box);
  $('#color').val('');
  $('#color').focus();
}

function clear()
{
  $('.box').remove();
  $('#selected').css('background-color', 'white');
  $('#color').focus();
}

function clearimage()
{
  $('.imagebox').remove();
  $('.canvasbox').empty();
}

function clearcanvas()
{
  $('.canvasbox').empty();
}