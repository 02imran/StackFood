
import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 2,
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            focusColor: Colors.grey,
            hoverColor: Colors.grey,
            contentPadding: EdgeInsets.only(left: 20, top: 15),
            hintText: 'Search food and resturent here...',
            hintStyle: kTextStyleGrey,
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
