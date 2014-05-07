# # SamsComp Debug
# #### `debug` String ( optional )
# A handy option for granular debug logs.
# `all` logs all messages from this component.
# Set debug to any string to only log messages that contain that string
# ##### client examples
#   + `rendered` logs the instantiated component on render
#   + `destroyed` logs when the component is detroyed
#   + `initialized` logs the inital state of the datatable after data is acquired
#   + `options` logs the datatables options for that instantiated component
#   + `fnServerData` logs each request to the server by the component
# ##### server examples
#   + `"query"` : will log the base and filtered queries for every subscription.
#   + `"added"` : will log all documents added to subscriptions.
#   + `"changed"` : will log all documents changed for a subscription.
#   + `"removed"` : will log all documents removed from a collection.
SamsCompMixins.Debug =
  # ##### isDebug()
  isDebug: ->
    if Meteor.isClient
      return @getData().debug or false
    if Meteor.isServer
      return DataTable.debug or false


  # ##### log()
  log: ( message, object ) ->
    if Meteor.isClient
      if @isDebug()
        if @isDebug() is "all" or message.indexOf( @isDebug() ) isnt -1
          console.log "sams-comp:#{ @getSelector() }:#{ message } ->", object
    if Meteor.isServer
      if SamsComp.isDebug()
        if message.indexOf( SamsComp.isDebug() ) isnt -1 or SamsComp.isDebug() is "all"
          console.log "sams-comp:#{ message } ->", object

SamsComp.Debug.debug = false if Meteor.isServer