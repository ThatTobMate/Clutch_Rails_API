'use strict';

/**
 * @ngdoc overview
 * @name clutchAppApp
 * @description
 * # clutchAppApp
 *
 * Main module of the application.
 */
 var app = angular
  .module('clutchAppApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ng-token-auth'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/home.html',
        controller: 'ConsolesCtrl'
      })
      .when('/sign_in', {
        templateUrl: 'views/user_sessions/new.html',
        controller: 'UserSessionsCtrl'
      })
      .when('/register', {
        templateUrl: 'views/user_registrations/new.html',
        controller: 'UserRegistrationsCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'PostsCtrl'
      })
      .when('/profile/:userId', {
        templateUrl: 'views/profile.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles', {
        templateUrl: 'views/consoles.html',
        controller: 'ConsolesCtrl'
      })
      .when('/:consoleName', {
        templateUrl: 'views/console_games.html',
        controller: 'GamesCtrl'
      })
      .when('/:consoleName/:gameId', {
        templateUrl: 'views/games_ladders.html',
        controller: 'GamesCtrl'
      })
      .when('/:consoleName/:gameTitle/:ladderId', {
        templateUrl: 'views/ladder.html',
        controller: 'LaddersCtrl'
      })
      .when('/:consoleName/:gameId/:ladderId/:clanId', {
        templateUrl: 'views/team.html',
        controller: 'ClansCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/create', {
        templateUrl: 'views/create_team.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/rules', {
        templateUrl: 'views/rules.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/:teamId/results', {
        templateUrl: 'views/results.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/:teamId/results/:matchId', {
        templateUrl: 'views/match_details.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/matches', {
        templateUrl: 'views/matches.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/matches/create', {
        templateUrl: 'views/create_match.html',
        controller: 'ConsolesCtrl'
      })
      .when('/consoles/:consoleName/:gameTitle/:ladderId/matches/:matchId', {
        templateUrl: 'views/match_details.html',
        controller: 'ConsolesCtrl'
      })
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        resolve: {
            auth: ['$auth', function($auth) {
              return $auth.validateUser();
            }]
          }
      })
      .otherwise({
        redirectTo: '/'
      });
  });

app.run(['$rootScope', '$location', 'Console', function($rootScope, $location, Console) {
  $rootScope.$on('auth:login-success', function() {
    $location.path('/');
  });

  // console.log($rootScope);

  // if($rootScope.currentUser === undefined) {
  //   Console.currentUser().then(function(data) {
  //     $rootScope.currentUser = data.data;
  //   })
  // }
}]);

