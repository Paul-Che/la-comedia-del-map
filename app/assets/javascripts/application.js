//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require_tree .

$(document).ready(function(){
  $('.datepick').datepicker({
      format: "dd/mm/yyyy",
      weekStart: 1,
      autoclose: true,
      todayHighlight: true
  });
});
