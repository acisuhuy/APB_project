import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: '1',
                child: Text('Pilihan 1'),
              ),
              PopupMenuItem(
                value: '2',
                child: Text('Pilihan 2'),
              ),
              PopupMenuItem(
                value: '3',
                child: Text('Pilihan 3'),
              ),
              PopupMenuItem(
                value: 'Logout',
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    Text(' Logout')
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
