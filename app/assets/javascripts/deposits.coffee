# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#deposit_lists').dataTable {}
  $('#deposit_depositer_id').select2 theme: 'bootstrap'
  return