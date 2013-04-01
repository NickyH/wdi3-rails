class Home
  @document_ready: ->
    words = $('.words').text()
    $('#slider').slider({ min: 0, max: words, step: 1, slide: Home.sliding })

  @sliding: (e, ui) ->
    word_id = $('#word').data('word-id')
    count = ui.value
    settings =
      dataType: 'script'
      type: 'get'
      url: " "
    $.ajax(settings)


$(document).ready(Home.document_ready)