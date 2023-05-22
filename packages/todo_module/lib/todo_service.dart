import 'package:hive/hive.dart';

import 'todo_model.dart';

class TodoService {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> addTodo(Todo todo) async {
    var box = await Hive.openBox<Todo>('todoBox');
    box.add(todo);
  }

  Future<void> updateTodo(Todo updatedTodo) async {
    var box = await Hive.openBox<Todo>('todoBox');

    final index = _todos.indexWhere((todo) => todo.id == updatedTodo.id);
    if (index != -1) {
      _todos[index] = updatedTodo;
    }
  }

  Future<void> deleteTodoById(String id) async {
    var box = await Hive.openBox<Todo>('todoBox');
    box.delete(id);
  }

  Future<void> getAllTodoList() async {
    var box = await Hive.openBox<Todo>('todoBox');
    List<Todo> todoList = box.values.toList();
    for(final Todo todo in todoList) {
      print('title: ${todo.title}');
    }
  }
}
