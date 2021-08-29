import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';

class CustomCartCard extends StatelessWidget {
  // final String label;
  // final GestureTapCallback onPressed;
  final String imageUrl;
  final String name;
  final String price;

  const CustomCartCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
    // required this.label,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Image.asset(
                imageUrl,
                height: 90,
                width: 90,
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
                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 14,
                          color: black4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 10),
                      child: Text(
                        price,
                        style: TextStyle(
                          fontSize: 12,
                          color: blue1,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              // Icon(
                              //   Icons.remove,
                              //   size: 14,
                              // ),
                              Container(
                                height: 30,
                                width: 40,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "-",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    elevation: 2,
                                    primary: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("1"),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 40,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    elevation: 2,
                                    primary: Colors.white,
                                  ),
                                ),
                              ),
                              // Icon(
                              //   Icons.add,
                              //   size: 14,
                              // ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .15,
                          ),
                          Text(
                            "35 per ticket",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
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
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
    );
  }
}
