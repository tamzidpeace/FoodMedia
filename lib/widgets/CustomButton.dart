import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPressed;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          height: 50,
          width: (MediaQuery.of(context).size.width * .65) - 40,
          child: Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xfff2f2f2),
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          primary: deepOrange,
        ),
      ),
    );
  }
}
