import 'package:flutter/cupertino.dart';

class Sight {
  final String name;
  final double lat, lon;
  final String url;
  final String details;
  final String type;

  const Sight(
      {@required this.type,
      @required this.name,
      @required this.lat,
      @required this.lon,
      this.details,
      this.url,
      });
}