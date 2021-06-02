import 'package:flutter/material.dart';
import 'input_page.dart';

const mainColor = Color(0xFF262642);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mainColor,
        primaryColor: mainColor,
      ),
      home: InputPage(),
    );
  }
}
