
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.home,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            Text('76A eighth evenue, New York, US',
                style: kTextStyleGrey)
          ],
        ),
        Stack(
          children: [
            Icon(
              Icons.notifications,
              size: 32,
            ),
            Positioned(
              top: 0,
              left: 15,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF83F3E),
                    border:
                        Border.all(width: 1.5, color: Colors.white)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
