window.Velox ?= {}
window.Velox.Extra ?= {}

class Velox.Extra.FlashBag
  addMessage: (type, msg, autohide = true) ->
    $msg = $ "
        <div class='alert alert-#{type} alert-dismissible' style='position: fixed; width: 100%; z-index: 9999;' role='alert'>
          <button type='button' class='close' data-dismiss='alert'>
            <span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>
          </button>
          #{msg}
        </div>"
    $msg.hide()
    $('body').prepend $msg
    $msg.slideDown 500, ->
      if autohide
        setTimeout ->
          $msg.slideUp(500)
        , 1000
