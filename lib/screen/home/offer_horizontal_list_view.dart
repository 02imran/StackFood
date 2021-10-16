import 'package:flutter/material.dart';

class OfferHorizontalListView extends StatelessWidget {
  const OfferHorizontalListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
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
              )),
    );
  }
}
