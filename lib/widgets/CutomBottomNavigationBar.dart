import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Cart.dart';
import 'package:food_media/views/Discount.dart';
import 'package:food_media/views/Drows.dart';
import 'package:food_media/views/Ticket.dart';
import 'package:food_media/views/profile/EditProfile.dart';
import 'package:food_media/widgets/app_icons.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;

  CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final _widgetOptions = [
    Discount(),
    Cart(),
    Ticket(),
    EditProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: deepOrange,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Drows(),
            ),
          );
        },
        child: Icon(App.mask__1_),
        elevation: 2.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: true,
      body: _widgetOptions[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 0
                ? Icon(
                    App.star_1,
                    color: deepOrange,
                    size: 20,
                  )
                : Icon(
                    App.star_1,
                    color: Color(0xff333333),
                    size: 20,
                  ),
            label: "hello",
          ),
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 1
                ? Icon(
                    App.mask,
                    color: deepOrange,
                    size: 20,
                  )
                : Icon(
                    App.mask,
                    color: Color(0xff333333),
                    size: 20,
                  ),
            label: "hello",
          ),
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 2
                ? Icon(
                    App.frame,
                    color: deepOrange,
                    size: 20,
                  )
                : Icon(
                    App.frame,
                    color: Color(0xff333333),
                    size: 20,
                  ),
            label: "hello",
          ),
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 3
                ? CircleAvatar(
                    radius: 10,
                    backgroundColor: deepOrange,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/140x100'))
                : CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/140x100')),
            label: "hello",
          ),
        ],
        currentIndex: widget.selectedIndex,
        //selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
