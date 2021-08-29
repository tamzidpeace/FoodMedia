import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/profile/EditProfileTextField.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  static const String update = "UPDATE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* begin:: form
            EditProfileTextField(
                hintText: "Enter Full Name",
                isObscure: false,
                label: "Full Name",
                inputType: "text"),
            EditProfileTextField(
                hintText: "Enter Email Address",
                isObscure: false,
                label: "Email Address",
                inputType: "text"),
            EditProfileTextField(
                hintText: "Enter Mobile Number",
                isObscure: false,
                label: "Mobile",
                inputType: "number"),
            EditProfileTextField(
                hintText: "Enter Password",
                isObscure: true,
                label: "Password",
                inputType: "text"),
            EditProfileTextField(
                hintText: "Enter Date of Birth",
                isObscure: false,
                label: "Date of Birth",
                inputType: "text"),
            //* end:: form

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  height: 28,
                  width: 88,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("$update"),
                      style: ElevatedButton.styleFrom(
                        primary: deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        elevation: 0,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
