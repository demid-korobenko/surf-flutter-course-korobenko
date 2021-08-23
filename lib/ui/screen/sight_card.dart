import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({@required this.sight, Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: [
          Stack(
            children: [
              SightCardImage(sight: sight),
              Positioned(
                left: 16.0,
                top: 16.0,
                child: Text(sight.type, style: const TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w700, fontFamily: 'Roboto'),),
              ),
              Positioned(
                right: 18.0,
                top: 19.0,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/Ico/Heart.png', fit: BoxFit.contain),
                ),
              ),
            ],
          ),
          SightCardTextBlock(sight: sight),
        ],
      ),
    );
  }
}

class SightCardTextBlock extends StatelessWidget {
  const SightCardTextBlock({@required this.sight, Key key,}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          Text(
            sight.name,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xff3B3E5B), fontFamily: 'Roboto'),
          ),
          Text(
            sight.details ?? '',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Color(0xff7C7E92), fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}

class SightCardImage extends StatelessWidget {
  const SightCardImage({@required this.sight, Key key,}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 96.0,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: Image.network(
        sight.url,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }

          return Align(
            alignment: Alignment.bottomLeft,
            child: LinearProgressIndicator(
              minHeight: 5,
              valueColor: const AlwaysStoppedAnimation(Color(0xFF3B3E5B)),
              backgroundColor: Colors.transparent,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },
      ),
    );
  }
}
