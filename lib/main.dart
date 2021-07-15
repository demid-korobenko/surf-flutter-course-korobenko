import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Surf project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: MySecondWidget(),
//      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {

  // Type checkWidgetType () {
  //   return context.runtimeType;
  // }

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

  Type checkWidgetType () {
    return context.runtimeType;
  }

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
