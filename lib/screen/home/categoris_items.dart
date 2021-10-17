
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatogorisItem extends StatelessWidget {
  List<Map<String, String>> items = [
    {"text": "All", "image": "assets/icons/burger.svg"},
    {"text": "Coffee", "image": "assets/icons/coffee.svg"},
    {"text": "Drink", "image": "assets/icons/Cocktail.svg"},
    {"text": "Fast Food", "image": "assets/icons/fast-food.svg"},
    {"text": "Cake", "image": "assets/icons/cake.svg"},
    {"text": "Sushi", "image": "assets/icons/burger.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (_, index) => LIstOfItems(
          image: items[index]['image'],
          text: items[index]['text'],
        ),
      ),
    );
  }
}

class LIstOfItems extends StatelessWidget {
  const LIstOfItems({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);
  final String? image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Card(
            elevation: 2,
            child: Container(
                margin: EdgeInsets.all(5),
                child: SvgPicture.asset(
                  image!,
                  width: 65,
                  height: 65,
                )),
          ),
        ),
        Text(
          text!,
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
