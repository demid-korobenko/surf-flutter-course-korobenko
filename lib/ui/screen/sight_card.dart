import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard({@required this.sight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: AspectRatio(
        aspectRatio: 3.0 / 2.0,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 96.0,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
                  ),
                ),
                Positioned(
                    child: Text(sight.type, style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w700, fontFamily: "Roboto"),),
                  left: 16.0,
                  top: 16.0,
                ),
                Positioned(
                  child: Container(
                    width: 20.0,
                    height: 18.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2.0)),
                  ),
                  right: 18.0,
                  top: 19.0,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      sight.name,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xff3B3E5B), fontFamily: "Roboto"),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
//                        maxWidth: 150
                      ),
                      child: Text(
                        sight.details ?? '',
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Color(0xff7C7E92), fontFamily: "Roboto"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
