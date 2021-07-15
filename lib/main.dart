import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
        home: MySecondWidget(),
//      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {

  int buildCounter = 0;

  @override
  Widget build(BuildContext context) {
    buildCounter ++;
    print(buildCounter);
    return Container(
      child: Center(
        child: Text(buildCounter.toString()),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {

  int buildCounter = 0;

  @override
  Widget build(BuildContext context) {
    buildCounter ++;
    print(buildCounter.toString());
    return Container(
      child: Center(
        child: Text(buildCounter.toString()),
      ),
    );
  }
}
