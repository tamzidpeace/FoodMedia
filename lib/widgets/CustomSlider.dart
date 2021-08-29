import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/SliderItem.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashSlider extends StatefulWidget {
  const DashSlider({Key? key}) : super(key: key);

  @override
  _DashSliderState createState() => _DashSliderState();
}

class _DashSliderState extends State<DashSlider> {
  int _currentIndex = 0;

  List cardList = [
    Item(),
    Item(),
    Item(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Column(
                children: [
                  Container(
                    child: Card(
                      elevation: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              colors: [CardItemColor1, CardItemColor2],
                            ),
                          ),
                          child: card),
                    ),
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * .4,
                          lineHeight: 7.0,
                          percent: 0.8,
                          backgroundColor: Colors.grey[200],
                          progressColor: deepOrange,
                          trailing: Text(
                            '80%',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            });
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? deepOrange
                      : Colors.grey.shade300,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
