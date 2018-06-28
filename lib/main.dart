import 'package:flutter/material.dart';
import 'colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Raleway',
          primaryColor: kQuoteeBlue,
          accentColor: kQuoteeBlue,
          splashColor: Colors.white),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            new ColoredBox(counter: _counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  const ColoredBox({
    Key key,
    @required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Theme.of(context).primaryColor,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
            tileMode: TileMode.repeated,
            colors: [Colors.red, Colors.deepOrange, Colors.orange]),
      ),
      child: Center(
        child: Text(
          '$counter',
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
