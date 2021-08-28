import 'package:flutter/material.dart';
import 'package:food_media/Utils/Strings.dart';
import 'package:food_media/widgets/CustomButton.dart';
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
              // BottomSheetPopUp bottomSheetPopUp = BottomSheetPopUp();
              // bottomSheetPopUp.bottomSheet(context);

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
                                width: MediaQuery.of(context).size.width * .15,
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
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
                                              horizontal: 20.0),
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
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked,
                                          child: Divider(
                                            indent: 50,
                                            endIndent: 50,
                                            height: 1,
                                            thickness: 3,
                                            color: Colors.amber[900],
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
                                              horizontal: 20.0),
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
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: isClicked1,
                                          child: Divider(
                                            indent: 80,
                                            endIndent: 80,
                                            height: 1,
                                            thickness: 3,
                                            color: Colors.amber[900],
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                loginNameText,
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
                                  hintText: "Enter Name",
                                  isObscure: false,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                loginPasswordText,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 20, right: 20, bottom: 20),
                              child: Container(
                                height: 60,
                                child: CustomTextField(
                                  hintText: "Enter Password",
                                  isObscure: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    label: "Registration", onPressed: () {}),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
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
