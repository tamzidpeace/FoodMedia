import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/Utils/Strings.dart';
import 'package:food_media/views/Discount/Buy.dart';
import 'package:food_media/views/Home/ContactUs.dart';
import 'package:food_media/widgets/CustomSliderCard.dart';
import 'package:food_media/widgets/CutomBottomNavigationBar.dart';
import 'package:food_media/widgets/app_icons.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int count = 1;
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
            Navigator.pop(context);
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
                  builder: (context) =>
                      CustomBottomNavigationBar(selectedIndex: 0),
                ),
              );
              // Navigator.pop(context);
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
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Image.asset(
                  'assets/images/Project.png',
                  height: 220,
                  width: MediaQuery.of(context).size.width * .8,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * .5 - 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 15),
                            child: Icon(
                              App.directions_black_24dp_1,
                              color: deepOrange,
                              size: 20,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  "Tava Restaurant",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Visit the Restaurant",
                                  style: TextStyle(
                                    color: deepOrange,
                                    fontSize: 12,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 6.0, top: 6),
                                child: Text(
                                  "35 per ticket",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width * .5 - 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (count == 1) {
                                        setState(() {
                                          count = 1;
                                        });
                                      } else {
                                        setState(() {
                                          count = count - 1;
                                        });
                                      }
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      elevation: 2,
                                      primary: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(count.toString()),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (count == 10000) {
                                        setState(() {
                                          count = 10000;
                                        });
                                      } else {
                                        setState(() {
                                          count = count + 1;
                                        });
                                      }
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      elevation: 2,
                                      primary: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 38,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, top: 8),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Buy(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: Text("Buy"),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: deepOrange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactUs(),
                      ),
                    );
                  },
                  child: Container(
                    height: 30,
                    width: (MediaQuery.of(context).size.width * .62) - 40,
                    child: Center(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Color(0xfff2f2f2),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                    primary: deepOrange,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Project Description",
                    style: TextStyle(
                        color: blackk,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    projectPageText,
                    style: TextStyle(
                        //letterSpacing: 1,
                        height: 2,
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: CustomSliderCard(
                from: "Project",
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
