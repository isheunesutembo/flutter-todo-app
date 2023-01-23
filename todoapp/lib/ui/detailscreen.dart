import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';

class DetailScreen extends StatelessWidget {
  final Todo todo;
  const DetailScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          todo.description,
          style:const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
