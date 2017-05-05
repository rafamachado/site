var app = angular.module('taskApp',['ui.router','ngStorage']);
 
app.constant('urls', {
    BASE: 'http://localhost:8080/SpringBootTaskList',
    TASK_SERVICE : 'http://localhost:8080/SpringBootTaskList/api/task/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {
 
        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/list',
                controller:'TaskController',
                controllerAs:'ctrl',
                resolve: {
                    users: function ($q, TaskService) {
                        console.log('Load all tasks');
                        var deferred = $q.defer();
                        TaskService.loadAllTasks().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            });
        $urlRouterProvider.otherwise('/');
    }]);
