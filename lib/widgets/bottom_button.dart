import 'package:bim_calculator_2/screens/results_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const BottomButton({this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            text,
            style: KLargeButtonTextStyle,
          ),
        ),
        height: KBottomContainerHeight,
        color: KBottomContainerColor,
      ),
    );
  }
}
