window.Velox ?= {}

Velox.run = (component, controller, action) ->
  Velox.require 'Velox.Framework.Mvc.Dispatcher', =>
    dispatcher = new Velox.Framework.Mvc.Dispatcher(component, controller, action)
    dispatcher.dispatch()