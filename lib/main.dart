import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_media/views/Buy.dart';
import 'package:food_media/views/Cart.dart';
import 'package:food_media/views/ChangePassword.dart';
import 'package:food_media/views/ContactUs.dart';
import 'package:food_media/views/Discount.dart';
import 'package:food_media/views/DrowDetails.dart';
import 'package:food_media/views/ForgetPassword.dart';
import 'package:food_media/views/Home.dart';
import 'package:food_media/views/OrderSuccessProcceed.dart';
import 'package:food_media/views/profile/EditProfile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Segoe UI"),
      debugShowCheckedModeBanner: false,
      home: RequestProcceed(),
    );
  }
}
