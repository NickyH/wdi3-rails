var timer = null;
var stockarray = [];
var activestock="";

$(function(){

  $('#cancelStock').click(hide_stockform);
  $(".stockpanel").on("click",".stockcheckbox", change_activestock);
  start_timer();
  // $('#stop').click(stop_timer);

});

function change_activestock()
{
  activestock = $(this).find('input:checkbox').prop("checked", true).val();
}



function select_chart()
{
  var selected = $(this).find('input:checkbox').prop("checked", true).val();
  get_quote(selected);
}

function start_timer()
{
  timer = setInterval(update_all_quotes_show, 2000);
}

// function stop_timer()
// {
//   clearInterval(timer);
// }

function get_quote(ticker)
{
    $.ajax({
      dataType: 'json',
      type: "get",
      url: "stocks/quotes/" + ticker,
    }).done(add_price);

    return false;
}

function update_all_quotes_show()
{
  for( var sym in quotes){
    get_quote(sym);
  }
  $('#charts').empty();
  show_chart();
}

function add_price(priceandname)
{
  var dp= {time:(new Date().getTime()), value:priceandname[0]};
  quotes[priceandname[1]].push(dp);
}


function show_chart()
{

  $('#chart').empty();
  new Morris.Line({
  element: 'chart',
  data: quotes[activestock],
  xkey: 'time',
  ykeys: ['value'],
  labels: ['quote'],
  ymin: 'auto',
  ymax: 'auto'
  });

}

function hide_stockform()
{
  $('#new_stock').hide();
}


