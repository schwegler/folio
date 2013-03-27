(function(){
  var app;
  app = angular.module('app', ['app.services','app.controllers','app.filters','app.directives']);

  app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    $routeProvider.when('/info', {
      controller: 'InfoCtrl',
      templateUrl: ASSETS['info']
    }).otherwise({
      redirectTo:'/info',
    });
  }]);
})();
