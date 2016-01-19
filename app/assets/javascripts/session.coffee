$(document).on 'page:change', ->
  $('.link_dropdown').click (e) ->
    e.preventDefault()
    $('.login_dropdown .dropdown').toggle()

  $('#login_form').submit (e) ->
    e.preventDefault()
    $(this).formvalidate
      failureMessages: true
      messageFailureClass: 'label label-important'
      onSuccess: (form) ->
        form.submit()
