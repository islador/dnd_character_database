# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $(document).on "page:change", ->
    $('.characters__table').dataTable()

    $(".characters__row").click ->
      target = $(event.target)
      character_id = $(@).attr("data-character-id")

      $(location).attr('href',"/characters/#{character_id}")
