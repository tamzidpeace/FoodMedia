import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/Utils/Strings.dart';
import 'package:food_media/views/PasswordResetConfirmed.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/CustomTextField.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      "Change New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0, color: black1),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Enter a different password with the previous",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: black2, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        NewPassword,
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
                          hintText: "New Password",
                          isObscure: true,
                          keyType: "number",
                        ),
                        // textFieldController.textField("Enter Email", false),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        ConfirmPassword,
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
                          hintText: "Confirm Password",
                          isObscure: true,
                          keyType: "number",
                        ),
                        // textFieldController.textField("Enter Email", false),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10.0),
                    //   child: RichText(
                    //       text: TextSpan(children: [
                    //     TextSpan(
                    //         text: "Remember the password? ",
                    //         style: TextStyle(color: black2)),
                    //     TextSpan(
                    //         text: "Sign in", style: TextStyle(color: blue1)),
                    //   ])),
                    // ),
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
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: CustomButton(
                          label: "Reset Password",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PasswordResetConfirmed()));
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
