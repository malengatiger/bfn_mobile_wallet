import 'package:flutter/material.dart';
import 'package:mobilewallet/util/stellar_lib.dart';

import 'util/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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

  @override
  initState() {
    super.initState();
    _ping();
  }

  Future<void> _ping() async {
    await StellarUtility.ping();
    p('StellarUtility has returned from ping ........');
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
              'I have called ping ...',
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '$_counter',
              style: TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.w900,
                  color: Colors.indigo),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _ping,
        tooltip: 'Ping',
        child: Icon(Icons.deck_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
