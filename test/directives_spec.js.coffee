scope = null
compile = null
describe "directive", ->
  beforeEach module('app.directives')
  beforeEach inject(($rootScope, $controller, $compile)->
    scope = $rootScope.$new()
    ctrl = $controller(InfoCtrl,{$scope: scope})
    compile = $compile
  )

  it "changes to hello world on click", ->
    elm = compile("<p example></p>")(scope)
    elm.trigger('click')
    expect(elm.text()).toEqual("You clicked me")
    expect(scope.message).toEqual("hello world")
