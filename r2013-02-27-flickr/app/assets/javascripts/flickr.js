var storedphotos = [];
var timer = null;
var counter = 0;
var msec = 0;
var total_pages = 2;
var page = 1;
var per_page = 500;
var index = 0;

$(function(){
  $('#flickr').click(search_flickr);
  $('#clear').click(clear);
});

function search_flickr()
{
  var search = $('#search').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=7e0d78bfe171cae43846082a1cfef9da&text=' + search + '&per_page='+ per_page +'&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  var sec = parseInt($('#duration').val());
  msec = sec * 1000;
  storedphotos = data.photos.photo;
  index = 0;
  timer = setInterval(display_photo, msec);
}

function clear()
{
  $('#images').empty();
}

function display_photo(photo)
{
  var photo = storedphotos[index];
  var height = $('#height').val();
  var width = $('#width').val();
  var url = "url(http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg)";
  var image = $('<div>');
  image.addClass('image');
  image.css({'width' : width, 'height' : height, 'background-image' : url});
  $('#images').prepend(image);
  index++;
  if (index == per_page){
    page++;
    clearInterval(timer);
    search_flickr();
  }
}