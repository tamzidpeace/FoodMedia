import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/authentication/Welcome.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/app_icons.dart';

class RegistrationConfirmed extends StatelessWidget {
  const RegistrationConfirmed({Key? key}) : super(key: key);

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
                  Icon(
                    App.success_icon,
                    size: 85,
                    color: deepOrange,
                  ),
                  Text("Success",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Congratulations you have been registered \n successfully",
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
                      child: CustomButton(
                          label: "Sign in",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Welcome(),
                              ),
                            );
                          }),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
