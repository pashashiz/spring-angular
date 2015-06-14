function Hello($scope, $http) {
    $http.get('http://localhost:8080/simple-app/hello?name=Pasha').
        success(function (data) {
            $scope.greeting = data;
        });
}
