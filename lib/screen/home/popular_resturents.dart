import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularResturents extends StatelessWidget {
  PopularResturents({@required this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (_, index) => Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 310,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/resturentmenu.jpg'),
                                  fit: BoxFit.cover)),
                          child: Row(
                            children: [
                              Container(
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
                                  text!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 250,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Icon(Icons.favorite, color: Colors.red),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Hungry Puppets',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                              text: '76A eight evenue ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                    text: 'New York, USA',
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(.5)))
                              ])),
                          SizedBox(height: 5),
                          Row(
                            children: [
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
                              SizedBox(width: 3),
                              Text('(' + '2' + ')')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
