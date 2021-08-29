import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isObscure;
  final String keyType;
  CustomTextField(
      {Key? key,
      required this.hintText,
      required this.isObscure,
      required this.keyType})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 14),
      textInputAction: TextInputAction.next,
      maxLength: widget.keyType == "text" ? 50 : 8,
      obscureText: widget.isObscure,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        counter: SizedBox.shrink(),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
