import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Discount/Buy.dart';

class CustomCard extends StatefulWidget {
  // final String label;
  // final GestureTapCallback onPressed;
  final String imageUrl;

  const CustomCard({
    Key? key,
    required this.imageUrl,
    // required this.label,
    // required this.onPressed,
  }) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 150,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Image.asset(
                widget.imageUrl,
                height: 120,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 20),
                        child: Text(
                          'Food Truck Project',
                          style: TextStyle(
                            fontSize: 16,
                            color: black4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20),
                        child: Row(
                          children: [
                            // Icon(
                            //   Icons.remove,
                            //   size: 14,
                            // ),
                            Container(
                              height: 30,
                              width: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (count == 1) {
                                    setState(() {
                                      count = 1;
                                    });
                                  } else {
                                    setState(() {
                                      count = count - 1;
                                    });
                                  }
                                },
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
                            Text(count.toString()),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (count == 10000) {
                                    setState(() {
                                      count = 10000;
                                    });
                                  } else {
                                    setState(() {
                                      count = count + 1;
                                    });
                                  }
                                },
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Buy(),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Text("Buy"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: deepOrange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    elevation: 0,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "40 AED",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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
