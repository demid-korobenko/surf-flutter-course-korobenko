import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey,
                width: double.infinity,
                height: 360,
              ),
              Positioned(
                  left: 16.0,
                  top: 36.0,
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    child: Icon(Icons.arrow_back_ios_outlined, size: 14, color: Color(0xff252849)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: Container(
                  width: 152.0,
                  height: 7.57,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B3E5B),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Text(
                    'Пряности и радости',
                    style: TextStyle(fontSize: 24, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff3B3E5B)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    children: [
                      Text(
                        'ресторан',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Color(0xff3B3E5B)),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'закрыто до 9:00',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff7C7E92)),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                  style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff3B3E5B)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Container(
                    width: double.infinity,
                    height: 48.0,
                    decoration: BoxDecoration(
                        color: Color(0xff4CAF50),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2.0)),
                          ),
                        ),
                        Text(
                          'ПОСТРОИТЬ МАРШРУТ',
                          style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w700, color: Colors.white)
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xff7C7E92).withOpacity(0.24),
                  thickness: 0.8,
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(border: Border.all(color: Color(0xff7C7E92), width: 2.0)),
                              ),
                            ),
                            Text(
                                'Запланировать',
                                style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff7C7E92).withOpacity(0.56))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(border: Border.all(color: Color(0xff3B3E5B), width: 2.0)),
                              ),
                            ),
                            Text(
                                'В избранное',
                                style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xff3B3E5B))
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
