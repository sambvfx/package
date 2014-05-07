# # SamsComp Client
Template.sams-comp = _.extend Template.sams-comp, SamsCompComponent

# ##### rendered()
# When the component is first rendered datatables is initialized `templateInstance.__component__` is the this context
Template.sams-comp.rendered = ->
  templateInstance = @
  instantiatedComponent = templateInstance.__component__
  instantiatedComponent.log "rendered", @
  instantiatedComponent.initialize()

# ##### created()
Template.sams-comp.created = ->
  templateInstance = @
  instantiatedComponent = templateInstance.__component__
  instantiatedComponent.prepareSelector()
  instantiatedComponent.prepareOptions()
  instantiatedComponent.log "created", @

# ##### destroyed()
# Currently nothing is done when the component is destroyed.
Template.sams-comp.destroyed = ->
  templateInstance = @
  instantiatedComponent = templateInstance.__component__
  instantiatedComponent.destroy()
  instantiatedComponent.log "destroyed", @