window.Velox ?= {}
window.Velox.Framework ?= {}
window.Velox.Framework.Mvc ?= {}

class Velox.Framework.Mvc.Dispatcher
  constructor: (@_component, @_controller, @_action, @_params = {}) ->

  getComponent: ->
    @_component

  setComponent: (component) ->
    @_component = component

  getController: ->
    @_controller

  setController: (controller) ->
    @_controller = controller

  getAction: ->
    @_action

  setAction: (action) ->
    @_action = action

  dispatch: () ->
    if @_component == null
      throw 'Dispatcher requires "component" to dispatch'
    if @_controller == null
      throw 'Dispatcher requires "controller" to dispatch'
    if @_action == null
      throw 'Dispatcher requires "action" to dispatch'

    classFqn = '' + @_component + '.Controller.' + @_controller
    classFqn = classFqn.split '.'

    controllerClass = window
    for part in classFqn
      if controllerClass[part]?
        controllerClass = controllerClass[part]
      else
        throw '' + part + ' doesn\'t exists in ' + classFqn.join('.')

    controller = new controllerClass();

    if controller[@_action + 'Action']?
      return controller[@_action + 'Action']()
    else
      throw '' + @_action + 'Action doesn\'t exist in ' + classFqn.join('.')

