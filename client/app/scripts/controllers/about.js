'use strict';

/**
 * @ngdoc function
 * @name clutchAppApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the clutchAppApp
 */
angular.module('clutchAppApp')
  .controller('AboutCtrl', function ($scope, Group) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.groups = Group.query();
  });
