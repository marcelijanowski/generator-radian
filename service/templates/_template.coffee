define [
  'service/radian-service'
], (RS) ->
  class extends RS
    @register '<%= _.camelize(name) %>Service', [
      '$q'
      '$resource'
    ]

    init: () ->
      @fooBar = @$resource '/foo/bar.json'