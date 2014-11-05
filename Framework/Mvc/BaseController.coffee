window.Velox ?= {}
window.Velox.Framework ?= {}
window.Velox.Framework.Mvc ?= {}

class Velox.Framework.Mvc.BaseController
  invoke: (component, controller, action, params = {}) ->
    dispatcher = new Velox.Framework.Mvc.Dispatcher component, controller, action, params
    return dispatcher.dispatch()
###
  render: () ->
    $container = $('<div></div>')
    $container.append('<h1 class="text-center">Ay esi urish baaaaan</h1>')
    return $container
###
