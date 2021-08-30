import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Home/Home.dart';
import 'package:food_media/views/Ticket/CustomTicketCard.dart';
import 'package:food_media/widgets/app_icons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: background,
      appBar: NewGradientAppBar(
        title: Text(
          'Ticket',
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
                  builder: (context) => Home(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  children: [
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: "Food Truck Project",
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTicketCard(
                      imageUrl: 'assets/images/Rectangle -2 (1).png',
                      name: 'Tava Restaurant',
                      price: "\$130",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
