import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 64.0,left: 16.0,right: 16.0),
          child: RichText(
            text: TextSpan(
                text: "С",
                style: TextStyle(fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff4CAF50)),
                children: [
                  TextSpan(
                      text: "писок\n",
                      style: TextStyle(color: Color(0xff252849)),
                      children: [
                        TextSpan(
                          text: "И",
                          style: TextStyle(color: Color(0xfffcdd3b)),
                        ),
                        TextSpan(text: "нтересных мест"),
                      ]),
                ]),
            textAlign: TextAlign.left,
          ),
        ),
        elevation: 0,
      ),
      body: Center(),
    );
  }
}
