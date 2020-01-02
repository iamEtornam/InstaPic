import 'package:flutter/material.dart';

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundImage: ExactAssetImage('assets/images/person_4.jpg'),
        ),
        SizedBox(
          width: 15,
        ),
        Text('Emillie Porcinet',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18))
      ],
    );
  }
}