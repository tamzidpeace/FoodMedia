import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/CustomCard.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Discount extends StatefulWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: background,
      appBar: NewGradientAppBar(
        title: Text(
          'Discount',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        gradient: LinearGradient(
          colors: [appbarGradient1, appbarGradient2],
        ),
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 20),
            ),
          ),
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              children: [
                CustomCard(
                  imageUrl: 'assets/images/FOODTRUCK1.png',
                ),
                CustomCard(
                  imageUrl: 'assets/images/Rectangle -1.png',
                ),
                CustomCard(
                  imageUrl: 'assets/images/Rectangle -3.png',
                ),
                CustomCard(
                  imageUrl: 'assets/images/Rectangle 390.png',
                ),
                CustomCard(
                  imageUrl: 'assets/images/Rectangle -1.png',
                ),
                CustomCard(
                  imageUrl: 'assets/images/Rectangle -3.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}