import 'package:flutter/material.dart';
import 'package:food_media/Utils/Strings.dart';
import 'package:food_media/views/ForgetPassword.dart';
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
          child: ElevatedButton(
            onPressed: () async {
              showModalBottomSheet(
                isScrollControlled: true,
                context: mainContext,
                builder: (bottomSheetContext) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return SingleChildScrollView(
                      // !important
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context)
                                .viewInsets
                                .bottom), // !important
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  height: 6,
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(5)),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
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
                                                        ? Colors.amber[900]
                                                        : Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: isClicked,
                                            child: Container(
                                              height: 4,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[900],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
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
                                            padding: const EdgeInsets.symmetric(
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
                                                        ? Colors.amber[900]
                                                        : Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: isClicked1,
                                            child: Container(
                                              height: 4,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[900],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
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
                                    loginNameText,
                                    style: TextStyle(color: Colors.grey),
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
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Text(
                                  loginEmailText,
                                  style: TextStyle(color: Colors.grey),
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
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Text(
                                  loginPasswordText,
                                  style: TextStyle(color: Colors.grey),
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ForgetPassword()));
                                            },
                                            child: Text(
                                              "Forget Password?",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.amber[900],
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        label: "Registration",
                                        onPressed: () {}),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: isClicked1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        label: "Login", onPressed: () {}),
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
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(5)),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton2(
                                        label: "Guest", onPressed: () {}),
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
            child: Text("Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}
