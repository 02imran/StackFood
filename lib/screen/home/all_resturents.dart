import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllResturents extends StatelessWidget {
  List<Map<String, String>>? imageData = [
    {'image': 'assets/images/macdonals.jpg', 'offer': ''},
    {'image': 'assets/images/Starbucks.jpg', 'offer': ''},
    {'image': 'assets/images/dominos.jpg', 'offer': '30% off'},
    {'image': 'assets/images/dominos.jpg', 'offer': '30% off'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: imageData!.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90,
                            width: 120,
                            child: Image.asset(
                              imageData![index]['image'].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageData![index]['offer'].toString() == ''
                            ? Container()
                            : Positioned(
                                top: 20,
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
                                    imageData![index]['offer'].toString(),
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              )
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mc Donalds',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text('Amarican cuisin, fast food'),
                        SizedBox(height: 5),
                        RatingBar.builder(
                          itemSize: 17,
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
                        SizedBox(height: 10),
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.favorite)
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.black)
              ],
            ));
  }
}
