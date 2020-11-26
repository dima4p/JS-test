import Sample from '@/models/sample'

describe "Sample", ->
  set 'search', ->
    new Search null, null, null
  set 'viewer', ->
    searches: {}
    $set: (obj, key, value) ->
      obj[key] = value
    $root:
      stateMerge: (object1, object2) ->
        Object.assign object1, object2
      vueScrollwatch:
        currentNode:
          name: '1-12'
  set 'url', ->
    'http://my.url/1'
  set 'status', ->
    ''
  set 'lines', ->
    '0-1-10': 'Line 0 without fit'
    '0-1-11': 'Line 1 with search text'
    '0-1-12': 'Line 2 without fit'
    '0-1-13': 'Line 3 with search text'
    '0-1-14': 'Line 4 without fit'
    '0-1-15': 'Line 5 with search text'
    '0-1-16': 'Line 6 without fit'

  describe 'constructor', ->

    test "assigns the property 'name'", ->
      sample = new Sample('name')
      expect(Object.keys(sample)).toEqual(["amen"])

    undefined   # 'constructor'
  undefined   # "Sample
