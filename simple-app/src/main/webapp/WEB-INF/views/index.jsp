<%@ page isELIgnored="false" %>
<html ng-app>
<head>
    <title>Index page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js">// Angular mini</script>
    <script language="javascript" src="${pageContext.request.contextPath}/resources/js/simple.js">// Simple controller</script>
</head>
<body>
<div ng-controller="Hello">
    <h2>Spring MVC + AngularJS Siple</h2>
    <p>EMail Id : {{greeting.name}}</p>
    <p>User Name : {{greeting.text}}</p>
</div>
</body>
</html>
