(function(){
  var app;
  app = angular.module('app.services',['ngResource']);

  app.factory('Site', ['$resource',function($resource){
    $resource('/api/v1/sites');
  }]);
})();
