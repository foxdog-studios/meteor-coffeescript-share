'use strict'

# See tests/tests_1.coffee for share.test's assignment
Tinytest.add 'Share an objects', (test) ->
  test.equal share.test, 'test', 'string was not shared'

