$(document).on('turbolinks:load', function() {
  console.log('document is ready!', new Date());
  $('#task_name').focus();
});

$(document).on('turbolinks:load', function() {
  $('#task_name').focus();
  $('.modal-footer .btn-primary').click(function() {
    console.log($('.modal-body form'));
  });
});

$(document).on('turbolinks:load', function() {
  $('#task_name').focus();
  $('.modal-footer .btn-primary').click(function() {
    $('.modal-body form').submit();
  });
});
