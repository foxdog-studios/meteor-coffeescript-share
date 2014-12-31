fds:coffeescript-share
======================

Exports Meteor's [CoffeeScript `__coffeescriptShare`][meteor-coffeescipt]
object so that you can [`'use strict'`][strict-mode] within your CoffeeScript
files.


Install
-------

```ShellSession
$ meteor add fds:coffescript-share
```


Background
----------

Meteor allows CoffeeScript users to share objects between files without
polluting the global namespace by creating properties on a special object,
`share`, e.g.;

__1_first.coffee__
```CoffeeScript
share.greet = (name) ->
  console.log "Hello, #{ name }!"
```

__2_second.coffee__
```CoffeeScript
share.greet 'World'
```

This works because when Meteor compiles a CoffeeScript file, it prepends;

```JavaScript
__coffeescriptShare = typeof __coffeescriptShare === 'object' ?
    __coffeescriptShare : {};
var share = __coffeescriptShare;
```

These statement ensure the global `__coffeescriptShare` exists assigns it to
a file-scope variable `share`.

However, strict mode wont let you create a global like this. Instead, a
`ReferenceError` is thrown (try adding `'use strict'` to the example above).

This packages safely creates and exports `__coffeescriptShare` so that you can
`'use strict'` in your CoffeeScript files.


Example
-------

To run the example;

```ShellSession
cd example
meteor
```

Open a browser and navigate to `http://localhost:3000` and check that
`Hello, World!` appears on the console. Then remove `fds:coffeescipt-share` and
which is explode;

```ShellSession
meteor remove fds:coffeescript-share
```

Then remove the `'use strict'` and see it work again, (but in lax mode*).

*I just made that name up.


[meteor-coffeescript]: https://docs.meteor.com/#/full/coffeescript "Meteor's coffeescript package documentation"
[strict-mode]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode "MDN's strict mode documentation"

