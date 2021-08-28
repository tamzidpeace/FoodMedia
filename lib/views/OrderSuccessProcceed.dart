import 'package:flutter/material.dart';
import 'package:food_media/widgets/CustomButton.dart';

class RequestProcceed extends StatelessWidget {
  const RequestProcceed({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/success.png"),
                  Text("Success",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your order has been processed successfully",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xff828282)),
                  )
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: CustomButton(label: "Done", onPressed: () {}),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
