import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Drow/CustomDrowCard.dart';
import 'package:food_media/views/Home/Home.dart';
import 'package:food_media/widgets/CutomBottomNavigationBar.dart';
import 'package:food_media/widgets/app_icons.dart';
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
          'Drow',
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
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                App.icon__1_,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                     // CustomBottomNavigationBar(selectedIndex: 0),
                  Home(),
                ),
              );
            },
            icon: Icon(
              App.group_8542,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            color: Color(0xffF5F6FA),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
      ),
    );
  }
}
