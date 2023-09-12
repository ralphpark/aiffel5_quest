import 'dart:html';

// 아래 코드 전부 주석달아줘

void main() {
  TodoApp todoApp = TodoApp(querySelector('#todo-list') as UListElement);
}
// Todo 클래스
class Todo {
  String title; // String 타입의 title 변수
  String content; // String 타입의 content 변수
  late DateTime timestamp; // late 키워드는 나중에 초기화해도 된다는 뜻

  Todo(this.title, this.content) { // 생성자
    timestamp = DateTime.now();   // 생성자에서 timestamp 초기화
  }
}

class TodoApp { // TodoApp 클래스
  final UListElement todoList; // UListElement 타입의 todoList 변수

  TodoApp(this.todoList) { // 생성자
    _initializeUI(); // _initializeUI 메서드 호출
  }

  void _initializeUI() { // _initializeUI 메서드
    InputElement titleInput = querySelector('#todo-title') as InputElement; // querySelector로 id가 todo-title인 요소를 찾아서 titleInput 변수에 저장
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
