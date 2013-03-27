scope = null
describe "InfoCtrl", ->
  beforeEach module('app.controllers')
  
  beforeEach inject(($rootScope,$controller)->
    scope = $rootScope.$new()
    ctrl = $controller(InfoCtrl,{$scope: scope})
  )
  it "has a message", ->
    expect(scope.message).toEqual("hello from me, I'm the angularController InfoCtrl")
