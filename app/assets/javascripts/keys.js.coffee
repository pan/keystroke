# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".capturing").keydown (event) ->
    mstr = ""
    if event.ctrlKey
      mstr = "CTRL "
      $("#key_ctrl").prop('checked', true)
    else
      $("#key_ctrl").prop('checked', false)
    if event.altKey
      mstr += "ALT "
      $("#key_alt").prop('checked', true)
    else
      $("#key_alt").prop('checked', false)
    if event.shiftKey
      mstr += "SHIFT"
      $("#key_shift").prop('checked', true)
    else
      $("#key_shift").prop('checked', false)
    $("#modifier").text(mstr)
    $("#tip").text(event.which)
    $("#key_code").val(event.which)

  $("#findkey").submit ->
    $("input[type='checkbox']").removeAttr("disabled")
