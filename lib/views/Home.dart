import 'package:flutter/material.dart';
import 'package:food_media/views/profile/EditProfile.dart';
import 'package:food_media/widgets/CustomSlider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ),
                );
              },
              child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/140x100')),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: DashSlider()),
    );
  }
}
