class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#search_top').on('keydown', '#search', Home.filter_products)


  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  filter_products: (e) ->
    query = $('#search').val()
    settings =
      dataType: 'script'
      type: 'get'
      url: "/products/search?query=#{query}"
    $.ajax(settings)


#   @sliding: (e, ui) ->
#     album_id = $('#album').data('album-id')
#     count = ui.value
#     settings =
#       dataType: 'script'
#       type: 'get'
#       url: "/albums/#{album_id}/filter?count=#{count}"
#     $.ajax(settings)


$(document).ready(Home.document_ready)