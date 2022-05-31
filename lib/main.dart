import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mi foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Container(
              height: 120,
              width: 400,
              child: Card(
                child: ListTile(
                  title: Text("Rodriguez Perez Jonathan"),
                ),
                elevation: 8,
                margin: EdgeInsets.all(20),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 5)),
              )), //card 1
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(65, 0, 50, 0),
            child: Container(
              width: 800,
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                border: Border.all(
                  color: Color(0xF0000000),
                  width: 3,
                ),
              ),
            ), //card 2
            //card 3
            //card 4
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(65, 50, 50, 0),
            child: Image.network(
              'https://raw.githubusercontent.com/Jonathan-Rodriguez-Perez/imagenac-/main/F2AE4A90-4EF4-4B5E-9A26-E0A3B3793898.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(65, 0, 50, 0),
            child: Container(
              width: 800,
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                border: Border.all(
                  color: Color(0xF0000000),
                  width: 3,
                ),
              ),
            ), //card 2
            //card 3
            //card 4
          ),
          Container(
              height: 120,
              width: 400,
              child: Card(
                child: ListTile(
                  title: Text("6-J PROGRAMACION"),
                ),
                elevation: 8,
                margin: EdgeInsets.all(20),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 5)),
              )),
          //card 2
          //card 3
          //card 4
        ], //children
      ),
    );
  }
}
