# import Sample from 'models/sample'
# require models/sample

describe "Sample", ->
  describe 'constructor', ->

    it "assigns the property 'name'", ->
      sample = new Sample('name')
      expect(sample).to.have.all.keys('name')
