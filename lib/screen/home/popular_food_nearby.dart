
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularFoodNearby extends StatelessWidget {
  const PopularFoodNearby({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 130,
          width: 300,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/burger.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Burger',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text.rich(TextSpan(
                            text: 'Mc Donald ',
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'New York, USA',
                                  style: TextStyle(
                                      color: Colors.grey
                                          .withOpacity(.5)))
                            ])),
                        SizedBox(height: 10),
                        RatingBar.builder(
                          itemSize: 15,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
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
                                      decoration: TextDecoration
                                          .lineThrough,
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
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          child: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Color(0xFF00CE47),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
                child: Text(
              '30% off',
              style: TextStyle(color: Colors.white),
            )),
          ),
        )
      ],
    );
  }
}
