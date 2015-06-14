// Phone application module
var phoneApp = angular.module('phoneApp', ['ngRoute', 'phoneControllers', 'phoneFilters']);
// Configure module (DI: route provider)
phoneApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/phones', {
        templateUrl: 'phone-list',
        controller: 'PhoneListCtrl'
    }).when('/phones/:phoneId', {
        templateUrl: 'phone-detail',
        controller: 'PhoneDetailCtrl'
    }).otherwise({
        redirectTo: 'phones'
    })
}]);

