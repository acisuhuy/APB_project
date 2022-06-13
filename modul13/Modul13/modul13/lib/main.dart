import 'package:flutter/material.dart';
import 'package:modul13/soal_dua.dart';
import 'package:modul13/soal_satu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaky Mahfudz Pasha',
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 54, 165, 255),
      ),
      home: const MyHomePage(title: 'JURNAL ABP - MOD 13'),
      initialRoute: '/',
      routes: {
        '/soal_satu': (context) => const SoalSatu(),
        '/soal_dua': (context) => const SoalDua()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Soal 1'),
              onPressed: () {
                Navigator.pushNamed(context, '/soal_satu');
              },
            ),
            ElevatedButton(
              child: const Text('Soal 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/soal_dua');
              },
            )
          ],
        )));
  }
}
