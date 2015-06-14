<%@ page isELIgnored="false" %>
<html ng-app="phoneApp">
<head>
    <title>Index page</title>
    <!-- JQuery-->
    <script src="http://code.jquery.com/jquery-2.1.4.js"></script>
    <!-- Twitter bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.js">// Twitter bootstrap</script>
    <!-- Angular -->
    <script id="angularScript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.js">// Angular </script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular-route.js">// Angular route</script>
    <!-- Application -->
    <script language="javascript" src="${pageContext.request.contextPath}/resources/js/app.js">// App config</script>
    <script language="javascript" src="${pageContext.request.contextPath}/resources/js/controllers.js">// Controllers</script>
    <script language="javascript" src="${pageContext.request.contextPath}/resources/js/filters.js">// Controllers</script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
</head>
<body>
    <div class="view-container">
        <div ng-view class="view-frame"></div>
    </div>
</body>
</html>
