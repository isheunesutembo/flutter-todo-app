import 'package:todoapp/models/todo.dart';

 class FakeData {
 static List<Todo> todo = List.generate(
      20,
      (i) => Todo(
          title: 'Todo $i',
          description: 'A description of what needs to be done for Todo $i'));
}
