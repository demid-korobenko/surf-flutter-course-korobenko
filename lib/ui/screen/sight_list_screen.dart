import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/custom_appbar.dart';

class SightListScreen extends StatefulWidget {

  const SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'Список\nинтересных мест',
          style: TextStyle(fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff252849)),
        ),
      ),
      // AppBar(
      //   toolbarHeight: 150,
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 64.0,left: 16.0,right: 16.0),
      //     child: Text(
      //       'Список\nинтересных мест',
      //       style: TextStyle(fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff252849)),
      //     )
      //   ),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            SightCard(sight: mocks[1]),
            SightCard(sight: mocks[2]),
            SightCard(sight: mocks[3]),
          ],
        ),
      ),
    );
  }
}
