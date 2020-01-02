import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PostActionRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            postHelpersRow(Icons.favorite_border, '234'),
            SizedBox(width: 10),
            postHelpersRow(EvilIcons.comment, '109')
          ],
        ),
        IconButton(
            icon: Icon(
              Feather.bookmark,
              size: 35,
            ),
            onPressed: null),
      ],
    );
  }

  Row postHelpersRow(IconData icon, String count) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(
              icon,
              size: 35,
            ),
            onPressed: null),
        Text(
          count,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}