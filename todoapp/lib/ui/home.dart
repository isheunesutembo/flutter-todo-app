import 'package:flutter/material.dart';
import 'package:todoapp/fakedata/fakedata.dart';
import 'package:todoapp/ui/detailscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView.builder(
        itemCount: FakeData.todo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(FakeData.todo[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(todo: FakeData.todo[index]),
                  ));
            },
          );
        },
      )),
    );
  }
}
