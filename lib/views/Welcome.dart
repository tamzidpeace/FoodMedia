import 'package:flutter/material.dart';
import 'package:food_media/widgets/BottomSheetPopUp.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              BottomSheetPopUp bottomSheetPopUp = BottomSheetPopUp();
              bottomSheetPopUp.bottomSheet(context);
            },
            child: Text("Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}
