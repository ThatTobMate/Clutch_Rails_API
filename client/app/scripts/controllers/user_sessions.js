// client/app/scripts/controllers/user_sessions.js

'use strict';

/**
 * @ngdoc function
 * @name clutchAppApp.controller:UserSessionsCtrl
 * @description
 * # UserSessionsCtrl
 * Controller of the clutchAppApp
 */
  app.controller('UserSessionsCtrl', ['$scope', function ($scope) {
    $scope.$on('auth:login-error', function(ev, reason) {
          $scope.error = reason.errors[0];
        });

  }]);