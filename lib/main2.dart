import 'package:flutter/material.dart';
import 'components/booking_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '바다의 왕자'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
      body: BookingList(title: '바다사나이'),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text(
// 'You have pushed the button this many timsdfses:',
// ),
// Text(
// '$_counter',
// style: Theme.of(context).textTheme.headline4,
// ),
// Text(
// '나는 호머입니다.'
// ),
// ElevatedButton(
// child: Text('버튼 누르기.'),
// onPressed: _incrementCounter
// )
// ],
// ),
// ),