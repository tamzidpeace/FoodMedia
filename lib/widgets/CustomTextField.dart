import 'package:flutter/material.dart';

class CustomTextField {
  textField(String hintText, bool isObscure) {
    return TextField(
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 14),
      textInputAction: TextInputAction.next,
      maxLength: 50,
      obscureText: isObscure,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        counter: SizedBox.shrink(),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
