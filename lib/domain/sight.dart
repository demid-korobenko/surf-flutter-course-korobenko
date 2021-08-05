import 'package:flutter/cupertino.dart';

class Sight {
  String name;
  double lat, lon;
  String url;
  String details;
  String type;

  Sight(
      {@required this.type,
      @required this.name,
      @required this.lat,
      @required this.lon,
      this.details,
      this.url});
}