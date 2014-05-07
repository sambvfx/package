Package.describe({
  summary: "test package luma"
});

Package.on_use(function (api, where) {
  api.use([
    'coffeescript',
    'underscore'
  ],[ 'client', 'server' ]);

  // for helpers
  api.use([
    'jquery',
    'ui',
    'templating',
    'spacebars'
  ], [ 'client' ]);

  api.export([], ['client','server']);

  api.add_files([
    'lib/package.coffee'
  ], [ 'client', 'server' ]);
});

Package.on_test(function (api) {
  api.use([
    'coffeescript',
    'package',
    'tinytest',
    'test-helpers'
  ], ['client', 'server']);

  api.add_files([
    'tests/package.test.coffee'
  ], ['client', 'server']);
});