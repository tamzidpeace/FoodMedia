import 'package:flutter/material.dart';

class CustomTextField {
  textField() {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
      textInputAction: TextInputAction.next,
      maxLength: 50,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        counter: SizedBox.shrink(),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: "example@gmail.com",
      ),
      //textAlign: TextAlign.center,
      // style: TextStyle(fontSize: 14),
      // textInputAction: TextInputAction.next,
      // maxLength: 4,
      // keyboardType: TextInputType.number,
      // decoration: InputDecoration(
      //     labelText: 'New PIN',
      //     counter: SizedBox.shrink(),
      //     contentPadding: EdgeInsets.symmetric(
      //       vertical: 0,
      //     ),
      //     hintText: "x x x x",
      //     hintStyle: TextStyle(color: Colors.black38)),
    );
  }
}
