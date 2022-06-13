import 'package:flutter/material.dart';

class todoPage extends StatelessWidget {
  final int index;
  final String description;
  todoPage(this.index, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("soal2 $index"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Text(description + "soal2 " + index.toString()),
      ),
    );
  }
}
