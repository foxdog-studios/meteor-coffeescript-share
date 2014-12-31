'use strict';

Package.describe({
  name: 'fds:coffeescript-share',
  summary: "Exports Meteor's CoffeeScript share object so you can 'use strict'",
  version: '1.0.0',
  git: 'https://github.com/foxdog-studios/meteor-coffeescript-share.git'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0.2.1');
  api.addFiles('main.js');
  api.export('__coffeescriptShare');
});

Package.onTest(function(api) {
  api.use('coffeescript');
  api.use('tinytest');
  api.use('fds:coffeescript-share');
  api.addFiles([
    'tests/tests_1.coffee',
    'tests/tests_2.coffee'
  ]);
});

