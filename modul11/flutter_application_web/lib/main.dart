import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = ["Test Praktikum", "Grid 1", "Grid 2", "Grid 3", "Grid 4", 
"Grid 5"];
    var colors = [
  Colors.white,
  Colors.brown,
  Colors.blue,
  Colors.green,
  Colors.black,
  Colors.red
  ];
 return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("Praktikum App")),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.work), text: "Work",),
            Tab(icon: Icon(Icons.alarm), text: "Alarm",),
            Tab(icon: Icon(Icons.power_off), text: "Power Off",),
            Tab(icon: Icon(Icons.account_box_outlined), text: "Account ",),
           ]),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    gridDelegate: const 
SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: items.length,
                      itemBuilder: (BuildContext ctx, i){
                        return Container(
                          color: colors[i],
                          child: i == 0
                            ? Center(child: Text(items[i]),)
                            : Positioned(child: Text(items[i]), top: 0, left: 
0,),
                        );
                      }),
                ),
                const Text("A"),
                const Text("A"),
                const Text("A"),
                const Text("A"),
              ],
            ),
        ),
      ) );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

 void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             const Text(
               'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} 