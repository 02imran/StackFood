import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodCampaign extends StatelessWidget {
  List<Map<String, String>> offerData = [
    {'image': 'assets/images/burderdrink.jpg'},
    {'image': 'assets/images/pasta.jpg'}
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (_, index) => Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      width: 190,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                offerData[index]['image'].toString()),
                            fit: BoxFit.fitHeight),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      height: 105,
                      width: 190,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Burger',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text.rich(TextSpan(
                              text: 'Mc Donald ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                    text: 'New York, USA',
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(.5)))
                              ])),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '\$5',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '\$10',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),

                              // SizedBox(width: 100),
                              Icon(Icons.add, size: 25)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              )),
    );
  }
}
