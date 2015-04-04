'use strict';
app.factory('Console', ['$resource', '$http', function ($resource, $http) {
    // return $resource('/api/users/the_current_user');

    // var current_user = 
    //   return $resource('/api/users/current_user.json', null, {
    //   'update': { method:'PUT' }
    // });

  // var whoUser = function(user){
  //     $http.post('/api/users/who_user', user).success(function(data){
  //     var foundUser = data
  //     return foundUser
  //   })
      
  //   }
    
  
  var Console = {
    // who: whoUser,
    currentUser: function() {
      return $http.get('/api/users/the_current_user');
    },
    getConsoles: function(){
      return $http.get('/api/consoles');
    }
  // //   ladders: ladders,
  // //   ref: ref
  };

  return Console;
}]);