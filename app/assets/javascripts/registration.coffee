$(document).on 'page:change', ->
  $('.register_link_dropdown').click (e) ->
    e.preventDefault()
    $('.register_dropdown .dropdown').toggle()

  $('#register_form').submit (e) ->
    e.preventDefault()
    $(this).formvalidate
      failureMessages: true
      messageFailureClass: 'label label-important'
      onSuccess: (form) ->
        form.submit()
