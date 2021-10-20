import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stack_food/constants.dart';
import 'package:stack_food/screen/home/all_resturents.dart';
import 'package:stack_food/screen/home/popular_food_nearby.dart';
import 'package:stack_food/screen/home/popular_resturents.dart';
import 'package:stack_food/screen/home/search_bar.dart';
import 'categoris_items.dart';
import 'food_campaign.dart';
import 'home_page_hader.dart';
import 'offer_horizontal_list_view.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 15),

                ///Address
                HomePageHeader(),
                SizedBox(height: 40),

                ///Search Bar
                SearchBar(),
                SizedBox(height: 30),

                ///Offers
                OfferHorizontalListView(),
                SizedBox(height: 20),
                _headerText(text: 'Categoris', viewAll: 'View All'),
                SizedBox(height: 20),

                ///Different category items
                CatogorisItem(),
                SizedBox(height: 20),
                _headerText(text: 'Popular Food Nearby', viewAll: 'View All'),
                SizedBox(height: 20),
                PopularFoodNearby(),
                SizedBox(height: 20),
                _headerText(text: 'Food Campaign', viewAll: 'View All'),
                SizedBox(height: 20),
                FoodCampaign(),
                _headerText(text: 'Popular Resturent', viewAll: 'View All'),
                SizedBox(height: 20),
                PopularResturents(text: '30% off'),
                SizedBox(height: 20),
                _headerText(text: 'New On App Name', viewAll: 'View All'),
                SizedBox(height: 20),
                PopularResturents(text: 'Free Delivery'),
                SizedBox(height: 20),
                allResturentAndMenu(),
                SizedBox(height: 20),
                AllResturents(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget allResturentAndMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'All Resturents',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              '200+ Near You',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: Icon(Icons.menu),
            elevation: 0,
            items: <String>['All', 'Take Away', 'Home Delivery']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        // Icon(Icons.menu)
      ],
    );
  }

  Widget _headerText({String? text, String? viewAll}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          viewAll!,
          style: TextStyle(
            color: kPrimaryColor,
            decoration: TextDecoration.underline,
            decorationColor: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
