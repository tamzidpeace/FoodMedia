import 'package:flutter/material.dart';
import 'package:food_media/widgets/BottomSheetPopUp.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.87,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        BottomSheetPopUp bottomSheetPopUp = BottomSheetPopUp();
                        bottomSheetPopUp.bottomSheet(context);
                      },
                      child: Text("Bottom Sheet"),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Before enjoying Foodmedia services \n Please Register First",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11.0, height: 1.5, letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "By logging in or registering, you have agreed to"),
                          TextSpan(
                            text: " the Terms and\n",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                              text: "Conditions ",
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(
                              text: "and ",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: " Privacy Policy",
                              style: TextStyle(color: Colors.blue)),
                        ]),
                  )
                  /* Text(
                  "By logging in or registering, you have agreed to the Terms and Conditions and Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 9.0),
                ), */
                  )
            ],
          ),
        ),
      ),
    );
  }
}
