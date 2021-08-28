import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/Utils/Strings.dart';
import 'package:food_media/views/ForgetPassword.dart';
import 'package:food_media/views/RegistrationConfirmed.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/CustomButton2.dart';
import 'package:food_media/widgets/CustomTextField.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool isClicked = true;
  bool isClicked1 = false;
  @override
  Widget build(BuildContext mainContext) {
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
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          isScrollControlled: true,
                          context: mainContext,
                          builder: (bottomSheetContext) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return SingleChildScrollView(
                                // !important
                                child: Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom), // !important
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                          child: Container(
                                            height: 6,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .15,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10.0),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            // print(isClicked);
                                                            // print(isClicked1);
                                                            isClicked = true;
                                                            isClicked1 = false;
                                                            // print(isClicked);
                                                            // print(isClicked1);
                                                          });
                                                        },
                                                        child: Text(
                                                          "Create Account",
                                                          style: TextStyle(
                                                              color: isClicked
                                                                  ? deepOrange
                                                                  : Colors.grey,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: isClicked,
                                                      child: Container(
                                                        height: 4,
                                                        width: 80,
                                                        decoration: BoxDecoration(
                                                            color: deepOrange,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10.0),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            //print(isClicked);
                                                            // print(isClicked1);
                                                            isClicked1 = true;
                                                            isClicked = false;
                                                            // print(isClicked);
                                                            // print(isClicked1);
                                                          });
                                                        },
                                                        child: Text(
                                                          "Login",
                                                          style: TextStyle(
                                                              color: isClicked1
                                                                  ? deepOrange
                                                                  : Colors.grey,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: isClicked1,
                                                      child: Container(
                                                        height: 4,
                                                        width: 30,
                                                        decoration: BoxDecoration(
                                                            color: deepOrange,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Visibility(
                                          visible: isClicked,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0),
                                            child: Text(
                                              NameText,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 15,
                                              left: 20,
                                              right: 20,
                                            ),
                                            child: Container(
                                              height: 60,
                                              child: CustomTextField(
                                                hintText: "Enter Name",
                                                isObscure: false,
                                                keyType: "text",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0),
                                          child: Text(
                                            EmailText,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 15,
                                            left: 20,
                                            right: 20,
                                          ),
                                          child: Container(
                                            height: 60,
                                            child: CustomTextField(
                                              hintText: "Enter Email",
                                              isObscure: false,
                                              keyType: "text",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0),
                                          child: Text(
                                            PasswordText,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 20, right: 20),
                                          child: Container(
                                            height: 60,
                                            child: CustomTextField(
                                              hintText: "Enter Password",
                                              isObscure: true,
                                              keyType: "number",
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0),
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ForgetPassword()));
                                                      },
                                                      child: Text(
                                                        "Forget Password?",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: deepOrange,
                                                            fontSize: 12),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Visibility(
                                          visible: isClicked,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton(
                                                  label: "Registration",
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                RegistrationConfirmed()));
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton(
                                                  label: "Login",
                                                  onPressed: () {}),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: SizedBox(
                                            height: 15,
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: Center(
                                            child: Container(
                                              height: 1,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .4,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: SizedBox(
                                            height: 15,
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton2(
                                                  label: "Guest",
                                                  onPressed: () {}),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                          },
                        );
                      },
                      child: Container(
                          height: 240,
                          width: 200,
                          child: Image.asset('assets/images/welcome.png')),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Before enjoying Foodmedia services \n Please Register First",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14.0, color: black3),
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
