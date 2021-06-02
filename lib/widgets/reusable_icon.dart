import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableIcon extends StatelessWidget {
  final IconData icon;
  final String iconLabel;
  final double iconSize;

  ReusableIcon(
      {@required this.icon, @required this.iconLabel, @required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          iconLabel,
          style: KLabelTextStyle,
        ),
      ],
    );
  }
}
