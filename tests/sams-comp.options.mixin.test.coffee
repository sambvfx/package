Tinytest.add "SamsComp - default options", ( test ) ->
  test.notEqual Template.sams-comp.defaultOptions, undefined, "Expected defaultOptions to be defined on the client."