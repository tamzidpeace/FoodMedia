import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_media/views/profile/EditProfile.dart';
import 'package:food_media/views/ForgetPassword.dart';
import 'package:food_media/views/RegistrationConfirmed.dart';
import 'package:food_media/views/RequestProcceed.dart';
import 'package:food_media/views/Welcome.dart';

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
      home: EditProfile(),
    );
  }
}
