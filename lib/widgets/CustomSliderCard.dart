import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/CustomItem.dart';

class CustomSliderCard extends StatelessWidget {
  final String from;
  const CustomSliderCard({Key? key, required this.from}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: from == "home1"
                  ? [CardItem1Color1, CardItem1Color2]
                  : from == "home2"
                      ? [CardItem2Color1, CardItem2Color2]
                      : [CardItem3Color1, CardItem3Color2],
            ),
          ),
          child: CustomSliderItem(),
        ),
      ),
      height: 150,
    );
  }
}
