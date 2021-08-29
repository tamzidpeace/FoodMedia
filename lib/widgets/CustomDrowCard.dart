import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';

class CustomDrowCard extends StatelessWidget {
  // final String label;
  // final GestureTapCallback onPressed;
  final String imageUrl;
  final String name;

  const CustomDrowCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    // required this.label,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Image.asset(
                imageUrl,
                height: 220,
                width: MediaQuery.of(context).size.width * .8,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          color: black4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
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
    );
  }
}
