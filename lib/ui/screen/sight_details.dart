import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';

class SightDetails extends StatelessWidget {

  static const List<Sight> sightList = mocks;

  const SightDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SightImage(sight: sightList[2]),
              Positioned(
                  left: 16.0,
                  top: 36.0,
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Icon(Icons.arrow_back_ios_outlined, size: 14, color: Color(0xff252849)),
                  ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SightDetailsTextBlock(sightList: sightList),
                const GoButton(),
                Divider(
                  color: const Color(0xff7C7E92).withOpacity(0.24),
                  thickness: 0.8,
                  height: 1.0,
                ),
                const SightDetailsBottomRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SightDetailsTextBlock extends StatelessWidget {
  const SightDetailsTextBlock({@required this.sightList, Key key,}) : super(key: key);

  final List<Sight> sightList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            sightList[2].name,//'Пряности и радости',
            style: const TextStyle(fontSize: 24, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff3B3E5B)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Row(
            children: [
              Text(
                sightList[2].type,//'ресторан',
                style: const TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff3B3E5B)),
              ),
              const SizedBox(width: 16.0),
              const Text(
                'закрыто до 9:00',
                style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff7C7E92)),
              ),
            ],
          ),
        ),
        Text(
          sightList[2].details,//'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
          style: const TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff3B3E5B)),
        ),

      ],
    );
  }
}

class GoButton extends StatelessWidget {
  const GoButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Container(
        width: double.infinity,
        height: 48.0,
        decoration: const BoxDecoration(
            color: Color(0xff4CAF50),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: Image.asset('res/Ico/GO.png', fit: BoxFit.contain),
              ),
            ),
            const Text(
              'ПОСТРОИТЬ МАРШРУТ',
              style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class SightDetailsBottomRow extends StatelessWidget {
  const SightDetailsBottomRow({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Image.asset('res/Ico/Calendar.png', fit: BoxFit.contain, color: const Color(0xff7C7E92).withOpacity(0.56)),
                  ),
                ),
                Text('Запланировать', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: const Color(0xff7C7E92).withOpacity(0.56)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Image.asset('res/Ico/Heart.png', fit: BoxFit.contain, color: const Color(0xff3B3E5B)),
                  ),
                ),
                const Text(
                    'В избранное',
                    style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff3B3E5B)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SightImage extends StatelessWidget {
  const SightImage({@required this.sight, Key key,}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: 360,
      child: Image.network(
        sight.url,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {return child;}

          return Align(
            alignment: Alignment.bottomLeft,
            child: LinearProgressIndicator(
              minHeight: 7.57,
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
