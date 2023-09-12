import 'dart:html';

void main() {
  TodoApp todoApp = TodoApp(querySelector('#todo-list') as UListElement);
}

class Todo {
  String title;
  String content;
  late DateTime timestamp;

  Todo(this.title, this.content) {
    timestamp = DateTime.now();
  }
}

class TodoApp {
  final UListElement todoList;

  TodoApp(this.todoList) {
    _initializeUI();
  }

  void _initializeUI() {
    InputElement titleInput = querySelector('#todo-title') as InputElement;
    TextAreaElement contentInput =
    querySelector('#todo-content') as TextAreaElement;
    ButtonElement button = querySelector('#add-todo') as ButtonElement;

    button.onClick.listen((event) {
      String titleText = titleInput.value?.trim() ?? '';
      String contentText = contentInput.value?.trim() ?? '';

      if (titleText.isNotEmpty && contentText.isNotEmpty) {
        _addTodo(Todo(titleText, contentText));
        titleInput.value = '';
        contentInput.value = '';
      }
    });
  }

  void _addTodo(Todo todo) {
    LIElement newTodo = LIElement()..classes.add('todo-item');

    // Todo title
    HeadingElement todoTitle = HeadingElement.h3()
      ..text = todo.title
      ..classes.add('todo-title');
    newTodo.append(todoTitle);

    // Todo content
    ParagraphElement todoContent = ParagraphElement()
      ..text = todo.content
      ..classes.add('todo-content');
    newTodo.append(todoContent);

    // Timestamp
    ParagraphElement todoTimestamp = ParagraphElement()
      ..text = 'Created at: ${todo.timestamp}'
      ..classes.add('todo-timestamp');
    newTodo.append(todoTimestamp);

    // Delete button
    ButtonElement deleteButton = ButtonElement()
      ..text = 'Delete'
      ..classes.add('delete-button');
    deleteButton.onClick.listen((event) {
      _deleteTodo(newTodo);
    });
    newTodo.append(deleteButton);

    todoList.append(newTodo);
  }

  void _deleteTodo(LIElement todoItem) {
    todoList.children.remove(todoItem);
  }
}

