import 'package:flutter/material.dart';
import 'package:stack_food/constants.dart';
import 'package:stack_food/screen/home/search_bar.dart';
import 'home_page_hader.dart';
import 'offer_horizontal_list_view.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 15),
                HomePageHeader(),
                SizedBox(height: 40),
                SearchBar(),
                SizedBox(height: 30),
                OfferHorizontalListView(),
                SizedBox(height: 5),
                Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

