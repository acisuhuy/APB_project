import 'package:flutter/material.dart';
import 'package:flutter/soal2_page.dart';
// 1301194315
// FIF-43-06

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: homePage(),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments({required this.title, required this.message});
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  ListView _buildListView() {
    return ListView.builder(
        itemCount: 9,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text("soal2 $index"),
            onTap: () {
              Navigator.push(
                  _,
                  MaterialPageRoute(
                      builder: (context) => todoPage(index,
                          "a description of what needs to be done for ")));
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Soal2"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: _buildListView(),
        ),
      ),
    );
  }
}
