import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_media/widgets/CustomTextField.dart';

class BottomSheetPopUp {
  void bottomSheet(BuildContext context) async {
    TextEditingController _oldPinController = TextEditingController();
    TextEditingController _newPinController = TextEditingController();
    TextEditingController _confirmPinController = TextEditingController();
    // bool _isLoading = false;

    CustomTextField textFieldController = CustomTextField();

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          // !important
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom), // !important
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Change PIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    height: 60,
                    // child: TextField(
                    //   //textAlign: TextAlign.center,
                    //   style: TextStyle(fontSize: 14),
                    //   textInputAction: TextInputAction.next,
                    //   maxLength: 4,
                    //   keyboardType: TextInputType.number,
                    //   decoration: InputDecoration(
                    //       labelText: 'Old PIN',
                    //       counter: SizedBox.shrink(),
                    //       contentPadding: EdgeInsets.symmetric(
                    //         vertical: 0,
                    //       ),
                    //       hintText: "x x x x",
                    //       hintStyle: TextStyle(color: Colors.black38)),
                    // ),
                    child: textFieldController.textField(),
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
                    child: textFieldController.textField(),
                    // child: TextField(
                    //   //textAlign: TextAlign.center,
                    //   style: TextStyle(fontSize: 14),
                    //   textInputAction: TextInputAction.next,
                    //   maxLength: 4,
                    //   keyboardType: TextInputType.number,
                    //   decoration: InputDecoration(
                    //       labelText: 'New PIN',
                    //       counter: SizedBox.shrink(),
                    //       contentPadding: EdgeInsets.symmetric(
                    //         vertical: 0,
                    //       ),
                    //       hintText: "x x x x",
                    //       hintStyle: TextStyle(color: Colors.black38)),
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 20, right: 20, bottom: 20),
                  child: Container(
                    height: 60,
                    //
                    child: textFieldController.textField(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final String newPin = _newPinController.text;
                              final String confirmPin =
                                  _confirmPinController.text;
                              final String oldPin = _oldPinController.text;
                            },
                            child: Container(
                                height: 45,
                                width:
                                    (MediaQuery.of(context).size.width * .6) -
                                        20,
                                child: Center(
                                    child: Text('OK',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xfff2f2f2),
                                          fontSize: 16,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w700,
                                        )))),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            )),
                      ],
                    )),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
