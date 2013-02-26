// $(function(){

//   $('#btncolor').click(body_color);
//   $('#btnhide').click(hideme);
//   $('#btnshow').click(showme);

// });

// // function cool_popup()
// // {
// //   var name = $('#name').val();
// //   alert(name + ', you have won 1 billion dollars!!!');
// // }

// function body_color()
// {
//   var color = $('#color').val();
//   $('body').css('background-color', color);
// }

// function hideme()
// {
//   $('h1').hide();
// }

// function showme()
// {
//   $('h1').show();
// }


$(function(){

  $('#btnarea').click(calculate);

});

function calculate()
{
   var width = $('#width').val();
   var length = $('#length').val();
   width = parseFloat(width)
   length = parseFloat(length)
   var area = width * length
   $('#answer').text(area);
}