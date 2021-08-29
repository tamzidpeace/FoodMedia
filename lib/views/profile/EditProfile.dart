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
            //* profile picture
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                                child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://via.placeholder.com/140x100'))),
                            Positioned(
                                top: 65,
                                left: 30,
                                child: Icon(
                                  Icons.edit,
                                  color: blue1,
                                  size: 13.44,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, right: 24),
                        child: Icon(
                          Icons.logout,
                          color: blue1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //* begin:: form
            EditProfileTextField(
              hintText: "Enter Full Name",
              isObscure: false,
              label: "Full Name",
              inputType: "text",
              isSuffixIcon: true,
            ),
            EditProfileTextField(
              hintText: "Enter Email Address",
              isObscure: false,
              label: "Email Address",
              inputType: "text",
              isSuffixIcon: true,
            ),
            EditProfileTextField(
              hintText: "Enter Mobile Number",
              isObscure: false,
              label: "Mobile",
              inputType: "number",
              isSuffixIcon: true,
            ),
            EditProfileTextField(
              hintText: "Enter Password",
              isObscure: true,
              label: "Password",
              inputType: "text",
              isSuffixIcon: true,
            ),
            EditProfileTextField(
              hintText: "Enter Date of Birth",
              isObscure: false,
              label: "Date of Birth",
              inputType: "text",
              isSuffixIcon: true,
            ),
            //* end:: form

            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
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
