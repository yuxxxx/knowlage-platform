# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("section.comments").hide()
  $('.show-comments').click () ->
    id = $(this).attr('data-id')
    $("section.comments[data-id=#{id}]").show()