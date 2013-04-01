$(function(){
    $('#stack').click(restack);
    $('.tower').click(select);
    $('#reselect').click(repick);

});
var selected;
var s;
var t_num;
var tower1 = [];
var tower2 = [];
var tower3 = [];
var towers = [tower1,tower2,tower3];

function repick(){
  selected = null;
  $('.tower').removeClass('selected');
}


function select(){
  t_num = $(this).attr('data-t');
  tower = towers[t_num];

  move = move_possible(tower);
  if(move){
    //update
    towers[$('.selected').attr('data-t')].shift();
    towers[t_num].unshift(selected);
    //No need to re-bind selected because it's already binded!
    change_selected(tower);
    showtower();
    repick();
    //change vis
  }else{
    reselect(tower);
  }

}
function reselect(tower){
  if(tower.length > 0){
    change_selected(tower);
  }else{
    //No change
  }
}


function change_selected(tower){
    $('.tower').removeClass('selected');
    var x = parseInt(t_num) +1
    $('#t'+x).addClass('selected');
    selected = tower[0]
    $('#s_show').text("Tower: " + (t_num)+ " Disk: "+ selected.val);
}

function move_possible(tower){
  if(tower[0] == null){
    comp = 99999999999 ;//SO FUCKIN BIG
  }else{
    comp = tower[0].val
  }
  if(selected != null && selected.val < comp){
      return true;
  }else{
    return false;
  }
}


function restack(){
  tower1 = [];
  tower2 = [];
  tower3 = [];
  var size = $('#num_disc').val();
  for(var i = 0; i < size;i++){
    disc = {val: i}
    tower1.push(disc)
  }
  towers[0] = tower1;
  showtower();
}


function showtower(){
  $('.tower').empty();
  for(var i = 0; i < towers.length;i++){
    for(var j = 0; j < towers[i].length ;j++){
      $('#t'+(i+1)).append("<div class='disk' data-val='"+towers[i][j].val +"'>"+towers[i][j].val+"</div>");
    }
  }
}