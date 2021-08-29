import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/profile/EditProfileTextField.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/app_icons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        gradient: LinearGradient(
          colors: [appbarGradient1, appbarGradient2],
        ),
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 20),
            ),
          ),
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                App.icon__1_,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              App.group_8542,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* Header Text
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 13.5),
              child: Text(
                "Send your info",
                textAlign: TextAlign.left,
                style: TextStyle(color: black1, fontSize: 20.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12.0, bottom: 34),
              child: Text(
                "Enter a different What can we improve?",
                textAlign: TextAlign.left,
                style: TextStyle(color: black2),
              ),
            ),

            //* begin:: form
            EditProfileTextField(
              hintText: "Enter Full Name",
              isObscure: false,
              label: "Full Name",
              inputType: "text",
              isSuffixIcon: false,
            ),
            EditProfileTextField(
              hintText: "Enter Email Address",
              isObscure: false,
              label: "Email Address",
              inputType: "text",
              isSuffixIcon: false,
            ),
            EditProfileTextField(
              hintText: "Enter Mobile Number",
              isObscure: false,
              label: "Mobile",
              inputType: "number",
              isSuffixIcon: false,
            ),
            //* description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 14),
                    child: Text(
                      "Description",
                      style: TextStyle(color: black2),
                    ),
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14),
                    textInputAction: TextInputAction.next,
                    maxLength: 50,
                    maxLines: 7,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      counter: SizedBox.shrink(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            //* end:: form

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: CustomButton(label: 'Send', onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
