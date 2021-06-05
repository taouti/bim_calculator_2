import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onClicked;
  const RoundIconButton({@required this.icon, @required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClicked,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Colors.blueGrey,
      child: Icon(icon),
      elevation: 6.0,
    );
  }
}
