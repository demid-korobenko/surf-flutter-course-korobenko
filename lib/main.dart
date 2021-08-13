import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/sightDetails.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Surf project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: SightDetails(), //SightListScreen(),
//      home: MyFirstWidget(),
    );
  }
}