import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String label;
  final GestureTapCallback onPressed;

  const CustomButton2({
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
                  color: Colors.black,
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
            primary: Colors.grey[200],
          )),
    );
  }
}
