import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

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
        home: SightListScreen(),
//      home: MyFirstWidget(),
    );
  }
}