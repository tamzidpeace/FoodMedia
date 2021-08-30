import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Home/Project.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePageCard extends StatelessWidget {
  // final String label;
  // final GestureTapCallback onPressed;
  final String imageUrl;
  final String name;

  const HomePageCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    // required this.label,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Project(),
          ),
        );
      },
      child: Card(
        child: Container(
          height: 350,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Image.asset(
                  imageUrl,
                  height: 100,
                  width: MediaQuery.of(context).size.width * .4,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          color: black4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * .35,
                    lineHeight: 7.0,
                    percent: 0.8,
                    backgroundColor: Colors.grey[200],
                    progressColor: deepOrange,
                  ),
                ],
              ),
            ],
          ),
        ),
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
