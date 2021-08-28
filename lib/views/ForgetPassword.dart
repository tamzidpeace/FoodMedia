import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/CustomTextField.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, top: 75.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forget Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0, color: black1),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Enter your registered email below",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: black2, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Email address",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Container(
                        height: 60,
                        child: CustomTextField(
                          hintText: "Enter Email",
                          isObscure: false,
                        ),
                        // textFieldController.textField("Enter Email", false),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Remember the password? ",
                            style: TextStyle(color: black2)),
                        TextSpan(
                            text: "Sign in", style: TextStyle(color: blue1)),
                      ])),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: CustomButton(label: "Submit", onPressed: () {}),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
