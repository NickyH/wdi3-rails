function show_new_task_form()
{
  $('#new_task').hide();
  $('.taskform').show();
  $('#create_task').show();
  $('#update_task').hide();
  $('#title').val('');
  $('#description').val('');
  var date = moment().format("MM/DD/YYYY");
  $('#duedate').val(date);
  $('#address').val('');
  $('#is_complete').removeAttr('checked');
  $('#title').focus();
}

function hide_task_form()
{
  $('#new_task').show();
  $('.taskform').hide();
}

function create_task()
{
  var priority_id = $('#priority_id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#due_date').val();
  var is_complete = $('#is_complete').is(':checked');
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks",
      data: {authenticity_token:token, 'task[priority_id]':priority_id, 'task[title]':title, 'task[description]':description, 'task[due_date]':duedate, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function edit_task()
{
  show_new_task_form();

  var title = $(this).next().text();
  $('#title').val(title);
  var description = $(this).next().next().text();
  $('#description').val(description);
  var due_date = $(this).next().text();
  $('#due_date').val(due_date);
  var is_complete = $(this).next().next().text();
  $('#is_complete').val(is_complete);
  var address = $(this).next().next().next().text();
  $('#address').val(address);
}

function show_edit_task_form()
{
  $('#new_task').hide();
  $('.taskform').show();
  $('#create_task').hide();
  $('#update_task').show();
  $('#title').focus();
}

function delete_task()
{
  var task_id = $('.taskid.hide').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks",
      data: {authenticity_token:token, 'task[task_id]':task_id}
    }).done(remove_task);
}

  function remove_task()
  {
  }


  return false;
}

function update_task()
{
}

function process_task(task_list)
{
 add_task_to_array(task_list);
 sort_tasks();
 display_tasks();

}

function add_task_to_array(task_list)
{
  tasks = _.reject(tasks, function(t){})

}

function display_task(task)
{
  clear_markers();
  $('ul#tasks').empty();
  _.ech
  // add_marker(task.latitude, task.longitude, task.title);

  var li = $('<li>');
  var button = $('<button>');
  button.addClass('button radius success tiny buttonedittask').text('Edit Task');
  button.addClass('button radius alert tiny buttondeletetask').text('Delete Task');
  li.text(task.title);
  $('#tasks').append(li);

  hide_task_form();
}

function complete_task()
{

}

function sort_tasks()
{

}