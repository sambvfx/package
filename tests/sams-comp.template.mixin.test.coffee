Tinytest.add "SamsComp - chooseTemplate()", ( test ) ->
  test.notEqual Template[ Template.sams-comp.defaultTemplate ], undefined, "Expected the default_sams-comp_template to be defined."
  test.equal Template.sams-comp.chooseTemplate(), Template[ Template.sams-comp.defaultTemplate ], "Calling chooseTemplate without a param returns the default_sams-comp_template."
  test.notEqual Template.sams-comp.chooseTemplate('undefined_template'), undefined, "chooseTemplate() should never return undefined."
  # stub some_template being defined
  Template['some_template'] = true
  test.equal Template.sams-comp.chooseTemplate('some_template'), Template['some_template'], "Passing a template name to chooseTemplate() returns that template."