import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Home/Home.dart';
import 'package:food_media/views/authentication/Welcome.dart';
import 'package:food_media/views/profile/EditProfileTextField.dart';
import 'package:food_media/widgets/CutomBottomNavigationBar.dart';
import 'package:food_media/widgets/app_icons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  static const String update = "UPDATE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text(
          'Edit Profile',
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                // CustomBottomNavigationBar(selectedIndex: 0),
                Home(),
              ),
            );
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  // CustomBottomNavigationBar(selectedIndex: 0),
                  Home(),
                ),
              );
            },
            icon: Icon(
              App.group_8542,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            color: Color(0xffF5F6FA),
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
                            height: 110,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: NetworkImage(
                                        'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg'),
                                  ),
                                ),
                                Positioned(
                                    top: 75,
                                    left: 30,
                                    // top: MediaQuery.of(context).size.height * .13,
                                    // left: MediaQuery.of(context).size.width * .08,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: blue1),
                                      height: 30,
                                      width: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 2.0),
                                        child: Icon(
                                          App.group_8562,
                                          color: Colors.white,
                                          size: 13.44,
                                        ),
                                      ),
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
                            padding: const EdgeInsets.only(top: 6.0, right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Welcome(),
                                  ),
                                );
                              },
                              child: Icon(
                                App.ar,
                                color: blue1,
                              ),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                // CustomBottomNavigationBar(selectedIndex: 0),
                                Home(),
                              ),
                            );
                          },
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
        ),
      ),
    );
  }
}
