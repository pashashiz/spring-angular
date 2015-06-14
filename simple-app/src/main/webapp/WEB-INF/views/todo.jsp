<html ng-app="todoApp" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Index page</title>
    <script id="angularScript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.js">// Angular mini</script>
    <script language="javascript" src="${pageContext.request.contextPath}/resources/js/todo.js">// Simple controller</script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/todo.css">
</head>
<body>
<h2>Todo</h2>
<div ng-controller="TodoListController as todoList">
    <span>{{todoList.remaining()}} of {{todoList.todos.length}} remaining</span>
    [ <a href="" ng-click="todoList.archive()">archive</a> ]
    <ul class="unstyled">
        <li ng-repeat="todo in todoList.todos">
            <input type="checkbox" ng-model="todo.done">
            <span class="done-{{todo.done}}">{{todo.text}}</span>
        </li>
    </ul>
    <form ng-submit="todoList.addTodo()">
        <input type="text" ng-model="todoList.todoText" size="30"
               placeholder="add new todo here">
        <input class="btn-primary" type="submit" value="add">
    </form>
</div>
</body>
</html>
