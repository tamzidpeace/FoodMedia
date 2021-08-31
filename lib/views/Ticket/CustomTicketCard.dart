import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Home/Project.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomTicketCard extends StatelessWidget {
  // final String label;
  // final GestureTapCallback onPressed;
  final String imageUrl;
  final String name;
  final String price;

  const CustomTicketCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
    // required this.label,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Project(),
        //   ),
        // );
      },
      child: GestureDetector(
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
            height: 120,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
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
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .45,
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
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * .5,
                          lineHeight: 7.0,
                          percent: 0.8,
                          backgroundColor: Colors.grey[200],
                          progressColor: deepOrange,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: Row(
                            children: [
                              Text(
                                price,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: deepOrange,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .20,
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
        ),
      ),
    );
  }
}
