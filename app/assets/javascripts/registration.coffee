$(document).on 'page:change', ->
  $('.register_link_dropdown').click (e) ->
    e.preventDefault()
    initPopup($('#signup_dialog'))

  $('#register_form').submit (e) ->
    e.preventDefault()
    $(this).formvalidate
      failureMessages: true
      messageFailureClass: 'input-error'
      onSuccess: (form) ->
        form.submit()
initPopup = (popup) ->
  mask = $('#mask')
  parent = popup.parent()

  open = ->
    popup
      .appendTo('body')
      .velocity("transition.shrinkIn", {
          duration: 200
      })
    mask
      .css("display", "block")
      .velocity({
        opacity: 0.5
      });
  close = ->
    if popup.is(':hidden')
      return
    popup
      .appendTo('body')
      .css('display', 'block')
      .velocity("transition.shrinkOut", {
        duration: 200
        complete: ->
                    popup.appendTo(parent)
      })
    mask
      .velocity({
        opacity: 0
      }, ->
        mask.css('display', 'none')
      );
  open()

  mask.on "click", ->
    close()

  Mousetrap.bindGlobal 'escape', ->
    close()
