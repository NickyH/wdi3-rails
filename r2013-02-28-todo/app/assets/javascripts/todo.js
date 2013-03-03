$(function(){

  $('#new_priority').click(show_priority_form);
  $('#cancel_priority').click(hide_priority_form);
  $('#create_priority').click(create_priority);
  $('#priorities').on('click', '.color', edit_priority);
  get_colors();
  init_minicolors();
});

function init_minicolors()
{
  var settings = {
    animationSpeed: 100,
    animationEasing: 'swing',
    change: null,
    changeDelay: 0,
    control: 'hue',
    defaultValue: '',
    hide: null,
    hideSpeed: 100,
    inline: false,
    letterCase: 'lowercase',
    opacity: false,
    position: 'default',
    show: null,
    showSpeed: 100,
    swatchPosition: 'left',
    textfield: false,
    theme: 'default'
};
  $('INPUT.minicolors').minicolors(settings);
}

function get_colors()
{
  $('.priority.color.hide').each(display_box);
}

function display_box(index, color)
{
  var box = $(color);
  var current_color = box.text();
  box.removeClass('hide');
  box.css('background-color', current_color);
  box.text('');
}

function create_priority()
{
  var color = $('INPUT.minicolors').minicolors('rgbString');
  var name = $('#name').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();
  var priority_id = $('#priority_id').val();


  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/priorities",
      data: {id:priority_id, authenticity_token:token, color:color, name:name, value:value}
    }).done(display_priority);

  return false;
}

function display_priority(message)
{
  var li = $('<li>');
  var div1 = $('<div>');
  var div2 = $('<div>');
  var div3 = $('<div>');
  var div4 = $('<div>');
  var div5 = $('<div>');


  div1.addClass('priority').addClass('color');
  div2.addClass('priority');
  div3.addClass('priority');
  div4.addClass('priority');
  div5.addClass('clear');

  div1.css('background-color', message.color);
  div2.text(message.name);
  div3.text(message.value);
  div4.text(message.id);

  li.append([div1, div2, div3, div4, div5]);
  $('#priorities').append(li);

  hide_priority_form();
}

function show_priority_form()
{
  $('.form').show();
  $('#new_priority').hide();
}

function hide_priority_form()
{
  $('.form').hide();
  $('#submit_priority').show();
}

function edit_priority()
{
  var color = $(this).css('background-color');
  color = rgb2hex(color);
  $('input.minicolors').minicolors('value', color);
  var name = $(this).next();
  name = name.text;
  $('#name').val(name);
  var value = $(this).next().next().text();
  $('#value').val(value);

  show_priority_form();
}

function rgb2hex(rgb){
 rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
 return "#" +
  ("0" + parseInt(rgb[1],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[2],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[3],10).toString(16)).slice(-2);
}