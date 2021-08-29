import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/ContactUs.dart';
import 'package:food_media/widgets/app_icons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'Home.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: background,
      appBar: NewGradientAppBar(
        title: Text(
          'Project',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        gradient: LinearGradient(
          colors: [appbarGradient1, appbarGradient2],
        ),
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 20),
            ),
          ),
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                App.icon__1_,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: Icon(
              App.group_8542,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUs(),
                    ),
                  );
                },
                child: Text("Contact Us"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
