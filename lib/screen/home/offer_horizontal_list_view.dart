import 'package:flutter/material.dart';

import '../../constants.dart';

class OfferHorizontalListView extends StatefulWidget {
  @override
  _OfferHorizontalListViewState createState() =>
      _OfferHorizontalListViewState();
}

class _OfferHorizontalListViewState extends State<OfferHorizontalListView> {
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                selectedItem = value;
              });
            },
            // shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (_, index) => Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(
                'assets/images/1.png',
                fit: BoxFit.fitWidth,
                width: 300,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              3,
              (index) => Container(
                    margin: EdgeInsets.only(right: 5),
                    height: index == selectedItem ? 10 : 8,
                    width: index == selectedItem ? 10 : 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == selectedItem
                          ? kPrimaryColor
                          : kPrimaryColor.withOpacity(0.4),
                    ),
                  )),
        )
      ],
    );
  }
}
