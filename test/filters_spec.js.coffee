describe "filter", ->
  beforeEach module("app.filters")
  describe "capitalize", ->
    it "capitalizes first charater of string", inject((capitalizeFilter) ->
      expect(capitalizeFilter).toBeDefined()
      expect(capitalizeFilter("hello")).toEqual("Hello")
    )
