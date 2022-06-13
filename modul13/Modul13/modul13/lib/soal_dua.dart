import 'package:flutter/material.dart';

// 1301194315
class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(title: 'Passing Data', home: SoalDua()),
  );
}

class SoalDua extends StatelessWidget {
  const SoalDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDua(
        todos: List.generate(
      20,
      (i) => Todo(
        'Todo $i',
        'A description of what needs to be done for Todo $i',
      ),
    ));
  }
}

class PageDua extends StatelessWidget {
  const PageDua({required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailRoute(),
                  // Pass the arguments as part of the RouteSettings. The
                  // DetailScreen reads the arguments from these settings.
                  settings: RouteSettings(
                    arguments: todos[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailRoute extends StatelessWidget {
  const DetailRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
