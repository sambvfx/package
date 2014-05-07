# # SamsComp Component
if Meteor.isClient
  # Theses mixins are included, extend the component by creating your own mixins and merging them in here.
  SamsCompComponent = _.extend {},
    SamsCompMixins.Initialize,
    SamsCompMixins.Destroy,
    SamsCompMixins.Options,
    SamsCompMixins.Selector,
    SamsCompMixins.Template,
    SamsCompMixins.Utility,
    SamsCompMixins.Debug

  # The code below is an example of how to some default options for display and language options.
  # `SamsComp.defaultOptions = _.extend {}, SamsCompOptions.display, SamsCompOptions.language`
  SamsComp.defaultOptions = {}

  # The code below is an example of how to some preset options for dark and light layouts.
  # `SamsComp.presetOptions = _.extend {}, SamsCompOptions.darkLayout, SamsCompOptions.lightLayout`
  # The preset options you are merging in should have a key that matches a selector that is passed into the component on init.
  # SamsCompOptions.darkLayout =
  #   "sams-comp-dark-layout":
  #     background: "#000000"
  #     color: "#FFFFFF"
  SamsComp.presetOptions = {}
else if Meteor.isServer
  # Components are client only by default, but if you need to have a presence on the server you can define server mixins.
  # `SamsCompComponent = _.extend {}, SamsCompMixins.Debug`