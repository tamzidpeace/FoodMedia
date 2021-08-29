import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/widgets/app_icons.dart';

class EditProfileTextField extends StatelessWidget {
  final String hintText;
  final String inputType;
  final String label;
  final bool isObscure;
  final bool isSuffixIcon;
  EditProfileTextField(
      {Key? key,
      required this.hintText,
      required this.isObscure,
      required this.label,
      required this.inputType,
      required this.isSuffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 5),
            child: Text(
              label,
              style: TextStyle(color: black2),
            ),
          ),
          TextField(
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14),
            textInputAction: TextInputAction.next,
            maxLength: 50,
            obscureText: isObscure,
            keyboardType:
                inputType == "text" ? TextInputType.text : TextInputType.number,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                counter: SizedBox.shrink(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: isSuffixIcon
                    ? Icon(
                        App.group_8562,
                        size: 20,
                        color: Colors.grey,
                      )
                    : null),
          ),
        ],
      ),
    );
  }
}
