// To-do application
angular.module('todoApp', [])
    .controller('TodoListController', function () {
        var todoList = this;
        // To-do items
        todoList.todos = [
            {text: 'learn angular', done: true},
            {text: 'build an angular app', done: false}];
        // Add new to-do function
        todoList.addTodo = function () {
            todoList.todos.push({text: todoList.todoText, done: false});
            todoList.todoText = '';
        };
        // Check how many is remaining
        todoList.remaining = function () {
            var count = 0;
            angular.forEach(todoList.todos, function (todo) {
                count += todo.done ? 0 : 1;
            });
            return count;
        };
        // Live only haven't done to-do items
        todoList.archive = function () {
            var oldTodos = todoList.todos;
            todoList.todos = [];
            angular.forEach(oldTodos, function (todo) {
                if (!todo.done) todoList.todos.push(todo);
            });
        };
    });