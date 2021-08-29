import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/CustomDrowCard.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Drows extends StatefulWidget {
  const Drows({Key? key}) : super(key: key);

  @override
  _DrowsState createState() => _DrowsState();
}

class _DrowsState extends State<Drows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: background,
      appBar: NewGradientAppBar(
        title: Text(
          'Drows',
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
                CustomDrowCard(
                    imageUrl: 'assets/images/FOODTRUCK1.png',
                    name: "Food Truck Project"),
                SizedBox(
                  height: 10,
                ),
                CustomDrowCard(
                    imageUrl: 'assets/images/Rectangle -1.png',
                    name: "Food Truck Project"),
                SizedBox(
                  height: 10,
                ),
                CustomDrowCard(
                    imageUrl: 'assets/images/Rectangle -3.png',
                    name: "Food Truck Project"),
                SizedBox(
                  height: 10,
                ),
                CustomDrowCard(
                    imageUrl: 'assets/images/Rectangle 390.png',
                    name: "Food Truck Project"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
