
var savings_balance = 1000;
var checking_balance = 1000;

$(function(){

  $('#btndepositsavings').click(add_savings);
  $('#btnwithdrawsavings').click(withdraw_savings);
  $('#btndepositchecking').click(add_checking);
  $('#btnwithdrawchecking').click(withdraw_checking);

});


function add_savings()
{
  var money = $('#entersavings').val();
  money = parseFloat(money);
  savings_balance = parseFloat(savings_balance);
  savings_balance = savings_balance + money;
  $('#balancesaving').text('$' + savings_balance);
}

function withdraw_savings()
{
  var money = $('#entersavings').val();
  money = parseFloat(money);
  savings_balance = parseFloat(savings_balance);
  if (savings_balance >= money){
    savings_balance = savings_balance - money;
    $('#balancesaving').text('$' + savings_balance);
  }
  else {
    $('#balancesaving').text('$' + savings_balance);
  }
}

function add_checking()
{
  var money = $('#enterchecking').val();
  money = parseFloat(money);
  checking_balance = parseFloat(checking_balance);
  checking_balance = checking_balance + money;
  $('#balancechecking').text('$' + checking_balance);
}

function withdraw_checking()
{
  var money = $('#enterchecking').val();
  money = parseFloat(money);
  checking_balance = parseFloat(checking_balance);
  savings_balance = parseFloat(savings_balance);
  if (checking_balance < money){

    if (savings_balance + checking_balance >= money){
      var remain = money - checking_balance;
      remain = parseFloat(remain);
      savings_balance = savings_balance - remain;
      checking_balance = 0
      $('#balancechecking').text('$' + checking_balance);
      $('#balancesaving').text('$' + savings_balance);
      }

    else
    {
      $('#balancechecking').text('$' + checking_balance);
    }

  }

}
