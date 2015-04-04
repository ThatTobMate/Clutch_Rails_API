'use strict';
app.controller('ConsolesCtrl', function ($scope, $rootScope, $routeParams, $http, $resource, Console){
  
  // console.log($rootScope)


  // var TwitterAPI = $resource("http://search.twitter.com/search.json",
  //     { callback: "JSON_CALLBACK" },
  //     { get: { method: "JSONP" }});

  // console.log('hi')
 Console.getConsoles().then(function(data){
    $scope.consoles = data.data
    console.log($scope.consoles)
 })

  

  
  // console.log('rootscope.currentUser ' + JSON.stringify($rootScope.currentUser))

  // }
  // console.log($scope.myUser)
  // $scope.findUser = function(user){
  //   console.log(user)
  //       $http.post('/api/users/who_user', user).success(function(data){
  //       $scope.foundUser = data

  //     })
  // }

  // $scope.getCurrentUser()

  // $scope.findUser($scope.myUser)
  

  // console.log($scope.newUser)
  // $scope.whoUser = Console.who
  // console.log($scope.whoUser)
  // Auth.currentUser().then(function(user) {
  //   console.log(user)
  // })
});


