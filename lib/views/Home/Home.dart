import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_media/views/Home/CustomSlider.dart';
import 'package:food_media/views/Home/HomePageCard.dart';
import 'package:food_media/widgets/CustomSliderCard.dart';
import 'package:food_media/widgets/CutomBottomNavigationBar.dart';
import 'package:food_media/widgets/app_icons.dart';

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
                color: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomBottomNavigationBar(
                      selectedIndex: 3,
                    ),
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DashSlider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListTile(
                title: Text("Today New Arrival"),
                subtitle: Text("Best of the today project list update"),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "See All",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15),
              child: Container(
                height: 380,
                width: double.infinity,
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                      ),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        children: <Widget>[
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -2 (1).png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -3.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -1.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle 390.png',
                              name: "Food Truck Project"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: CustomSliderCard(
                from: "home1",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15),
              child: Container(
                height: 380,
                width: double.infinity,
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                      ),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        children: <Widget>[
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -2 (1).png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -3.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -1.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle 390.png',
                              name: "Food Truck Project"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: CustomSliderCard(
                from: "home2",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15),
              child: Container(
                height: 380,
                width: double.infinity,
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                      ),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        children: <Widget>[
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -2 (1).png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -3.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle -1.png',
                              name: "Food Truck Project"),
                          HomePageCard(
                              imageUrl: 'assets/images/Rectangle 390.png',
                              name: "Food Truck Project"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: SizedBox(
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
