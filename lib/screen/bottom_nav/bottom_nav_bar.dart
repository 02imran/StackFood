import 'package:flutter/material.dart';
import 'package:stack_food/constants.dart';
import 'package:stack_food/screen/bottom_nav/history.dart';
import 'package:stack_food/screen/bottom_nav/menu.dart';
import 'package:stack_food/screen/bottom_nav/profile.dart';
import 'package:stack_food/screen/home/my_home_page.dart';

import 'cart.dart';
import 'favourite.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavBar> {
  final _pages = [MyHomePage(), Favourite(), Cart(), History(), Menu()];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        iconSize: 26,
        selectedLabelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryColor),
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  )),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
