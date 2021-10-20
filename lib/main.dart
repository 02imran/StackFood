import 'package:flutter/material.dart';
import 'package:stack_food/screen/bottom_nav/bottom_nav_bar.dart';

import 'screen/home/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
