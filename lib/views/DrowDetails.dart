import 'package:flutter/material.dart';

class DrowDetails extends StatelessWidget {
  const DrowDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/food_truck.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.81,
              left: MediaQuery.of(context).size.width * 0.16,
              child: Container(
                width: 104,
                height: 17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff3BE014)),
                // color: Color(0xff3BE014),
                child: Center(
                    child: Text(
                  'Views 8888765',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "2021 Food Track",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Congratulation",
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
