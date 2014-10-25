window.Velox ?= {}
window.Velox.Framework ?= {}
window.Velox.Framework.Templating ?= {}


class Velox.Framework.Templating.BaseTemplate
  _params: {}

  setParams: (params) ->
    @._params = params
  getParams: ->
    return @._params
  get: (name, defaultVal) ->
    return if @._params[name]? then @._params[name] else defaultVal
  getInt: (name, defaultVal) ->
    return parseInt @.get(name, defaultVal)