window.Velox ?= {}
window.Velox.Framework ?= {}
window.Velox.Framework.Mvc ?= {}

class Velox.Framework.Mvc.BaseController
###
  render: () ->
    $container = $('<div></div>')
    $container.append('<h1 class="text-center">Ay esi urish baaaaan</h1>')
    return $container
###
