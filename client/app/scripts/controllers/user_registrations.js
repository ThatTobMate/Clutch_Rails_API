// client/app/scripts/controllers/user_registrations.js

'use strict';

/**
 * @ngdoc function
 * @name clutchAppApp.controller:UserRegistrationsCtrl
 * @description
 * # UserRegistrationsCtrl
 * Controller of the clutchAppApp
 */
  app.controller('UserRegistrationsCtrl', ['$scope', '$auth', function ($scope, $auth) {
    $scope.handleRegBtnClick = function() {
         $auth.submitRegistration($scope.registrationForm).then(function() { 
           $auth.submitLogin({
             email: $scope.registrationForm.email,
             password: $scope.registrationForm.password
           });
         });
       };

       $scope.$on('auth:registration-email-error', function(ev, reason) {
         $scope.error = reason.errors[0];
       });
  }]);