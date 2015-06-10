function Hello($scope, $http) {
    $http.get('http://localhost:8080/simple-app/simple/hello?name=Pasha').
        success(function (data) {
            $scope.greeting = data;
        });
}
