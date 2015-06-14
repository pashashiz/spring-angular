var phoneControllers = angular.module('phoneControllers', []);
phoneControllers.controller('PhoneListCtrl', ['$scope', '$http',
    function ($scope, $http) {
        // Get data from REST service
        $http.get('phones').success(function(data) {
            $scope.phones = data;
        });
        // Set default order
        $scope.orderProp = 'age';
    }
]);
phoneControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
    function ($scope, $routeParams, $http) {
        // Get data from REST service
        $http.get('phone/' + $routeParams.phoneId).success(function(data) {
            $scope.phone = data;
            $scope.mainImageUrl = $scope.phone.images[0];
        });
        $scope.setImage = function(imageUrl) {
            $scope.mainImageUrl = imageUrl;
        }
    }
]);