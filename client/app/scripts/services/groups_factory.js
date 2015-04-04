'use strict';
app.factory('Group', ['$resource', function($resource) {
  return $resource('/api/groups/:id.json', null, {
    'update': { method:'PUT' }
  });
}]);