'use strict'

Tinytest.add '__coffeescriptShare is defined', (test) ->
  test.isNotNull __coffeescriptShare, '__coffeescript is not defined'


Tinytest.add 'share is defined', (test) ->
  test.isNotNull share, 'share is not defined'


if Object.is?
  Tinytest.add '__coffeescriptShare and share are the same object', (test) ->
    test.isTrue(Object.is(__coffeescriptShare, share),
                '__coffeescriptShare and share are not the same object')


# Share test, see tests/tests_2.coffee.
share.test = 'test'

